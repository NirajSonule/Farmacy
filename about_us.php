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
    <link rel="stylesheet" href="CSS/common.css">
    <link rel="stylesheet" href="CSS/about_us.css">
    <title>About Us</title>
</head>
<body>
    <!-- Navbar Section -->
    <?php
        include ("includes/navbar.php"); 
    ?>

    <!-- Hero Section -->
    <div class="container mt-5 pt-2 mb-5 pb-5">
        <div class="row row-cols-1 row-cols-lg-2">
        <div class="col">
                <img src="Img/about_us_img.png" alt="Brand" class="img img-fluid w-100 rounded">
            </div>
            <div class="col mt-4 mt-lg-auto mb-lg-auto p-3 p-lg-1">
                <p class="text text-start text-secondary">Farmacy is a renowned branded company in the health care industry, specializing in the production and sale of high-quality products. With a strong focus on providing effective solutions, Farmacy offers a wide range of health care products, including medicines and personal care items. Our company is dedicated to ensuring the well-being of our customers by delivering top-notch products that meet their health and personal care needs. With a commitment to quality and innovation, Farmacy continues to be a trusted name in the industry, providing reliable and effective health care solutions to individuals worldwide.</p>
            </div>
        </div>
    </div>

    <!-- Main Section -->

    <!-- Benifits -->
    <div class="container mt-5 pt-5 text-center">
        <div class="text  mb-3">
            <h5>Farmacy Benefits</h5>
        </div>
        <div class="row row-cols-1 row-cols-md-2 row-cols-lg-3 g-4 mb-5 pb-5">
            <div class="col">
                <div class="card h-100">
                    <img src="Img/farmacy_benifits/card_1.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <p class="card-text text-start">Experience the convenience and quality of our services, designed to meet your healthcare needs.</p>
                    </div>
                </div>
            </div>

            <div class="col">
                <div class="card h-100">
                        <img src="Img/farmacy_benifits/card_2.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <p class="card-text text-start">Explore the benefits of our diverse product offerings, including medicines and other items.</p>
                    </div>
                </div>
            </div>

            <div class="col">
                <div class="card h-100">
                    <img src="Img/farmacy_benifits/card_3.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <p class="card-text text-start">Discover the advantages of choosing our Farmacy company for your medication needs and more.</p>
                    </div>
                </div>
            </div>
        </div>

        <!-- Carousel -->
        <div class="text mb-3 mt-5 pt-5">
            <h5>Farmacy Acheivements</h5>
        </div>
        <div id="carouselExampleSlidesOnly" class="carousel slide mb-5 pb-5" data-bs-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <div class="row row-cols-1 row-cols-lg-3 g-4">
                        <div class="col">
                            <div class="card h-100">
                                <img src="Img/pharmacy_bg.jpg" class="card-img-top" alt="...">
                                <div class="card-body">
                                    <p class="card-text text-start">Experience the convenience and quality of our services, designed to meet your healthcare needs.</p>
                                </div>
                            </div>
                        </div>

                        <div class="col">
                            <div class="card h-100">
                                    <img src="Img/pharmacy_bg.jpg" class="card-img-top" alt="...">
                                <div class="card-body">
                                    <p class="card-text text-start">Explore the benefits of our diverse product offerings, including medicines and other items.</p>
                                </div>
                            </div>
                        </div>

                        <div class="col">
                            <div class="card h-100">
                                <img src="Img/pharmacy_bg.jpg" class="card-img-top" alt="...">
                                <div class="card-body">
                                    <p class="card-text text-start">Discover the advantages of choosing our pharmacy company for your medication needs and more.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="carousel-item">
                <div class="row row-cols-1 row-cols-lg-3 g-4">
                        <div class="col">
                            <div class="card h-100">
                                <img src="Img/pharmacy_bg.jpg" class="card-img-top" alt="...">
                                <div class="card-body">
                                    <p class="card-text text-start">Experience the convenience and quality of our services, designed to meet your healthcare needs.</p>
                                </div>
                            </div>
                        </div>

                        <div class="col">
                            <div class="card h-100">
                                    <img src="Img/pharmacy_bg.jpg" class="card-img-top" alt="...">
                                <div class="card-body">
                                    <p class="card-text text-start">Explore the benefits of our diverse product offerings, including medicines and other items.</p>
                                </div>
                            </div>
                        </div>

                        <div class="col">
                            <div class="card h-100">
                                <img src="Img/pharmacy_bg.jpg" class="card-img-top" alt="...">
                                <div class="card-body">
                                    <p class="card-text text-start">Discover the advantages of choosing our pharmacy company for your medication needs and more.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="carousel-item">
                <div class="row row-cols-1 row-cols-lg-3 g-4">
                        <div class="col">
                            <div class="card h-100">
                                <img src="Img/pharmacy_bg.jpg" class="card-img-top" alt="...">
                                <div class="card-body">
                                    <p class="card-text text-start">Experience the convenience and quality of our services, designed to meet your healthcare needs.</p>
                                </div>
                            </div>
                        </div>

                        <div class="col">
                            <div class="card h-100">
                                    <img src="Img/pharmacy_bg.jpg" class="card-img-top" alt="...">
                                <div class="card-body">
                                    <p class="card-text text-start">Explore the benefits of our diverse product offerings, including medicines and other items.</p>
                                </div>
                            </div>
                        </div>

                        <div class="col">
                            <div class="card h-100">
                                <img src="Img/pharmacy_bg.jpg" class="card-img-top" alt="...">
                                <div class="card-body">
                                    <p class="card-text text-start">Discover the advantages of choosing our pharmacy company for your medication needs and more.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Developers Detials -->
        <div class="text mb-3 mt-5 pt-5">
            <h5>Developers</h5>
        </div>
        <div class="row row-cols-1 row-cols-md-2 g-4 mb-5 pb-5">
            <!-- Developer 1 -->
            <div class="col">
                <div class="card h-100 border border-primary">
                    <div class="row mb-3">
                        <div class="col p-3">
                            <img src="Img/developer_1.jpg" class="card-img-top border border-secondary rounded-circle w-25" alt="...">
                        </div>
                    </div>
                    <div class="card-body">
                        <div class="row mb-3">
                            <div class="col">
                                <p class="card-text text-center">Developer Name:</p>
                            </div>
                            <div class="col">
                                <p class="card-text text-center">Niraj Sonule</p>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col">
                                <p class="card-text text-center">Languages:</p>
                            </div>
                            <div class="col">
                                <p class="card-text text-center">HTML, CSS(Bootstrap), JS, PHP, MySQL</p>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col">
                                <p class="card-text text-center">Work Done: </p>
                            </div>
                            <div class="col">
                                <p class="card-text text-center">Research, desiging, Fontend Programming, Backend Programming.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Developer 2 -->
            <div class="col">
                <div class="card h-100 border border-primary">
                    <div class="row mb-3">
                        <div class="col p-3">
                            <img src="Img/developer_2.jpg" class="card-img-top border border-secondary rounded-circle w-25" alt="...">
                        </div>
                    </div>
                    <div class="card-body">
                        <div class="row mb-3">
                            <div class="col">
                                <p class="card-text text-center">Developer Name:</p>
                            </div>
                            <div class="col">
                                <p class="card-text text-center">Vivek Singh</p>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col">
                                <p class="card-text text-center">Languages:</p>
                            </div>
                            <div class="col">
                                <p class="card-text text-center">HTML, CSS(Bootstrap), JS, PHP, MySQL</p>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col">
                                <p class="card-text text-center">Work Done: </p>
                            </div>
                            <div class="col">
                                <p class="card-text text-center">Data Outsourcing, Desiging, Testing, planning.</p>
                            </div>
                        </div>
                    </div>
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