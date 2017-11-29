<%@ page import = "java.util.*" contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <style>
        <%@include file="/WEB-INF/css/default.css"%>
    </style>
    <title>HTTP debug JSP page (Request tracer). Author: Zubtsov Ruslan</title>
</head>
<body>

<b>HTTP characteristics</b>
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
        <td>${httpHeaders.size()}</td>
    <tr>
    <tr>
        <td>Parameters number: </td>
        <td>${httpParameters.size()}</td>
    </tr>
</table>

<b>Servlet request characteristics</b>
<table>
    <tr>
        <th>Characteristic</th>
        <th>Value</th>
    </tr>
    <tr>
        <td>Context path</td>
        <td><%=request.getContextPath()%></td>
    </tr>
    <tr>
        <td>Path translated</td>
        <td><%=request.getPathTranslated()%></td>
    </tr>
    <tr>
        <td>Path info</td>
        <td><%=request.getPathInfo()%></td>
    </tr>
    <tr>
        <td>Servlet path</td>
        <td><%=request.getServletPath()%></td>
    </tr>
    <tr>
        <td>Query string</td>
        <td><%=request.getQueryString()%></td>
    </tr>
    <tr>
        <td>Remote user</td>
        <td><%=request.getRemoteUser()%></td>
    </tr>
    <tr>
        <td>Auth type</td>
        <td><%=request.getAuthType()%></td>
    </tr>
    <tr>
        <td>Request URI</td>
        <td><%=request.getRequestURI()%></td>
    </tr>
    <tr>
        <td>Request URL</td>
        <td><%=request.getRequestURL()%></td>
    </tr>
</table>

<b>Headers</b>
<table>
    <tr>
        <th>Header name</th>
        <th>Header value</th>
    </tr>
    <c:forEach var="item" items="${httpHeaders.entrySet()}">
        <tr>
            <td>${item.key}</td>
            <td>${item.value}</td>
        </tr>
    </c:forEach>
</table>

<b>Parameters</b>
<table>
    <tr>
        <th>Parameter name</th>
        <th>Parameter values</th>
    </tr>
    <c:forEach var="item" items="${httpParameters.entrySet()}">
        <tr>
            <td>${item.key}</td>
            <td>${Arrays.toString(item.value)}</td>
        </tr>
    </c:forEach>
</table>

<b>Cookies</b>
<table>
    <tr>
        <th>Name</th>
        <th>Value</th>
        <th>Max age</th>
        <th>Domain</th>
        <th>Path</th>
        <th>HTTP only</th>
        <th>Secure</th>
        <th>Version</th>
    </tr>
    <c:forEach var="item" items="${cookies}">
        <tr>
            <td>${item.name}</td>
            <td>${item.value}</td>
            <td>${item.maxAge}</td>
            <td>${item.domain}</td>
            <td>${item.path}</td>
            <td>${item.httpOnly}</td>
            <td>${item.secure}</td>
            <td>${item.version}</td>
        </tr>
    </c:forEach>
</table>

</body>
</html>
