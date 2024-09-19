<?php
session_start();
require "includes/database_connect.php";

if (!isset($_SESSION["user_id"])) {
    header("location: home.php");
    die();
}
$user_id = $_SESSION['user_id'];

$sql_1 = "SELECT * FROM users WHERE user_ID = $user_id";
$result_1 = mysqli_query($conn, $sql_1);
if (!$result_1) {
    echo "Something went wrong!";
    return;
}
$user = mysqli_fetch_assoc($result_1);
if (!$user) {
    echo "Something went wrong!";
    return;
}

$sql_2 = "SELECT * 
            FROM interested_users_products iup
            INNER JOIN products p ON iup.product_id = p.id
            WHERE iup.user_id = $user_id";
$result_2 = mysqli_query($conn, $sql_2);
if (!$result_2) {
    echo "Something went wrong!";
    return;
}
$interested_products = mysqli_fetch_all($result_2, MYSQLI_ASSOC);
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <?php
        include("includes/head_links.php");
    ?>
    <link rel="stylesheet" href="CSS/common.css">
    <title>Interested List | Farmacy</title>
</head>
<body>
    <?php
    include("includes/navbar.php");
    ?>

    <!-- Hero Section -->
    <div class="container text-center text-dark mt-5">
        <h3>Wishlist</h3>
    </div>

    <!-- Main Section -->
    <?php
    if (count($interested_products) > 0) {
    ?>
        <div class="container mt-5 pt-2">
            <div class="row row-cols-1 row-cols-md-2 row-cols-lg-3 row-cols-xl-4 g-4">
                <?php
                foreach ($interested_products as $product) {
                    $product_images = glob("Img/products/" . $product['id'] . "/*");
                ?>
                <div class="col">
                    <div class="card product-id-<?= $product['id'] ?> h-100">
                        <img src="<?= $product_images[0] ?>" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title border border-primary-subtle p-2 rounded mb-3"><?= $product['name'] ?></h5>
                            <p class="card-text">₹<?= $product['price'] ?></p>
                        </div>
                        <div class="card-footer">
                            <div class="form-group d-flex justify-content-between">
                                <div class="interested-container btn btn-primary btn-sm submit-btn rounded">
                                    <i class="is-interested-image fas fa-heart" product_id="<?= $product['id'] ?>"></i>
                                </div>
                                <div class="btn btn-primary btn-sm submit-btn">
                                    <a class="text-light" href="product_details.php?product_id=<?= $product['id'] ?>">view</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <?php
                }
                ?>
            </div>
        </div>
    <?php
    }
    ?>

    <!-- Account Details -->

    <!-- Footer Section -->
    <?php
    include "includes/signup_modal.php";
    include "includes/login_modal.php";
    include "includes/contactus_modal.php";
    include ("includes/footer.php");
    ?>
    
    <script type="text/javascript" src="JS\interested.js"></script>

</body>
</html>