<?php
session_start();
require "includes/database_connect.php";

$user_id = isset($_SESSION['user_id']) ? $_SESSION['user_id'] : NULL;
$product_id = $_GET["product_id"];

$sql_1 = "SELECT *, p.id AS product_id, p.name AS product_name, c.name AS category_name 
            FROM products p
            INNER JOIN product_category c ON p.category_id = c.id 
            WHERE p.id = $product_id";
$result_1 = mysqli_query($conn, $sql_1);
if (!$result_1) {
    echo "Something went wrong!";
    return;
}
$product = mysqli_fetch_assoc($result_1);
if (!$product) {
    echo "Something went wrong!";
    return;
}

if (isset($_POST["add_to_cart"])) {

    $product_name = $_POST['product_name'];
    $product_price = $_POST['product_price'];
    $product_quantity = $_POST['quantity'];

    $sql_2 = "SELECT * 
                FROM cart 
                WHERE name = '$product_name' 
                AND user_id = '$user_id'";
    $select_cart = mysqli_query($conn, $sql_2);
    if (!$select_cart) {
        echo "Something went wrong!";
        return;
    }

    if (mysqli_num_rows($select_cart) > 0) {
        $response[] = 'Product already added to cart';
    }
    else {
        mysqli_query($conn,"INSERT INTO cart (user_id, name, price, quantity) VALUES ('$user_id', '$product_name', '$product_price', $product_quantity)") or die('Query Failed');
        $message[] = "Product added to cart";
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <?php
        include("includes/head_links.php")
    ?>
    <link rel="stylesheet" href="CSS/common.css">
    <link rel="stylesheet" href="CSS/product_detail.css">
    <title>Farmacy</title>
</head>
<body>
    <!-- Navbar -->
    <?php
        include ("includes/navbar.php");
    ?>

    <!-- Hero Section -->
    <div class="container mt-5 text-center">
        <div class="image img-fluid">
            <img src="Img/products/1/medicine_section.jpg" alt="Product Image">
        </div>
    </div>
    <!-- Main Secition -->
    <div class="container text-center mt-5">
        <form method="post" action="">
            <div class="product-summary product-container mt-5">
                <div class="detail-container">
                    <div class="product-name"><?= $product['product_name'] ?></div>
                </div>
                <div class="row row-cols-1 row-cols-lg-3 no-gutters w-75 ms-auto me-auto mt-5 text-center">
                    <div class="col price-container mb-3 mb-lg-0">
                        <div class="price-text text-secondary pe-2">Price: </div>
                        <div class="price">₹ <?= number_format($product['price']) ?>/-</div>
                    </div>
                    <div class="col button-container mb-3 mb-lg-0">
                        <h5 class="text-text-secondary">Quantity</h5>
                        <input class="input-text text text-wrap text-center text-dark rounded p-2" type="number" min="1" name="quantity" value="1" ></input>
                    </div>
                    <div class="col button-container">
                        <input type="submit" class="input-text btn btn-primary rounded" name="add_to_cart" value="Add to Cart"></input>
                    </div>
                </div>
                <div class="hospital-about page-container mt-5 pt-5 w-75 ms-auto me-auto">
                    <h1>Product Description</h1>
                    <p class="mt-3 text-start"><?= $product['description'] ?></p>
                </div>
                <div class="hospital-about page-container mt-5 pt-5 w-75 ms-auto me-auto">
                    <h1>Side Effects</h1>
                    <p class="mt-3 text-start"><?= $product['side_effects'] ?></p>
                </div>
            </div>
            <input type="hidden" name="product_name" value="<?= $product['product_name'] ?>">
            <input type="hidden" name="product_price" value="<?= $product['price'] ?>">
        </form>
    </div>

    <!-- Medical List -->
    <!-- <div class="container">
        <?php
        foreach ($medicals as $medical) {
        ?>
        <div class="input-group mb-3">
            <div class="input-group-text">
                <input class="form-check-input mt-0" type="radio" value="" aria-label="Checkbox for following text input">
            </div>
            <input type="text" value="Medical Name: <?= $medical['name'] ?>   Address: <?= $medical['address'] ?>" class="form-control" aria-label="Text input with checkbox">
        </div>
        <?php
        }
        ?>
    </div> -->
    <!-- footer section -->
    <?php
    include "includes/signup_modal.php";
    include "includes/login_modal.php";
    include "includes/contactus_modal.php";
    include ("includes/footer.php");
    ?>
</body>
</html>