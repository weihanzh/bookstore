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

@WebServlet("/UserRegisterServlet")
public class UserRegisterServlet extends HttpServlet
{
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        String firstName = request.getParameter("first_name");
        String lastName = request.getParameter("last_name");
        String emailUserName = request.getParameter("email");
        //address need to be completed here
        String country = request.getParameter("country");
        String province = request.getParameter("province");
        String street = request.getParameter("street");
        String zipcode = request.getParameter("zip");
        String phone = request.getParameter("tel");
        String password = request.getParameter("password");

        UserEntity userEntity = new UserEntity();
        userEntity.setUsername(emailUserName);
        userEntity.setFirstname(firstName);
        userEntity.setLastname(lastName);
        userEntity.setPassword(password);

        AddressEntity addressEntity = new AddressEntity();
        addressEntity.setCountry(country);
        addressEntity.setProvince(province);
        addressEntity.setStreet(street);
        addressEntity.setZip(zipcode);
        addressEntity.setPhone(phone);
        /*call createAccount(accountName, accountInfo)
         *service method to determine if this account
         * already exists, if exists it fails to create
         * if not exists, insert the account information
         * to DB(user table and address table both)
         */
        OrderProcessService orderProcessService = new OrderProcessService();
        boolean flag = orderProcessService.CreateAccount(userEntity, addressEntity);
        if (!flag) {
            response.sendRedirect("/pages/register.jsp");
        } else {
            response.sendRedirect("/pages/signin.jsp");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        doPost(request, response);
    }
}
