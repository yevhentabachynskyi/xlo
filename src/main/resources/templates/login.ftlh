<!DOCTYPE html>
<html>
<head>
    <title>XLO</title>
</head>
<body>
<h1>XLO</h1><hr>
<h4>Авторизація</h4>
<form action="/login" method="post">
    Ел. пошта: <input type="email" name="username"><br><br>
    Пароль: <input type="password" name="password"><br><br>
    <input type="hidden" name="_csrf" value="${_csrf.token}">
    <input type="submit" value="Вхід"/>
</form>
<a href="/registration">Регістрація</a>
</body>
</html>