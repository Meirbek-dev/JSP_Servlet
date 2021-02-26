<%-- 
    Document   : result
    Created on : Feb 26, 2021, 6:42:13 AM
    Author     : meirb
--%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ page import="bmk_jsp_servlet.ResultForm"%>
<%
    request.setCharacterEncoding("UTF-8");
%>
<html>

    <head>
        <title>Решение</title>
    </head>

    <body>
        <img src="primer.png">
        <h2>Переменные:</h2>
        <h2><%
            ResultForm resultForm = (ResultForm) request.getAttribute("resultForm");
            if (resultForm == null) {
                out.print("Нет решения!");
            } else {
                out.println(String.format("a = " + request.getParameter("a")));
                out.println(String.format("<br/>b = " + request.getParameter("b")));
                out.println(String.format("<br/>x = " + request.getParameter("x")));
            %></h2>
        <h2>Ответ:</h2>
        <h2><%
                out.println(String.format("y = %.3f", resultForm.getY()));
            }
            %></h2>
        <a href="javascript:history.back()">Назад</a><br/><br/>
    </body>
</html>