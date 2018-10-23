package com.team404.bookstore.controllers;

import com.team404.bookstore.entity.BookEntity;
import com.team404.bookstore.entity.ShoppingCartEntity;
import com.team404.bookstore.entity.UserEntity;
import com.team404.bookstore.service.OrderProcessService;
import org.hibernate.criterion.Order;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet("/MyCartServlet")
public class MyCartServlet extends HttpServlet
{
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        int quantity = Integer.parseInt(request.getParameter("quantity"));

        HttpSession hs = request.getSession();
        BookEntity book = (BookEntity) hs.getAttribute("detail");
        String bookId = book.getBookid();
        UserEntity userEntity = (UserEntity) hs.getAttribute("user");
        int userId = userEntity.getId();

        ShoppingCartEntity shoppingCartEntity = new ShoppingCartEntity();
        shoppingCartEntity.setBookid(bookId);
        shoppingCartEntity.setQuantity(quantity);
        shoppingCartEntity.setUserid(userId);
        //get book information from DB to display
        // and get quantity from detail page,
        // update the new quantity for this book in the DB
        // and the shoppingcartlist httpsession
        OrderProcessService orderProcessService = new OrderProcessService();
        boolean flag = orderProcessService.AddItemtoCart(shoppingCartEntity);
        if (flag) {
            List<ShoppingCartEntity> shoppingCartEntityList = orderProcessService.DisplayShoppingCart(userId);
            hs.setAttribute("shoppingcartlist", shoppingCartEntityList);
            response.sendRedirect("/pages/mycart.jsp");
        } else {
            response.sendRedirect("/pages/detail.jsp");
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        doPost(request, response);
    }
}
