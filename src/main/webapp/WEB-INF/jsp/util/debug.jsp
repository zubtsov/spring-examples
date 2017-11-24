<%@ page import = "java.util.*" contentType="text/html;charset=UTF-8" language="java" %>

<%
    List<String> headers = Collections.list(request.getHeaderNames());
    Map<String, String[]> parameters = request.getParameterMap();
%>

<html>
<head>
    <style>
        <%@include file="/WEB-INF/css/default.css"%>
    </style>
    <title>HTTP debug JSP page. Author: Zubtsov Ruslan</title>
</head>
<body>
<b>Request method: </b> <% out.print(request.getMethod()); %> <br/>

<b>Headers number: </b> <% out.print(headers.size()); %> <br/>
<b>Parameters number: </b> <% out.print(parameters.size()); %> <br/>

<table>
    <tr>
        <th>Header name</th>
        <th>Header value</th>
    </tr>
    <%
        for (String header : headers) {
            out.print("<tr>");
            out.print("<td>");
            out.print(header);
            out.print("</td>");
            out.print("<td>");
            out.print(request.getHeader(header));
            out.print("</td>");
            out.print("</tr>");
        }
    %>
</table>

<table>
    <tr>
        <th>Parameter name</th>
        <th>Parameter values</th>
    </tr>
    <%
        for (Map.Entry<String,String[]> parameter : parameters.entrySet()) {
            out.print("<tr>");
            out.print("<td>");
            out.print(parameter.getKey());
            out.print("</td>");
            out.print("<td>");
            out.print(Arrays.toString(parameter.getValue()));
            out.print("</td>");
            out.print("</tr>");
        }
    %>
</table>

</body>
</html>
