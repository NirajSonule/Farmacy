<?php
session_start();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="CSS/home.css">
    <?php
        include("includes/head_links.php")
    ?>
    <title>Home | Page</title>
</head>
<body>
    <!-- Navbar -->
    <?php
        include ("includes/navbar.php"); 
    ?>

    <!-- Header Section (Hero Section) -->
    <section class="hero">
        <div class="container">
            <div class="row">
                <!-- Text -->
                <div class="col-md-6">
                    <div class="text">
                        Your Journey To Better Health Starts Here...                    
                    </div>
                    <div class="buttons">
                        <a href="hospital.php" class="btn btn-primary">Hospital</a>
                        <a href="pharmacy.php" class="btn btn-outline-secondary ms-3">Medical</a>
                    </div>
                </div>
                <!-- Image -->
                <div class="col-md-6">
                    <img src="Img/bg.jpg" alt="hero-img" class="w-100">
                </div>
            </div>
        </div>
    </section>

    <!-- Main Section -->
    <section class="information">
        <div class="container">
            <div class="row info-1">
                <!-- Image -->
                <div class="col-md-6">
                    <img src="Img/hospital_bg.jpg" alt="img-1" class="w-100">
                </div>
                <!-- Text -->
                <div class="col-md-6">
                    <div class="text-information">
                        <h5>Find the hospitals near you places</h5>
                        <p>Find better hospitals near your vicinity, get all the details like facilities and amenities with charges on single Platfrom.</p>
                    </div>
                </div>
            </div>
            <div class="row info-2">
                <!-- Text -->
                <div class="col-md-6">
                    <div class="text-information">
                        <h5>Looking for online pharmacy, here it is...</h5>
                        <p>Find pharmacy near your place and order medicine and much more online sitting right at your home, get precise products here on Farmacy.</p>
                    </div>
                </div>
                <!-- Image -->
                <div class="col-md-6">
                    <img src="Img/pharmacy_bg.jpg" alt="img-2" class="w-100">
                </div>
            </div>
        </div>
    </section>

    <!-- footer section -->
    <?php
    include "includes/signup_modal.php";
    include "includes/login_modal.php";
    include "includes/contactus_modal.php";
    include ("includes/footer.php");
    ?>

</body>
</html>