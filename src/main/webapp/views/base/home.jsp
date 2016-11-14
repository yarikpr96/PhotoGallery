<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<script src="/resources/assets/js/ie/html5shiv.js"></script>
<link rel="stylesheet" href="/resources/assets/css/main.css"/>
<link rel="stylesheet" href="/resources/assets/css/ie8.css"/>
<link rel="stylesheet" href="/resources/assets/css/ie9.css"/>
<link rel="stylesheet" href="/resources/assets/css/font-awesome.min.css"/>
<script src="/resources/assets/js/jquery.min.js"></script>
<script src="/resources/assets/js/jquery.poptrox.min.js"></script>
<script src="/resources/assets/js/jquery.scrolly.min.js"></script>
<script src="/resources/assets/js/jquery.scrollex.min.js"></script>
<script src="/resources/assets/js/skel.min.js"></script>
<script src="/resources/assets/js/util.js"></script>
<script src="/resources/assets/js/ie/respond.min.js"></script>
<script src="/resources/assets/js/main.js"></script>
<!-- Header -->
<header id="header">

    <!-- Logo -->
    <a href="/loginpage"><h1 id="logo">YarWork</h1></a>
    <sec:authorize access="isAuthenticated()">
        <form:form method="post" action="/logout">
            <button type="submit">Вийти
            </button>
        </form:form>
    </sec:authorize>
    <!-- Nav -->
    <nav id="nav">
        <ul>
            <li><a href="#intro">Головна</a></li>
            <li><a href="#one">Чим я займаюсь</a></li>
            <li><a href="#two">Про мене</a></li>
            <li><a href="#work">Мої роботи</a></li>
            <li><a href="#contact">Контакти</a></li>
        </ul>
    </nav>

</header>

<!-- Intro -->
<section id="intro" class="main style1 dark fullscreen">
    <div class="content container 75%">
        <header>
            <h2>Привіт</h2>
        </header>
        <p></p>
        <p></p>
        <p>Вітаю Вас на мому сайті</p>
        <p></p>
        <p></p>
        <p></p>
        <p></p>
        <p></p>

        <a href="#one" class="button style2 down"></a>

    </div>
</section>

<!-- One -->
<section id="one" class="main style2 right dark fullscreen">
    <div class="content box style2">
        <header>
            <h2>Чим я займаюсь</h2>
        </header>
        <p>Нічим я ж Лев!)</p>
    </div>
    <a href="#two" class="button style2 down anchored"></a>
</section>

<!-- Two -->
<section id="two" class="main style2 left dark fullscreen">
    <div class="content box style2">
        <header>
            <h2>Про мене</h2>
        </header>
        <p>Я Лев!</p>
    </div>
    <a href="#work" class="button style2 down anchored"></a>
</section>

<!-- Work -->
<section id="work" class="main style3 primary">
    <div class="content container">
        <header>
            <h2>Мої роботи </h2>
            <p>Душу вклав</p>
            <sec:authorize access="isAuthenticated()">
                <div class="12u">
                    <ul class="actions">
                        <li><a type="submit" href="/newPhoto"> Додати фото</a></li>
                        <li><a type="submit" href="/adminRemovePhoto">Видвлити фото</a></li>
                    </ul>
                </div>
            </sec:authorize>
        </header>

        <!-- Lightbox Gallery  -->
        <div class="container 75% gallery">
            <c:forEach items="${dtoList}" var="a">
                <div class="row 0% images">
                    <div class="12u 12u(mobile)"><a href="data:image/jpeg;base64,${a.image}"
                                                    class="image fit from-left"><img
                            src="data:image/jpeg;base64,${a.image}" title="${a.name}" alt=""/></a></div>
                </div>
            </c:forEach>

        </div>

    </div>
</section>

<!-- Contact -->
<section id="contact" class="main style3 secondary">
    <div class="content container">
        <header>
            <h2>Скажи привіт</h2>
            <p>Напишіть нам і ми з Вами зв'яжемось</p>
        </header>
        <div class="box container 75%">

            <!-- Contact Form -->
            <form:form action="/" method="post">
                <div class="row 50%">
                    <div class="6u 12u(mobile)"><input type="text" name="name" placeholder="Ім'я"/></div>
                    <div class="6u 12u(mobile)"><input type="email" name="email" placeholder="Email"/></div>
                </div>
                <div class="row 50%">
                    <div class="12u"><textarea name="message" placeholder="Message" rows="6"></textarea></div>
                </div>
                <div class="row">
                    <div class="12u">
                        <ul class="actions">
                            <li><input type="submit" value="Надіслати"/></li>
                        </ul>
                    </div>
                </div>
            </form:form>

        </div>
    </div>
</section>

<!-- Footer -->
<footer id="footer">

    <!-- Icons -->
    <ul class="actions">
        <li><a href="#" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
        <li><a href="#" class="icon fa-facebook"><span class="label">Facebook</span></a></li>
        <li><a href="#" class="icon fa-google-plus"><span class="label">Google+</span></a></li>
        <li><a href="#" class="icon fa-instagram"><span class="label">Instagram</span></a></li>
    </ul>

    <!-- Menu -->
    <ul class="menu">
        <li>&copy; YarWork</li>
        <li></li>
    </ul>

</footer>

<!-- Scripts -->


</body>
</html>