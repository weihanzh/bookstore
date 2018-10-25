package com.team404.bookstore.controllers;

import com.team404.bookstore.entity.BookCartCombine;
import com.team404.bookstore.entity.CountEntity;
import com.team404.bookstore.entity.ShoppingCartEntity;
import com.team404.bookstore.service.OrderProcessService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet("/ConfirmOrderServlet")
public class ConfirmOrderServlet extends HttpServlet
{
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        // every 5th request is refused on the website
        HttpSession hs = request.getSession();
        int orderid = (int) hs.getAttribute("orderid");
        List<BookCartCombine> bookCartCombineList = (List<BookCartCombine>)hs.getAttribute("bookcartcomblist");
        bookCartCombineList.clear();
        hs.setAttribute("bookcartcomblist", bookCartCombineList);
        List<ShoppingCartEntity> shoppingCartEntityList = (List<ShoppingCartEntity>) hs.getAttribute("shoppingcartlist");
        shoppingCartEntityList.clear();
        hs.setAttribute("shoppingcartlist", shoppingCartEntityList);
        OrderProcessService orderProcessService = new OrderProcessService();
        boolean flag = orderProcessService.confirmOrder(orderid);
        if (flag) {
            response.sendRedirect("/pages/success.jsp");
        } else {
            response.sendRedirect("/pages/fail.jsp");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        doPost(request, response);
    }
}
