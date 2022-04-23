<?php
include "../functions/functions.php";
include_once ("../Class/user.php");
session_start();
if(isset($_GET['signup'])){

    $felhasznalonev = $_POST['felhasznalonev'];
    $szerzo_e = $_POST['szerzo_e'];
    $email = $_POST['email'];
    $szul_datum = $_POST['szul_datum'];
    $password = $_POST['password'];
    $password_again = $_POST['password_again'];


    $connect=query("SELECT * FROM FELHASZNALO");

    $hiba=[];

    $felhasznalok=$connect->prepare("SELECT * FROM FELHASZNALO");
    $felhasznalo=$felhasznalok->execute();

    foreach ($felhasznalok as $felhasznalo) {
        if ($felhasznalo->getFelhasznalonev() === $felhasznalonev) {
            $hiba[] = "A felhasználónév már foglalt!";
        }
    }

    if (!preg_match("/[0-9a-z.-]+@([0-9a-z-]+\.)+[a-z]{2,4}/", $email)) {
        $hiba[] = "A megadott e-mail cím formátuma nem megfelelő!";
    }

    foreach ($felhasznalok as $felhasznalo) {
        if ($felhasznalo->getEmail() === $email) {
            $hiba[] = "Az e-mail cím már foglalt!";
        }
    }

    if($password!==$password_again){
        $hiba[] = "A két jelszó nem egyezik!";
    }

    if(count($hiba)===0){
        $_SESSION["user"] = new user($felhasznalonev,$szerzo_e,$email,$szul_datum,$password);
        query("INSERT INTO FELHASZNALO (FELHASZNALONEV, SZERZO_E, EMAIL, JELSZO, SZUL_DATUM) VALUES ('" . $felhasznalonev . "', '" . $szerzo_e . "', '" . $email . "', '" . $password . "',TO_DATE('$szul_datum', 'YYYY-MM-DD') )");
        header("Location: register.php?siker=true");

    }
}
?>
<!DOCTYPE html>
<html lang="hu-HU">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Mindentudó</title>
    <link
      rel="stylesheet"
      href="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/css/bootstrap.min.css"
      integrity="sha384-r4NyP46KrjDleawBgD5tp8Y7UzmLA05oM1iAEQ17CSuDqnUK2+k9luXQOfXJCJ4I"
      crossorigin="anonymous"
          />
    <link rel="stylesheet" href="../../css/css.css" />
  </head>

  <body>
    <!-- A top navigációs menü. -->
    <nav class="navbar navbar-expand-sm navbar-dark sticky-top">
      <span class="navbar-text p-2 text-white">Menu</span>
      <button
        class="navbar-toggler"
        type="button"
        data-toggle="collapse"
        data-target="#collapsibleNavbar"
            >
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="collapsibleNavbar">
        <ul class="navbar-nav">
          <!-- A navigációs menü 1. opciója. -->
          <li class="nav-item">
            <a class="nav-link" href="index.php">Home</a>
          </li>
          <!-- A navigációs menü 2. opciója. -->
          <li class="nav-item">
            <a class="nav-link" href="login.php">Login</a>
          </li>
          <!-- A navigációs menü 3. opciója. -->
          <li class="nav-item">
            <a class="nav-link" href="register.php">Register</a>
          </li>
          <!-- A navigációs menü 3. opciója. -->
          <li class="nav-item dropdown">
            <a
              class="nav-link dropdown-toggle"
              href="#"
              id="navbardrop"
              data-toggle="dropdown"
                  >Menu 4</a
>
            <div class="dropdown-menu">
              <a class="dropdown-item" href="#">Menu 4.1</a>
              <a class="dropdown-item" href="#">Menu 4.2</a>
              <a class="dropdown-item" href="#">Menu 4.3</a>
            </div>
          </li>
        </ul>
      </div>
    </nav>

    <div class="container-fluid top">
      <div class="row">
        <div class="col-sm-12 col-lg-12 order-lg-2 order-sm-2">
          <img src="../../src/logo.png" id="logo" />
        </div>
        <div class="col-sm-12 col-lg order-lg-1 order-sm-1"></div>
        <div class="col-sm-12 col-lg order-lg-3 order-sm-3"></div>
      </div>
    </div>

    <section class="py-6 bg-light-primary">
      <div class="container">
        <div class="container h-100">
          <div class="row h-100">
            <div class="col-sm-10 col-md-8 col-lg-6 mx-auto d-table h-100">
              <div class="d-table-cell align-middle">
                <div class="card">
                  <div class="card-body">
                    <div class="text-center mt-4">
                      <h1 class="h2">Register</h1>
                      <p class="lead">Register.</p>
                    </div>
                    <div class="m-sm-4">
                      <form action="register.php" enctype="multipart/form-data" method="POST">
                        <div class="form-group">
                          <label>User Name</label>
                          <input
                            class="form-control form-control-lg"
                            type="text"
                            name="felhasznalonev"
                            placeholder="Enter your user name"
                                />
                        </div>
                        <div class="form-group">
                          <br />
                          <label>Szerzo</label>
                          <input
                            class="form-control form-control-lg"
                            type="text"
                            name="szerzo_e"
                            placeholder="Enter y/n."
                                />
                        </div>
                        <div class="form-group">
                          <br />
                          <label>Email</label>
                          <input
                            class="form-control form-control-lg"
                            type="email"
                            name="email"
                            placeholder="Enter your email"
                                />
                        </div>
                        <div class="form-group">
                          <br />
                          <label>Birthday</label>
                          <input
                            class="form-control form-control-lg"
                            type="text"
                            name="szul_datum"
                            placeholder="Birthday"
                                />
                        </div>
                        <div class="form-group">
                          <br />
                          <label>Password</label>
                          <input
                            class="form-control form-control-lg"
                            type="password"
                            name="password"
                            placeholder="Enter password"
                                />
                        </div>
                        <div class="form-group">
                          <br />
                          <label>Password Again</label>
                          <input
                            class="form-control form-control-lg"
                            type="password"
                            name="password_again"
                            placeholder="Enter password again"
                                />
                        </div>
                        <div class="text-center mt-3">
                          <br />
                            <?php
                                echo '<button type="submit" class="btn btn-lg btn-primary" name="signup" id="btn_src">Signup</button>';
                            ?>

                        </div>
                      </>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

    <nav
      class="navbar navbar-expand-sm navbar-dark fixed-bottom justify-content-end"
>
      <a class="navbar-brand" href="#top">TOP</a>
    </nav>

    <script
      src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
      integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
      crossorigin="anonymous"
          ></script>
    <script
      src="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/js/bootstrap.min.js"
      integrity="sha384-oesi62hOLfzrys4LxRF63OJCXdXDipiYWBnvTl9Y9/TRlw5xlKIEHpNyvvDShgf/"
      crossorigin="anonymous"
          ></script>
  </body>
</html>
