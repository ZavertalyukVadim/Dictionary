<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Вадимка
  Date: 05.06.2016
  Time: 23:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
<div style="display: none;">
    <div id="r">
        <c:forEach items="${words}" var="word">
            <div class="words">
                <div class="categoryImgBlock"
                     style="background: url('/resources/images/1.jpg') center; background-size: cover; ${word.category.name}">

                </div>
                <div class="wordBlock">

                        <span>
                        ${word.word}: це ${word.senses.get(0).sense}
                        Синонимы : ${word.synonyms.get(0).word}
                        </span>
                </div>
            </div>
        </c:forEach>
    </div>
</div>
</body>
</html>
