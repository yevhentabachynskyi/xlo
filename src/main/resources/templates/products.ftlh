<!doctype html>
<html>
<head>
    <title>XLO</title>
</head>
<body>
<h1>XLO</h1><hr>
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
<hr>
<h3>Додати новий товар</h3>
<form action="/product/create" method="post">
    Назва оголошення: <input type="text" name="title"/><br><br>
    Опис: <input type="text" name="description"/><br><br>
    Ціна: <input type="number" name="price"/><br><br>
    Місто: <input type="text" name="city"/><br><br>
    Ім'я: <input type="text" name="author"/><br><br>
    <input type="submit" value="Додати товар">
</form>
</body>
</html>