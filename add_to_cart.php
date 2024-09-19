<?php
session_start();
require "includes/database_connect.php";

$user_id = isset($_SESSION['user_id']) ? $_SESSION['user_id'] : NULL;

$sql = "SELECT * FROM cart WHERE user_id = '$user_id' ";
$result = mysqli_query($conn, $sql);
if (!$result) {
    $response = array("success" => false, "message" => "Something went wrong!");
    echo json_encode($response);
    return;
}

// Updating the Quantity
if (isset($_POST["update_cart"])) {
    $cart_quantity = $_POST["cart_quantity"];
    $update_id = $_POST["cart_id"];

    $sql_1 = "UPDATE cart 
                SET quantity = '$cart_quantity' 
                WHERE id = '$update_id' ";
    $result_1 = mysqli_query($conn, $sql_1);
    echo "<meta http-equiv='refresh' content='0'>";
}

// Deleting product
if (isset($_GET["remove"])) {
    $remove_id = $_GET["remove"];
    $sql_2 = "DELETE FROM cart 
    WHERE id = '$remove_id'";
    $result_2 = mysqli_query($conn, $sql_2);
    header("location:add_to_cart.php");
}

// Delete all
if (isset($_GET["delete_all"])) {
    $sql_3 = "DELETE FROM cart 
    WHERE user_id = '$user_id'";
    $result_3 = mysqli_query($conn, $sql_3);
    header("location:add_to_cart.php");
}

$sql_4 = "SELECT * FROM hospital_booked WHERE user_id = '$user_id' ";
$result_4 = mysqli_query($conn, $sql_4);
if (!$result_4) {
    $response = array("success" => false, "message" => "Something went wrong!");
    echo json_encode($response);
    return;
}

// Deleting hospital data
if (isset($_GET["removebed"])) {
    $remove_id = $_GET["removebed"];
    $sql_5 = "DELETE FROM hospital_booked 
    WHERE id = '$remove_id'";
    $result_5 = mysqli_query($conn, $sql_5);
    header("location:add_to_cart.php");
}

// Delete all
if (isset($_GET["delete_bed_all"])) {
    $sql_6 = "DELETE FROM hospital_booked 
    WHERE user_id = '$user_id'";
    $result_6 = mysqli_query($conn, $sql_6);
    header("location:add_to_cart.php");
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
    <title>My Cart | Farmacy</title>
</head>
<body>
    <?php
    include("includes/navbar.php");
    ?>

    <!-- Hero Section -->
    <div class="container text-center text-dark mt-5">
        <h3>My Cart</h3>
    </div>

    <!-- Main Section -->

    <!-- Medical Cart -->
    <div class="container mt-5 pt-2">
        <div class="row">
            <div class="col">
                <h3>Medical Product Cart</h3>
            </div>
        </div>
    </div>
    <div class="container mt-5">
        <table class="table table-hover">
            <thead>
                <tr>
                <th scope="col">Product Name</th>
                <th scope="col">Price</th>
                <th scope="col">Quantity</th>
                <th scope="col">Total Price</th>
                <th scope="col">Action</th>
                </tr>
            </thead>
            <?php
            $grand_total = 0;
            if(mysqli_num_rows($result) > 0) {
            while ($cart_products = mysqli_fetch_assoc($result)) {
            ?>
            <tbody>
                <tr>
                <th scope="row"><?= $cart_products['name'] ?></th>
                <td>₹ <?= $cart_products['price'] ?></td>
                <td>
                    <form action="" method="post">
                        <input type="hidden" name="cart_id" value="<?= $cart_products['id'] ?>">
                        <input class="border border-secondary rounded text text-center p-1" name="cart_quantity" type="number" min="1" value="<?= $cart_products['quantity'] ?>" >
                        <input type="submit" name="update_cart" value="Update" class="btn btn-warning btn-sm mt-2 mt-md-0">
                    </form>
                </td>
                <td>₹ <?php echo $sub_total = ($cart_products['price'] * $cart_products['quantity']); ?></td>
                <td><a href="add_to_cart.php?remove=<?= $cart_products['id'] ?>" class="btn btn-danger btn-sm" onclick="return confirm('Remove item from cart?');">Remove</a></td>
                </tr>
                </tbody>
            <?php
            $grand_total += $sub_total;
            }
        }
        else {  
            echo '<tr> <td colspan="5" class=" text text-center text-secondary fs-2  m-5 p-3 ms-auto me-auto"> No items Added </td></tr>';
        }
            ?>
            <tr>
                <td class="fw-bold" colspan="3">Grand Total: </td>
                <td>₹ <?php echo $grand_total; ?></td>
                <td>
                    <a href="add_to_cart.php?delete_all" onclick="return confirm('Delete all from cart?')" class="btn btn-danger btn-sm <?php echo ($grand_total > 1)?'':'disabled' ?>">Delete All</a>
                </td>
            </tr>
        </table>
        <div class="row row-cols-1 mt-5 pt-3">
            <div class="col w-25 text text-light btn btn-primary btn-sm rounded ms-auto me-auto <?php echo ($grand_total > 1)?'':'disabled' ?>">Proceed to Checkout</div>
        </div>
    </div>

    <!-- Hospital Bed Cart -->
    <div class="container mt-5 pt-2">
        <div class="row">
            <div class="col">
                <h3>Hospital Bed Cart</h3>
            </div>
        </div>
    </div>

    <div class="container mt-5">
        <table class="table table-hover" colspan="5">
            <thead>
                <tr>
                <th scope="col">Product Name</th>
                <th scope="col">Price</th>
                <th scope="col">Action</th>
                </tr>
            </thead>
            <?php
            $grand_total = 0;
            if(mysqli_num_rows($result) > 0) {
            while ($hospital_booked = mysqli_fetch_assoc($result_4)) {
            ?>
            <tbody>
                <tr>
                <th scope="row"><?= $hospital_booked['hospital_name'] ?></th>
                <td>₹ <?= $hospital_booked['hospital_price'] ?></td>
                <td><a href="add_to_cart.php?removebed=<?= $hospital_booked['id'] ?>" class="btn btn-danger btn-sm" onclick="return confirm('Remove item from cart?');">Remove</a></td>
                </tr>
            </tbody>
            <?php
            $grand_total += $hospital_booked['hospital_price'];
            }
        }
        else {  
            echo '<tr> <td colspan="5" class=" text text-center text-secondary fs-2  m-5 p-3 ms-auto me-auto"> No hospital bed booked </td></tr>';
        }
            ?>
            <tr>
                <td class="fw-bold" colspan="3">Grand Total: </td>
                <td>₹ <?php echo $grand_total; ?></td>
                <td>
                    <a href="add_to_cart.php?delete_bed_all" onclick="return confirm('Delete all from cart?')" class="btn btn-danger btn-sm <?php echo ($grand_total > 1)?'':'disabled' ?>">Delete All</a>
                </td>
            </tr>
        </table>
        <div class="row row-cols-1 mt-5 pt-3">
            <div class="col w-25 text text-light btn btn-primary btn-sm rounded ms-auto me-auto <?php echo ($grand_total > 1)?'':'disabled' ?>">Proceed to Checkout</div>
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