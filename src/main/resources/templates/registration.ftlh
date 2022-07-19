<!DOCTYPE html>
<html>
<head>
    <title>XLO</title>
</head>
<body>
<h1>XLO</h1><hr>
<h4>Регістрація</h4>
<form action="/registration" method="post">
    Ім'я користувача: <input type="text" name="name"><br><br>
    Ел. пошта: <input type="email" name="email"><br><br>
    Номер телефону: <input type="text" name="numberPhone"><br><br>
    Пароль: <input type="password" name="password"><br><br>
    <input type="hidden" name="_csrf" value="${_csrf.token}">
    <input type="submit" value="Регістрація"/>
</form>
<#if errorMessage??>
    <h2 style="color: red">${errorMessage}</h2>
</#if>
</body>
</html>