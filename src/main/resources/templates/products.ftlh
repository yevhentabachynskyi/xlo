<!doctype html>
<html>
<head>
    <title>XLO</title>
</head>
<body>
<h1>XLO</h1><hr>
<#if user.email??>
    <h3>Користувач: <i>${user.name}</i></h3>
<form action="/logout" method="post">
    <input type="hidden" name="_csrf" value="${_csrf.token}">
    <input type="submit" value="Вихід"/>
</form>
    <#if user.isAdmin()>
        <a href="/admin">Панель адміністратора</a>
    </#if>
<#else>
    <a href="/login">Вхід</a>
</#if>
<hr>
<h4>Знайдеться не все</h4>
<form action="/" method="get">
    Пошук по назві оголошення: <input type="text" name="title"><br>
    <input type="submit" value="Шукати">
</form>
<#list products as product>
    <div>
        <p><b>${product.title}</b> - ${product.price} | <a href="/product/${product.id}"> Детальніше</a> </p>
    </div>
    <#else>
    <h3>Товарів нема</h3>
</#list>
<#if user.email??>
<hr>
<h3>Додати новий товар</h3>
<form action="/product/create" method="post" enctype="multipart/form-data">
    Назва оголошення: <input type="text" name="title"/><br><br>
    Опис: <input type="text" name="description"/><br><br>
    Ціна: <input type="number" name="price"/><br><br>
    Місто: <input type="text" name="city"/><br><br>
    Фото 1: <input type="file" name="file1"/><br><br>
    Фото 2: <input type="file" name="file2"/><br><br>
    Фото 3: <input type="file" name="file3"/><br><br>
    <input type="hidden" name="_csrf" value="${_csrf.token}">
    <input type="submit" value="Додати товар">
</form>
</#if>
</body>
</html>