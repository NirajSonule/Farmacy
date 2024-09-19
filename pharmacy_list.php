<?php
session_start();
require "includes/database_connect.php";

$user_id = isset($_SESSION['user_id']) ? $_SESSION['user_id'] : NULL;
$category_name = $_GET["category"];

$sql_1 = "SELECT * FROM product_category WHERE name = '$category_name'";
$result_1 = mysqli_query($conn, $sql_1);
if (!$result_1) {
    echo "Something went wrong!";
    return;
}
$category = mysqli_fetch_assoc($result_1);
$category_id = $category['id'];


$sql_2 = "SELECT * FROM products WHERE category_id = $category_id";
$result_2 = mysqli_query($conn, $sql_2);
if (!$result_2) {
    echo "Something went wrong!";
    return;
}
$products = mysqli_fetch_all($result_2, MYSQLI_ASSOC);

$sql_3 = "SELECT * 
            FROM interested_users_products iup
            INNER JOIN products p ON iup.product_id = p.id
            WHERE iup.user_id = $user_id";
$result_3 = mysqli_query($conn, $sql_3);
if (!$result_3) {
    echo "Something went wrong!";
    return;
}
$interested_users_products = mysqli_fetch_all($result_3, MYSQLI_ASSOC);
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Products in <?php echo $category_name?> | Farmacy</title>

    <?php
    include ("includes/head_links.php");
    ?>
    <link href="css/pharmacy_list.css" rel="stylesheet" />
</head>
    <body>
        <?php
        include ("includes/navbar.php");
        ?>

        <!-- Hero Section -->
        <div class="container">
            <?php
            if ($category_id == 1) {
            ?>
            <div class="text text-center text-primary">
                <h5 class="hero_text">Medicinal Products</h5>
            </div>
            <?php
            }
            elseif ($category_id == 2) {
            ?>
            <div class="text text-center text-primary">
                <h5 class="hero_text">Personal Products</h5>
            </div>
            <?php
            }
            elseif ($category_id == 3) {
            ?>
            <div class="text text-center text-primary">
                <h5 class="hero_text">HealthCare Products</h5>
            </div>
            <?php
            }
            elseif ($category_id == 4) {
            ?>
            <div class="text text-center text-primary">
                <h5 class="hero_text">Food and Breverage Products</h5>
            </div>
            <?php
            }
            ?>
        </div>

        <!-- Main Section -->
        <div class="container mt-5 pt-2">
            <div class="row row-cols-1 row-cols-md-2 row-cols-lg-3 row-cols-xl-4 g-4">
                <?php
                foreach ($products as $product) {
                    $product_images = glob("Img/products/" . $product['id'] . "/*");
                ?>
                <div class="col">
                    <div class="card product-id-<?= $product['id'] ?> h-100">
                        <img src="<?= $product_images[0] ?>" class="card-img-top product_img" alt="...">
                        <div class="card-body">
                            <h5 class="card-title border border-primary-subtle p-2 rounded mb-3"><?= $product['name'] ?></h5>
                            <p class="card-text">₹<?= $product['price'] ?></p>
                        </div>
                        <div class="card-footer">
                            <div class="form-group d-flex justify-content-between">
                                <div class="btn btn-primary btn-sm submit-btn rounded">
                                <?php
                                $is_interested = false;
                                foreach ($interested_users_products as $interested_user_product) {
                                    if ($interested_user_product['product_id'] == $product['id']) {

                                        if ($interested_user_product['user_id'] == $user_id) {
                                            $is_interested = true;
                                        }
                                    }
                                }

                                if ($is_interested) {
                                ?>
                                    <i class="is-interested-image fas fa-heart" product_id="<?= $product['id'] ?>"></i>
                                <?php
                                } else {
                                ?>
                                    <i class="is-interested-image far fa-heart" product_id="<?= $product['id'] ?>"></i>
                                <?php
                                }
                                ?>
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

        <!-- footer section -->
        <?php
        include "includes/signup_modal.php";
        include "includes/login_modal.php";
        include "includes/contactus_modal.php";
        include ("includes/footer.php");
        ?>
    </body>

    <script type="text/javascript" src="JS/pharmacy_list.js"></script>

</html>
