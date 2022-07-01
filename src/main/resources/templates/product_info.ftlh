<!doctype html>
<html>
<head>
    <title>XLO</title>
</head>
<body>
<h1>XLO</h1><hr>
<h4>Детальна інформація</h4>
<b>Назва товару: </b>${product.title}<br>
<b>Опис товару: </b>${product.description}<br>
<b>Ціна: </b>${product.price}<br>
<b>Місто: </b>${product.city}<br>
<b>Автор: </b>${product.author}<br>
<hr>
<h3>Додати новий товар</h3>
<form action="/product/delete/${product.id}" method="post">
    <input type="submit" value="Видалити товар">
</form>
</body>
</html>