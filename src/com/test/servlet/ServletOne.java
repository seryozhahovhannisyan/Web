package com.test.servlet;

import javax.servlet.ServletException;
import javax.servlet.SingleThreadModel;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.jsp.HttpJspPage;
import javax.servlet.jsp.JspPage;
import java.io.IOException;

/**
 * Created by Seryozha on 1/12/2017.
 */
public class ServletOne extends HttpServlet {

    int i;

    @Override
    public void init() throws ServletException {
        System.out.println(Thread.currentThread().getName() + " init " + this.hashCode());
//        HttpJspPage //JspPage
        i = 0;
    }

    @Override
    public void destroy() {
        System.out.println("destroy");
    }

    protected void service(HttpServletRequest request, HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        //System.out.print("this.hashCode()=>" + this.hashCode());
        String first = "/forward_first";
        String second = "/forward_second";
        String url = System.currentTimeMillis() % 2 == 0 ? first : second;
//        SingleThreadModel
        i++;
        System.out.println("---->"+ Thread.currentThread().hashCode() + " <- Name:[" + Thread.currentThread().getName() + "[ [i = " + i);
        request.getRequestDispatcher(url).forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws javax.servlet.ServletException, IOException {

    }


}
