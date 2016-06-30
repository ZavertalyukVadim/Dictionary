<%--
  Created by IntelliJ IDEA.
  User: Вадимка
  Date: 05.06.2016
  Time: 21:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Title</title>
  <link rel="stylesheet" href="/resources/css/category.css">
  <script src="/resources/js/jquery.min.js"></script>
  <script src="/resources/js/windowScript.js"></script>
  <link rel="stylesheet" href="/resources/css/windowStyle.css">
</head>
<body>
<div id="imageBlock" style="background: url('/resources/images/6.jpg') center;">
  <div id="titleBlock">
    <header>
      <a class="link" href="/dictionary">Головна</a>
    </header>
    <h1></h1>
    <div id="senseBlock">
      <c:forEach items="${word.senses}" var="sense">
        ${word.word}
        - це ${sense.sense}
        <%--${word.synonym}--%>
      </c:forEach>
    </div>
  </div>
</div>
</body>
</html>
