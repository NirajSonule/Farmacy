<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="CSS/common.css">
</head>

<body>
  <!-- Navbar section -->
  <nav class="navbar navbar-expand-lg">
    <div class="container">
      <a class="navbar-brand" href="home.php">
        <!-- Logo here -->
        <img class="logo" src="Img\Brand_Logo.png" alt="lOGO">
      </a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup"
        aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
        <div class="navbar-nav ms-auto">
          <?php
          if (!isset($_SESSION["user_id"])) {
            ?>
            <a class="nav-link" href="#" data-bs-toggle="modal" data-bs-target="#signup-modal">SignUp</a>
            <a class="nav-link" href="#" data-bs-toggle="modal" data-bs-target="#login-modal">LogIn</a>
            <?php
          } else {
            ?>
            <a class="nav-link" href="my_Account.php">My Account</a>
            <a class="nav-link" href="logout.php">LogOut</a>
            <?php
          }
          ?>
        </div>
      </div>
    </div>
  </nav>
  <div id="loading">
  </div>
</body>

</html>