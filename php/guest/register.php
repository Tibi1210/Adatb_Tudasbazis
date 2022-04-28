<?php
include "../functions/functions.php";
$hiba = "";
if (isset($_POST['signup'])) {


    $felhasznalonev = $_POST['felhasznalonev'];
    $email = $_POST['email'];
    $szul_datum = $_POST['szul_datum'];
    $password = $_POST['password'];
    $password_again = $_POST['password_again'];


    $connect = query("SELECT * FROM FELHASZNALO");

    $vane = false;

    if ($felhasznalonev != "" && $email != "" && $password != "" && $password_again != "" && $szul_datum != "") {
        $s = query("SELECT FELHASZNALONEV FROM FELHASZNALO WHERE FELHASZNALONEV='$felhasznalonev'");
        while (($row = oci_fetch_array($s, OCI_ASSOC + OCI_RETURN_NULLS)) != false) {
            foreach ($row as $item) {
                $vane = true;
            }
        }
        $s = query("SELECT EMAIL FROM FELHASZNALO WHERE EMAIL='$email'");
        while (($row = oci_fetch_array($s, OCI_ASSOC + OCI_RETURN_NULLS)) != false) {
            foreach ($row as $item) {
                $vane = true;
            }
        }
        if ($vane) {
            $hiba = "Már létezik ilyen nevű/email című felhasználó!";
        } else {
            if ($password != $password_again) {
                $hiba = "Jelszó nem egyezik!";
            } else {
                session_name("user");
                session_start();
                query("INSERT INTO FELHASZNALO (FELHASZNALONEV, SZERZO_E, EMAIL, JELSZO, SZUL_DATUM) VALUES ('" . $felhasznalonev . "', '" . "n" . "', '" . $email . "', '" . $password . "',TO_DATE('$szul_datum', 'YYYY-MM-DD') )");
                $_SESSION["felhasznalonev"] = $felhasznalonev;
                $admine = false;
                $s = query("SELECT FELHASZNALONEV FROM ADMIN WHERE FELHASZNALONEV='$felhasznalonev'");
                while (($row = oci_fetch_array($s, OCI_ASSOC + OCI_RETURN_NULLS)) != false) {
                    foreach ($row as $item) {
                        $admine = true;
                    }
                }
                if($admine){
                    $_SESSION["admine"] = true;
                    header("Location: ../admin/index.php");
                }else{
                    $_SESSION["admine"] = false;
                    header("Location: ../user/index.php");
                }
            }
        }
    } else {
        $hiba = "Üres beviteli mező!";
    }
}
?>
<!DOCTYPE html>
<html lang="hu-HU">
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Mindentudó</title>
    <link
            rel="stylesheet"
            href="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/css/bootstrap.min.css"
            integrity="sha384-r4NyP46KrjDleawBgD5tp8Y7UzmLA05oM1iAEQ17CSuDqnUK2+k9luXQOfXJCJ4I"
            crossorigin="anonymous"
    />
    <link rel="stylesheet" href="../../css/css.css"/>
</head>

<body>
<!-- A top navigációs menü. -->
<nav class="navbar navbar-expand-sm navbar-dark sticky-top">
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
                <a class="nav-link text-white" href="register.php">Register</a>
            </li>
        </ul>
    </div>
</nav>

<div class="container-fluid top">
    <div class="row">
        <div class="col-sm-12 col-lg-12 order-lg-2 order-sm-2">
            <img src="../../src/logo.png" id="logo"/>
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
                                    <h1 class="h2">Regisztráció</h1>
                                </div>
                                <div class="m-sm-4">
                                    <form action="register.php" enctype="multipart/form-data" method="POST">
                                        <div class="form-group">
                                            <label>Felhasználónév</label>
                                            <input
                                                    class="form-control form-control-lg"
                                                    type="text"
                                                    name="felhasznalonev"
                                                    placeholder="Felhasználónév"
                                            />
                                        </div>
                                        <div class="form-group">
                                            <br/>
                                            <label>Email</label>
                                            <input
                                                    class="form-control form-control-lg"
                                                    type="email"
                                                    name="email"
                                                    placeholder="Email"
                                            />
                                        </div>
                                        <div class="form-group">
                                            <br/>
                                            <label>Születési dátum</label>
                                            <input
                                                    class="form-control form-control-lg"
                                                    type="date"
                                                    name="szul_datum"
                                                    placeholder="Születési dátum"
                                            />
                                        </div>
                                        <div class="form-group">
                                            <br/>
                                            <label>Jelszó</label>
                                            <input
                                                    class="form-control form-control-lg"
                                                    type="password"
                                                    name="password"
                                                    placeholder="Jelszó"
                                            />
                                        </div>
                                        <div class="form-group">
                                            <br/>
                                            <label>Jelszó ismét</label>
                                            <input
                                                    class="form-control form-control-lg"
                                                    type="password"
                                                    name="password_again"
                                                    placeholder="Jelszó ismét"
                                            />
                                        </div>
                                        <div class="text-center mt-3">
                                            <br/>
                                            <?php
                                            echo "<p>$hiba<p>";
                                            echo '<button type="submit" class="btn btn-lg btn-primary" name="signup" id="btn_src">Regisztráció</button>';
                                            ?>

                                        </div>
                                    </
                                    >
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
