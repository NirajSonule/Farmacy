<?php
session_start();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <?php
        include("includes/head_links.php");
    ?>
    <link rel="stylesheet" href="CSS/hospital.css">
    <title>Hospital | Page</title>
</head>
<body>
    <!-- Navbar section -->
    <?php
        include ("includes/navbar.php"); 
    ?>

    <!-- Hero Section -->
    <div class="container pt-4">
      <div class="banner-container">
        <h2 class="white pb-3 text-center">Search for City</h2>
        <form id="search-form"  action="hospital_list.php" method="GET">
            <div class="input-group city-search">
                <input type="text" class="form-control border-primary rounded me-2" id='city' name='city' placeholder="Enter the name of City"/>
                <div class="input-group-append">
                    <button type="submit" class="btn btn-primary btn-sm submit-btn">
                        <i class="fa fa-search"></i>
                    </button>
                </div>
            </div>
        </form>
      </div>
    </div>

    <!-- Main Section -->
    <div class="container mt-5 pt-5">
        <div class="text text-center">
            <h2>Cities</h2>
        </div>
        <div class="container mt-5">
            <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 row-cols-lg-4 row-cols-xl-5 g-4 text-center">
                <div class="city-card-container">
                    <a href="hospital_list.php?city=Mumbai">
                        <div class="city-card rounded">
                            <img src="Img/mumbai.png" class="city-img" />
                        </div>
                    </a>
                </div>

                <div class="city-card-container">
                    <a href="hospital_list.php?city=Hyderabad">
                        <div class="city-card rounded">
                            <img src="Img/hyderabad.png" class="city-img" />
                        </div>
                    </a>
                </div>

                <div class="city-card-container">
                    <a href="hospital_list.php?city=Delhi">
                        <div class="city-card rounded">
                            <img src="Img/delhi.png" class="city-img" />
                        </div>
                    </a>
                </div>

                <div class="city-card-container">
                    <a href="hospital_list.php?city=Banglore">
                        <div class="city-card rounded">
                            <img src="Img/bangalore.png" class="city-img" />
                        </div>
                    </a>
                </div>

                <div class="city-card-container">
                    <a href="hospital_list.php?city=Chennai">
                        <div class="city-card rounded">
                            <img src="Img/chennai.png" class="city-img" />
                        </div>
                    </a>
                </div>
            </div>
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