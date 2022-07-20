<!doctype html>
<html>
<head>
    <title>XLO</title>
</head>
<body>
<h1>XLO</h1><hr>
<h4>Детальна інформація</h4>
<#list images as img>
    <img src="/images/${img.id}" height="60px"/><br><br>
</#list>
<b>Назва товару: </b>${product.title}<br>
<b>Опис товару: </b>${product.description}<br>
<b>Ціна: </b>${product.price}<br>
<b>Місто: </b>${product.city}<br>
<b>Автор: </b><a href="/user/${product.user.id}">${product.user.name}</a><br>
<hr>
<#--<h3>Видалити товар</h3>-->
<#--<form action="/product/delete/${product.id}" method="post">-->
<#--    <input type="submit" value="Видалити товар">-->
<#--</form>-->
</body>
</html>