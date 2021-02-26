<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%
    request.setCharacterEncoding("UTF-8");
%>
<html>
    <head>
        <title>Расчет математического значения по заданному алгоритму</title>
    </head>
    <body>
        <form action="Main" method="POST">
            <h2>Расчет математического значения по заданному алгоритму</h2>
            <img src="primer.png">
            <br />
            <br />
            <br />
            Введите A: <input type="text" name="a" /> <br />
            Введите B: <input type="text" name="b"/> <br />
            Введите X: <input type="text" name="x"/><br /> <br /> 
            <input type="submit" name="calc" value="Решить" /> <br />
            <input type="reset" name="clear" value="Очистить" />
        </form>
    </body>
</html>