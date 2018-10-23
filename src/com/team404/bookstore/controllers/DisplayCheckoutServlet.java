package com.team404.bookstore.controllers;

import com.team404.bookstore.entity.AddressEntity;
import com.team404.bookstore.entity.UserEntity;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/DisplayCheckoutServlet")
public class DisplayCheckoutServlet extends HttpServlet
{
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        //confirmOrder( purchaseOrder, shippingInfo, paymentInfo):
        //authorizes order based on payment info, and stores shipping info with order


        HttpSession hs = request.getSession();
        UserEntity user = (UserEntity) hs.getAttribute("user");
        AddressEntity address = (AddressEntity) hs.getAttribute("address");
        // display the user shipping address

        response.sendRedirect("/pages/checkout.jsp");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        doPost(request, response);
    }
}
