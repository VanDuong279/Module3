<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Currency Converter</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
<h2>Product Discount Calculator</h2>
<form  action="/calculator" method="post">
    <div class="row mb-3">
        <label for="inputDescription" class="col-sm-2 col-form-label">Product Description</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" id="inputDescription" name="inputDescription">
        </div>
    </div>
    <div class="row mb-3">
        <label for="inputListPrice" class="col-sm-2 col-form-label">List Price</label>
        <div class="col-sm-10">
            <input type="number" class="form-control" id="inputListPrice" name="inputListPrice">
        </div>
    </div>
    <div class="row mb-3">
        <label for="inputDiscountPercent" class="col-sm-2 col-form-label">Discount Percent</label>
        <div class="col-sm-10">
            <input type="number" class="form-control" id="inputDiscountPercent" name="inputDiscountPercent">
        </div>
    </div>
    <button type="submit" class="btn btn-primary">Calculate Discount</button>
</form>
</body>
</html>