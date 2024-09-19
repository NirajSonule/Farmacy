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
    <title>My Account | Farmacy</title>
</head>
<body>
    <?php
    include("includes/navbar.php");
    ?>

    <!-- Hero Section -->
    <div class="container text-center text-dark mt-5">
        <h5>Account Detail's</h5>
    </div>

    <!-- Main Section -->

    <!-- Account Details -->
    <div class="container">
        <div class="row row-cols-1 row-cols-md-2 w-75 ms-auto me-auto">
            <div class="col">
                <div class="row">
                    <div class="row">
                        <div class="row text text-secondary mt-3 p-2">Name</div>
                        <div class="row text text-dark border border-secondary p-2 rounded"><?= $user['full_Name']?></div>
                    </div>
                    <div class="row">
                        <div class="row text text-secondary mt-3 p-2">Gender</div>
                        <div class="row text text-dark border border-secondary p-2 rounded"><?= $user['gender']?></div>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="row">
                    <div class="row">
                        <div class="row text text-secondary mt-3 p-2">Email</div>
                        <div class="row text text-dark border border-secondary p-2 rounded"><?= $user['email']?></div>
                    </div>
                    <div class="row">
                        <div class="row text text-secondary mt-3 p-2">Phone Number</div>
                        <div class="row text text-dark border border-secondary p-2 rounded"><?= $user['phone_no']?></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col w-75 ms-auto me-auto">
                <div class="row text text-secondary mt-3 p-2">Address</div>
                <div class="row text text-dark border border-secondary p-2 rounded"><?= $user['address']?></div>
        </div>
    </div>

    <!-- Buttons -->
    <div class="container text-center text-dark mt-5 pt-3">
        <h5>Go to</h5>
    </div>
    <div class="container mt-2">
        <div class="d-flex justify-content-between w-75 ms-auto me-auto">
            <a href="interested_list.php" class="btn btn-primary btn-sm submit-btn rounded">
                <i class="fa fa-heart"></i>
            </a>
            <a href="add_to_cart.php" class="btn btn-primary btn-sm submit-btn">
                My Cart
            </a>
        </div>
    </div>

    <!-- Footer Section -->
    <?php
    include "includes/signup_modal.php";
    include "includes/login_modal.php";
    include "includes/contactus_modal.php";
    include ("includes/footer.php");
    ?>
    
</body>
</html>