<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Термінологічний словник</title>
    <meta name="description" content="Blueprint: "/>
    <meta name="keywords" content=""/>
    <meta name="author" content="Codrops"/>
    <link rel="stylesheet" href="/resources/css/style.css">
    <%--<link rel="shortcut icon" href="../favicon.ico">--%>
    <link rel="stylesheet" type="text/css" href="/resources/css/default.css"/>
    <link rel="stylesheet" type="text/css" href="/resources/css/component.css"/>
    <script src="/resources/js/modernizr.custom.js"></script>
    <script src="/resources/js/searchAnimate.js"></script>
    <script src="/resources/img/bower_components/jquery/dist/jquery.min.js"></script>
    <script src="/resources/img/bower_components/jquery.scrollTo/jquery.scrollTo.min.js"></script>

    <script>
        $(document).ready(function () {
            $("button").click(function () {
                str = $(this).val();~!
                $.scrollTo(str, 1000);
            });
        });
    </script>

</head>
<div id="page-wrap">
    <header>
        <button style="float: right" value="#thirdsection">про нас</button>
        <!--<hr>-->
        <button style="float: right">форум</button>
        <!--<hr>-->
        <button style="float: right" value="#secondsection">контакти</button>
        <!--<hr>-->
        <button style="float: right" value="#mainsection">головна</button>
        <!--<hr>-->
    </header>
    <div id="mainsection">
        <button id="search_button" value="#cbp-fwslider" style="text-decoration: none;">перейти до пошуку</button>
    </div>
    <div class="title" id="category">
        <div class="titles">Категорії</div>
    </div>
    <div class="container">
        <%--<body>--%>
        <%--<c:forEach items="${words}" var="word">--%>
        <%--, ${word.word}, ${word.synonyms.get(0).word}, ${word.senses.get(0).sense}--%>

        <div id="cbp-fwslider" class="cbp-fwslider">
            <body>

            <ul>
                <c:forEach items="${categories}" var="categ">
                    <li>
                        <a href="/category/${categ.id}">
                            <div class="titleSlide">
                                <h3>${categ.name}</h3><br>
                                    <%--<p>Тёлка - это хорошо и <br>даже очень</p><br><br>--%>
                                <button>Перейти к ${categ.name}</button>
                            </div>
                            <div class="imageCategory" style="background: url('/resources/images/1.jpg') center;"></div>
                            <img src="resources/images/1.jpg" alt="img01" style="height: 0px;">
                        </a>
                    </li>
                </c:forEach>
            </ul>

            </body>
        </div>

        <%--</body>--%>
    </div>
    <script src="/resources/js/jquery.cbpFWSlider.min.js"></script>

    <script>
        $(function () {
            $('#cbp-fwslider').cbpFWSlider();
        });
    </script>
    <div class="title" id="search">
        <div class="titles">Пошук</div>
    </div>
    <div id="searchBlock">
        <input type="text" onchange="anichange('#resultSearch')" onkeyup="search('#resultSearch')" id="query"
               placeholder="Що шукаємо?" autocomplete="off" list="test">
        <dataList id="test">
            <option>hasdfjkf</option>
            <option>dsaa</option>
            <option>asdsads</option>
            <option>dasdasd</option>
            <option>asadasd</option>
        </dataList>
        <body>
        <div id="resultSearch" style="display: none;">

        </div>
        </body>


    </div>
</div>
<div class="title" id="contacts">
    <div class="titles">Зворотній зв’язок</div>
</div>
<div id="secondsection" style="background: url('/resources/images/bgFeedBack.jpg')">
    <div style=" background-color: rgba(103, 47, 169, 0.31); padding: 10px">
        <div id="feedBackText">Є питання, чи пропозиції? Напишіть нам!</div>
        <form action="" id="feedBack">
            <input type="text" class="feedBack" name="username" id="username" placeholder="логін">
            <input type="email" class="feedBack" name="email" id="email" placeholder="електронна адресса">
            <input type="text" class="feedBack" name="name" id="name" placeholder="ім’я">
            <textarea id="message" class="feedBack" name="message" placeholder="повідомлення"></textarea>
            <button id="send">Надіслати</button>
        </form>
    </div>
</div>
<div class="title" id="about_us">
    <div class="titles">Команда</div>
</div>
<div id="thirdsection">
    <div class="our_people">
        <div class="avatar" style="background: url('/resources/img/profile.jpg') center; background-size: cover;"></div>
        <div class="about">
            <div class="ful_names">
                Вадимка Заверталюк
            </div>
            <hr>
            <div class="role">
                Back-end developer
            </div>
        </div>
    </div>
    <div class="our_people">
        <div class="avatar" style="background: url('/resources/img/profile.jpg') center; background-size: cover;"></div>
        <div class="about">
            <div class="ful_names">
                Юрік Абдулаєв
            </div>
            <hr>
            <div class="role">
                Back-end developer
            </div>
        </div>
    </div>
    <div class="our_people">
        <div class="avatar" style="background: url('/resources/img/profile.jpg') center; background-size: cover;"></div>
        <div class="about">
            <div class="ful_names">
                Саньок Комісаренко
            </div>
            <hr>
            <div class="role">
                Back-end developer
            </div>
        </div>
    </div>
    <div class="our_people">
        <div class="avatar" style="background: url('/resources/img/iam.jpg') center; background-size: cover;"></div>
        <div class="about">
            <div class="ful_names">
                Костька Клугман
            </div>
            <hr>
            <div class="role">
                Design, Front-end developer
            </div>
        </div>
    </div>
</div>
</div>
</div>
</body>
</html>