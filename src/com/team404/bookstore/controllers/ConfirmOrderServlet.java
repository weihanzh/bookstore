package com.team404.bookstore.controllers;

import com.team404.bookstore.entity.CountEntity;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/ConfirmOrderServlet")
public class ConfirmOrderServlet extends HttpServlet
{
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        // every 5th request is refused on the website

        HttpSession hs = request.getSession();
        CountEntity count = (CountEntity) hs.getAttribute("counter");
        if (count == null) {
            CountEntity ce = new CountEntity();
            ce.setCount(1);
            hs.setAttribute("counter", ce);
        } else {
            count.setCount(count.getCount() + 1);
            hs.setAttribute("counter", count);
        }
        //get counter from the DB count table
     //   CountEntity counter = getCount();
        // if the counter.getCount() % 5 == 0, Credit Card Authorization Failed



        // else % 5 != 0, Order Successfully Completed
        //update new count into the DB count table



    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        doPost(request, response);
    }
}
