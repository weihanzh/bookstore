package com.team404.bookstore.controllers;

import com.team404.bookstore.entity.AddressEntity;
import com.team404.bookstore.entity.OrderEntity;
import com.team404.bookstore.entity.UserEntity;
import com.team404.bookstore.service.OrderProcessService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet("/DisplayCheckoutServlet")
public class DisplayCheckoutServlet extends HttpServlet
{
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        //createOrder(shoppingCartInfo, shipping info): creates a purchase order including shipping, taxes, total amount
        // due based on shopping cart info on orders page
        HttpSession hs = request.getSession();
        UserEntity user = (UserEntity) hs.getAttribute("user");
        int userId = user.getId();
        OrderProcessService orderProcessService = new OrderProcessService();
        orderProcessService.createOrder(userId);
        List<OrderEntity> orderEntityList = orderProcessService.DisplayMyOrder(userId);
        hs.setAttribute("orderlist", orderEntityList);
        response.sendRedirect("/pages/checkout.jsp");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        doPost(request, response);
    }
}
