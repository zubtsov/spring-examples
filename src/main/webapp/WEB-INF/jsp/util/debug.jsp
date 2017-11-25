<%@ page import = "java.util.*" contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%
    List<String> headersNames = Collections.list(request.getHeaderNames());
    SortedMap<String, String> httpHeaders = new TreeMap<>();
    for (String h : headersNames) {
        httpHeaders.put(h, request.getHeader(h));
    }

    Map<String, String[]> httpParameters = request.getParameterMap();

    request.setAttribute("httpHeaders", httpHeaders);
    request.setAttribute("httpParameters", httpParameters);
%>

<html>
<head>
    <style>
        <%@include file="/WEB-INF/css/default.css"%>
    </style>
    <title>HTTP debug JSP page. Author: Zubtsov Ruslan</title>
</head>
<body>

<table>
    <tr>
        <th>Characteristic</th>
        <th>Value</th>
    </tr>
    <tr>
        <td>Request method: </td>
        <td> <%=request.getMethod()%> </td>
    </tr>
    <tr>
        <td>Headers number: </td>
        <td><%=httpHeaders.size()%></td>
    <tr>
    <tr>
        <td>Parameters number: </td>
        <td><%=httpParameters.size()%></td>
    </tr>
</table>

<table>
    <tr>
        <th>Header name</th>
        <th>Header value</th>
    </tr>
    <c:forEach var="item" items="${httpHeaders.entrySet()}">
        <tr>
            <td>${item.getKey()}</td>
            <td>${item.getValue()}</td>
        </tr>
    </c:forEach>
</table>

<table>
    <tr>
        <th>Parameter name</th>
        <th>Parameter values</th>
    </tr>
    <c:forEach var="item" items="${httpParameters.entrySet()}">
        <tr>
            <td>${item.getKey()}</td>
            <td>${Arrays.toString(item.getValue())}</td>
        </tr>
    </c:forEach>
</table>

</body>
</html>
