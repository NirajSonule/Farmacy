<?php
session_start();
require "includes/database_connect.php";

$user_id = isset($_SESSION['user_id']) ? $_SESSION['user_id'] : NULL;
$city_name = $_GET["city"];

$sql_1 = "SELECT * FROM cities WHERE name = '$city_name'";
$result_1 = mysqli_query($conn, $sql_1);
if (!$result_1) {
    echo "Something went wrong!";
    return;
}
$city = mysqli_fetch_assoc($result_1);
if (!$city) {
    echo "Sorry! We do not have any PG listed in this city.";
    return;
}
$city_id = $city['id'];


$sql_2 = "SELECT * FROM hospitals WHERE city_id = $city_id";
$result_2 = mysqli_query($conn, $sql_2);
if (!$result_2) {
    echo "Something went wrong!";
    return;
}
$hospitals = mysqli_fetch_all($result_2, MYSQLI_ASSOC);
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Hospitals in <?php echo $city_name ?> | Farmacy</title>

    <?php
    include ("includes/head_links.php");
    ?>
    <link href="css/hospital_list.css" rel="stylesheet" />
</head>
    <body>
        <?php
        include ("includes/navbar.php");
        ?>

        <div class="container mt-5 text-center w-50">
            <div class="page-container">
                <?php
                foreach ($hospitals as $hospital) {
                    $hospital_images = glob("Img/hospitals/" . $hospital['id'] . "/*");
                ?>
                    <div class="hospital-card hospital-id-<?= $hospital['id'] ?> row">
                        <div class="image-container col-md-4">
                            <img src="<?= $hospital_images[0] ?>" />
                        </div>
                        <div class="content-container col-md-8">
                            <div class="detail-container">
                                <div class="hospital-name"><?= $hospital['name'] ?></div>
                                <div class="hospital-address"><?= $hospital['address'] ?></div>
                            </div>
                            <div class="row no-gutters">
                                <div class="price-container col-6">
                                    <div class="price">₹ <?= number_format($hospital['price']) ?>/-</div>
                                    <div class="price-unit">per bed</div>
                                </div>
                                <div class="button-container col-6">
                                    <a href="hospital_detail.php?hospital_id=<?= $hospital['id'] ?>" class="btn btn-primary">View</a>
                                </div>
                            </div>
                        </div>
                    </div>
                <?php
                }

                if (count($hospitals) == 0) {
                ?>
                    <div class="no-hospital-container">
                        <p>No PG to list</p>
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
</html>
