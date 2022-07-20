<!DOCTYPE html>
<html>
<head>
    <title>XLO</title>
</head>
<body>
<h1>XLO</h1><hr>
<h3>Інформація про користувача ${user.name}</h3>
<b>Номер телефону: </b> ${user.numberPhone}<br>
<b>Email: </b> ${user.email}<br>
<h4>Товари користувача ${user.name}</h4>
<#list products as product>
    <div>
        <p><b>${product.title}</b> ${product.price} грн. | <a href="/product/${product.id}">Детальніше...</a></p>
    </div>
<#else>
    <h3>Товарів немає</h3>
</#list>
<#if errorMessage??>
    <h2 style="color: red">${errorMessage}</h2>
</#if>
</body>
</html>