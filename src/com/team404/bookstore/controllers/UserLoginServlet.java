package com.team404.bookstore.controllers;

import com.team404.bookstore.entity.AddressEntity;
import com.team404.bookstore.entity.UserEntity;
import com.team404.bookstore.service.OrderProcessService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/UserLoginServlet")
public class UserLoginServlet extends HttpServlet
{
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        String emailUserName = request.getParameter("email");
        String password = request.getParameter("password");
        /* call getAccount(accountName, accountPassword, accountInfo)
         * service method returns accountInfo if accountName exists
         * and accountPassword is correct, otherwise returns null
         */
        UserEntity u = new UserEntity();
        u.setUsername(emailUserName);
        u.setPassword(password);
        OrderProcessService orderProcessService = new OrderProcessService();

        boolean flag = orderProcessService.getAccount(u);
        if (!flag) {
            //login fail
            response.sendRedirect("/pages/signin.jsp");
        } else {
            UserEntity ue = orderProcessService.GetUserByAccount(emailUserName);
            AddressEntity address = orderProcessService.getAddressinfo(ue.getId());
            //login success, put user information and address into the session
            HttpSession hs = request.getSession();
            hs.setAttribute("user", ue);
            hs.setAttribute("address", address);
            response.sendRedirect("/pages/index.jsp");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        doPost(request, response);
    }
}
