<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="a" uri="http://java.sun.com/jsp/jstl/core" %>
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
        <h1>
            ${cat.name}
        </h1>
        <div id="senseBlock">

        </div>
    </div>
</div>
<div id="listCategoryBlock">

            <c:forEach items="${categoryWords}" var="word">
                <UL>
                    <LI><a class="links" href="/sense/${word.id}"> ${word.word} </a>
                </UL>
            </c:forEach>
</div>
</body>
</html>