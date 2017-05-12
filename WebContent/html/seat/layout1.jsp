<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.google.gson.Gson"
		import="java.util.ArrayList"
		import="json.GsonTest" 
		import="java.util.Map"
		import="json.Test"
		import="json.TestMap"%>
<%
request.setCharacterEncoding("utf-8");
String[] seats = (request.getParameterValues("seats[]")==null)?new String[0]:request.getParameterValues("seats[]");
String three = request.getParameter("three");

Test test = new Test();
test.check(request);

Gson gson = new Gson();
TestMap tm = new TestMap(seats, Integer.parseInt(three));

out.clear();
out.println(gson.toJson(tm));
out.flush();
%>

