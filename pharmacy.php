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
    <link rel="stylesheet" href="CSS/pharmacy.css">
    <title>Pharmacy | Page</title>
</head>
<body>
    <!-- Navbar Section -->
    <?php
        include ("includes/navbar.php"); 
    ?>
    
    <!-- Hero Section -->
    <div class="container pt-4">
      <div class="banner-container">
        <h2 class="white pb-3 text-center">Search for Medicines</h2>
        <form id="search-form">
            <div class="input-group medicine-search">
                <input type="text" class="form-control border-primary rounded me-2" id='medicine' name='medicine-name' placeholder="Enter the name of Medicines" />
                <div class="input-group-append">
                    <button type="submit" class="btn btn-primary btn-sm submit-btn">
                        <i class="fa fa-search"></i>
                    </button>
                </div>
            </div>
        </form>
      </div>
    </div>
    
    <!-- Crousel Section -->
    <div class="container pt-5 mb-5 pb-5">
        <div id="carouselExampleSlidesOnly" class="carousel slide" data-bs-ride="carousel">
            <div class="carousel-inner crousel-section">
                <div class="carousel-item active">
                    <img src="Img\bg.jpg" class="d-block w-100" alt="Slide 1">
                </div>
                <div class="carousel-item">
                    <img src="Img\hospital_bg.jpg" class="d-block w-100" alt="Slide 2">
                </div>
                <div class="carousel-item">
                    <img src="Img\pharmacy_bg.jpg" class="d-block w-100" alt="Slide 3">
                </div>
            </div>
        </div>
    </div>

    <!-- Main Section -->

    <!-- Medicine Section -->
    <div class="container mt-5 pt-5">
        <div class="row row-cols-1 row-cols-md-3 info-section ms-auto me-auto g-4">
            <div class="col mt-auto mb-auto">
                <img class="img img-fluid" src="Img/products/1/medicine_section.jpg" alt="Medicine_Section_Img">
            </div>
            <div class="col text text-center  mt-auto mb-auto">
                <p class="info-text">Medicinal Products</p>
                <p class="text text-wrap text-secondary">All types of medicines are available!</p>
            </div>
            <div class="col text text-center mt-auto mb-auto">
                <a class="more-btn btn btn-warning btn-md p-2 text-light" href="pharmacy_list.php?category=Medicine_Product">More</a>
            </div>
        </div>
    </div>

    <!-- Personel Section -->
    <div class="container mt-5 pt-3">
        <div class="row row-cols-1 row-cols-md-3 info-section ms-auto me-auto g-4">
            <div class="col mt-auto mb-auto">
                <img class="img img-fluid" src="Img/products/21/personal_section.jpg" alt="Medicine_Section_Img">
            </div>
            <div class="col text text-center  mt-auto mb-auto">
                <p class="info-text">Personel Care Products</p>
                <p class="text text-wrap text-secondary">All types of Perosnal care products are available!</p>
            </div>
            <div class="col text text-center mt-auto mb-auto">
                <a class="more-btn btn btn-warning btn-md p-2 text-light" href="pharmacy_list.php?category=Personal_Product">More</a>
            </div>
        </div>
    </div>

    <!-- Healthcare Section -->
    <div class="container mt-5 pt-3">
        <div class="row row-cols-1 row-cols-md-3 info-section ms-auto me-auto g-4">
            <div class="col mt-auto mb-auto">
                <img class="img img-fluid" src="Img/products/41/health_section.jpg" alt="Medicine_Section_Img">
            </div>
            <div class="col text text-center  mt-auto mb-auto">
                <p class="info-text">Health care Products</p>
                <p class="text text-wrap text-secondary">All types of Health care products are available!</p>
            </div>
            <div class="col text text-center mt-auto mb-auto">
                <a class="more-btn btn btn-warning btn-md p-2 text-light" href="pharmacy_list.php?category=Health_Product">More</a>
            </div>
        </div>
    </div>

    <!-- Snacks Section -->
    <div class="container mt-5 pt-3">
        <div class="row row-cols-1 row-cols-md-3 info-section ms-auto me-auto g-4">
            <div class="col mt-auto mb-auto">
                <img class="img img-fluid" src="Img/products/61/snack_section.jpg" alt="Medicine_Section_Img">
            </div>
            <div class="col text text-center  mt-auto mb-auto">
                <p class="info-text">Food beverages Products</p>
                <p class="text text-wrap text-secondary">All types of Food and beverages are available!</p>
            </div>
            <div class="col text text-center mt-auto mb-auto">
                <a class="more-btn btn btn-warning btn-md p-2 text-light" href="pharmacy_list.php?category=Snack_Product">More</a>
            </div>
        </div>
    </div>

    <!-- Accordian -->
    <div class="container mt-5 pt-5">
        <div class="accordion accordion-flush" id="pharmacyaccordian">
            <div class="accordion-item">
                <h2 class="accordion-header">
                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseOne" aria-expanded="false" aria-controls="flush-collapseOne">
                    100% Genuine Products
                </button>
                </h2>
                <div id="flush-collapseOne" class="accordion-collapse collapse" data-bs-parent="#pharmacyaccordian">
                    <div class="accordion-body">All the items in our online pharmacy store are validates and authorised to ensure the you receive the best healthcare.</div>
                </div>
            </div>
            <div class="accordion-item">
                <h2 class="accordion-header">
                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseTwo" aria-expanded="false" aria-controls="flush-collapseTwo">
                    Vast Range of Products
                </button>
                </h2>
                <div id="flush-collapseTwo" class="accordion-collapse collapse" data-bs-parent="#pharmacyaccordian">
                    <div class="accordion-body">We offer almost all kind of medicine and healt care producs.</div>
                </div>
            </div>
            <div class="accordion-item">
                <h2 class="accordion-header">
                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseThree" aria-expanded="false" aria-controls="flush-collapseThree">
                    Home delivery option
                </button>
                </h2>
                <div id="flush-collapseThree" class="accordion-collapse collapse" data-bs-parent="#pharmacyaccordian">
                    <div class="accordion-body">You can opt for delivery of your orders at your home with cash on delivery.</div>
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