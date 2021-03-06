<?php
include "../functions/functions.php";
if (isset($_GET["felhasznalonev"]) && isset($_GET["szerzo_e"]) && isset($_GET["email"]) && isset($_GET["jelszo"]) && isset($_GET["jelszo_ujra"]) && isset($_GET["szul_datum"])) {
    $nev = $_GET["felhasznalonev"];
    $szerzo = $_GET["szerzo_e"];
    $email = $_GET["email"];
    $jelszo = $_GET["jelszo"];
    $jelszo2 = $_GET["jelszo_ujra"];
    $szuldatum = $_GET["szul_datum"];
    $empty = false;
} else {
    $nev = "";
    $szerzo = "";
    $email = "";
    $jelszo = "";
    $jelszo2 = "";
    $szuldatum = "";
    $empty = true;
}
if (isset($_GET["deletebtn"])) {
    query("DELETE FROM FELHASZNALO WHERE FELHASZNALONEV='" . $_GET["deletebtn"] . "'");
}

$vaneupdate = false;
$vane = false;
if (isset($_GET["updatebtn"])) {
    $update = query("SELECT * FROM FELHASZNALO WHERE FELHASZNALONEV='" . $_GET["updatebtn"] . "'");
    $updaterow = oci_fetch_array($update, OCI_ASSOC + OCI_RETURN_NULLS);
    $updval = $_GET["updatebtn"];
    $vaneupdate = true;
    $vane = false;
}

?>

<!DOCTYPE html>
<html lang="hu-HU">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Felhasználók</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/css/bootstrap.min.css" integrity="sha384-r4NyP46KrjDleawBgD5tp8Y7UzmLA05oM1iAEQ17CSuDqnUK2+k9luXQOfXJCJ4I" crossorigin="anonymous" />
    <link rel="stylesheet" href="../../css/css.css" />
</head>

<body>
    <!-- A top navigációs menü. -->
    <nav class="navbar navbar-expand-sm navbar-dark sticky-top">
        <div class="collapse navbar-collapse" id="collapsibleNavbar">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" href="index.php">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="admin_list.php">Adminok</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-white" href="user_list.php">Felhasználók</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="article_list.php">Cikkek</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="source_list.php">Források</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="error_list.php">Hibák</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="keyword_list.php">Kulcsszavak</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="modify_list.php">Módosítás</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="topic_list.php">Témakörök</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="nemtrivialis.php">Lekérdezések</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="logout.php">Logout</a>
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

    <div class="py-6 bg-light-primary">
        <div class="container">
            <div class="row row-cols-lg- row-cols-md-2 row-cols-1 text-center justify-content-center px-xl-6 aos-init aos-animate" data-aos="fade-up">
                <div class="col my-3">
                    <div class="card border-hover-primary hover-scale">
                        <div class="card-body">
                            <h4 class="font-weight-bold mb-3">Új felhasználó:</h4>
                            <div class="m-sm-4">
                                <form action="user_list.php" method="get">
                                    <div class="form-group">
                                        <label>Felhasználónév</label>
                                        <?php
                                        if (isset($_GET["updatebtn"])) {
                                            echo "<input class='form-control form-control-lg' type='text' name='felhasznalonev' value='" . $updaterow["FELHASZNALONEV"] . "' placeholder='Felhasználónév' />";
                                        } else {
                                            echo "<input class='form-control form-control-lg' type='text' name='felhasznalonev' placeholder='Felhasználónév' />";
                                        }
                                        ?>
                                    </div>
                                    <div class="form-group">
                                        <br />
                                        <label>Szerző</label>
                                        <!--Ezeket kicserélni-->
                                        <!--<input class="form-control form-control-lg" type="text" name="szerzo_e" placeholder="y/n" />-->
                                        <!--Ezekre-->
                                        <?php
                                        if (isset($_GET["updatebtn"])) {
                                            echo "<input class='form-control form-control-lg' type='text' name='szerzo_e' value='" . $updaterow["SZERZO_E"] . "' placeholder='y/n' />";
                                        } else {
                                            echo "<input class='form-control form-control-lg' type='text' name='szerzo_e' placeholder='y/n' />";
                                        }
                                        ?>
                                        <!--Ezekre-->
                                    </div>
                                    <div class="form-group">
                                        <br />
                                        <label>E-mail</label>
                                        <?php
                                        if (isset($_GET["updatebtn"])) {
                                            echo "<input class='form-control form-control-lg' type='email' name='email' value='" . $updaterow["EMAIL"] . "' placeholder='Email cím' />";
                                        } else {
                                            echo "<input class='form-control form-control-lg' type='email' name='email' placeholder='Email cím' />";
                                        }
                                        ?>
                                    </div>
                                    <div class="form-group">
                                        <br />
                                        <label>Jelszó</label>
                                        <?php
                                        if (isset($_GET["updatebtn"])) {
                                            echo "<input class='form-control form-control-lg' type='password' name='jelszo' value='" . $updaterow["JELSZO"] . "' placeholder='Jelszó' />";
                                        } else {
                                            echo "<input class='form-control form-control-lg' type='password' name='jelszo' placeholder='Jelszó' />";
                                        }
                                        ?>
                                    </div>
                                    <div class="form-group">
                                        <br />
                                        <label>Jelszó megerősítése</label>
                                        <?php
                                        if (isset($_GET["updatebtn"])) {
                                            echo "<input class='form-control form-control-lg' type='password' name='jelszo_ujra' value='" . $updaterow["JELSZO"] . "' placeholder='Jelszó megerősítése' />";
                                        } else {
                                            echo "<input class='form-control form-control-lg' type='password' name='jelszo_ujra' placeholder='Jelszó megerősítése' />";
                                        }
                                        ?>
                                    </div>
                                    <div class="form-group">
                                        <br />
                                        <label>Születési dátum</label>
                                        <?php
                                        if (isset($_GET["updatebtn"])) {
                                            echo "<input class='form-control form-control-lg' type='date' name='szul_datum' value='" . $updaterow["SZUL_DATUM"] . "' placeholder='Születési dátum' />";
                                        } else {
                                            echo "<input class='form-control form-control-lg' type='date' name='szul_datum' placeholder='Születési dátum' />";
                                        }
                                        ?>
                                    </div>
                                    <div class="text-center mt-3">
                                        <br />
                                        <?php
                                        if (isset($_GET["updatebtn"])) {
                                            echo '<button type="submit" class="btn btn-lg btn-primary" name="updatebtnfinal" value="' . $updval . '" id="btn_src">Frissítés</button>';
                                        } else {
                                            echo '<button type="submit" class="btn btn-lg btn-primary" id="btn_src">Létrehozás</button>';
                                        }
                                        ?>
                                    </div>
                                </form>
                                <?php
                                if (!$empty) {
                                    if ($nev != "" && $szerzo != "" && $email != "" && $jelszo != "" && $jelszo2 != "" && $szuldatum != "") {
                                        $s = query("SELECT FELHASZNALONEV FROM FELHASZNALO WHERE FELHASZNALONEV='$nev'");
                                        while (($row = oci_fetch_array($s, OCI_ASSOC + OCI_RETURN_NULLS)) != false) {
                                            foreach ($row as $item) {
                                                if (!isset($_GET["updatebtnfinal"])) {
                                                    $vane = true;
                                                } else {
                                                    if ($nev != $_GET["updatebtnfinal"]) {
                                                        $s = query("SELECT FELHASZNALONEV FROM FELHASZNALO WHERE FELHASZNALONEV='" . $_GET["updatebtnfinal"] . "'");
                                                        $vane = false;
                                                        while (($row = oci_fetch_array($s, OCI_ASSOC + OCI_RETURN_NULLS)) != false) {
                                                            foreach ($row as $item) {
                                                                $vane = true;
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                        $s = query("SELECT EMAIL FROM FELHASZNALO WHERE EMAIL='$email'");
                                        while (($row = oci_fetch_array($s, OCI_ASSOC + OCI_RETURN_NULLS)) != false) {
                                            foreach ($row as $item) {
                                                if (!isset($_GET["updatebtnfinal"])) {
                                                    $vane = true;
                                                } else {
                                                    if ($nev != $_GET["updatebtnfinal"]) {
                                                        $s = query("SELECT EMAIL FROM FELHASZNALO WHERE EMAIL='" . $_GET["updatebtnfinal"] . "'");
                                                        $vane = false;
                                                        while (($row = oci_fetch_array($s, OCI_ASSOC + OCI_RETURN_NULLS)) != false) {
                                                            foreach ($row as $item) {
                                                                $vane = true;
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                        if ($vane) {
                                            echo "<br>";
                                            echo "<p>Már létezik ilyen nevű/email című felhasználó!<p>";
                                        } else {
                                            if ($jelszo != $jelszo2) {
                                                echo "<br>";
                                                echo "<p>Jelszó nem egyezik!<p>";
                                            } else {
                                                if (isset($_GET["updatebtnfinal"])) {
                                                    query("UPDATE FELHASZNALO SET FELHASZNALONEV='$nev',SZERZO_E='$szerzo',EMAIL='$email',JELSZO='$jelszo',SZUL_DATUM=TO_DATE('$szuldatum', 'YYYY-MM-DD') WHERE FELHASZNALONEV='" . $_GET["updatebtnfinal"] . "'");
                                                } else {
                                                    query("INSERT INTO FELHASZNALO (FELHASZNALONEV, SZERZO_E, EMAIL, JELSZO, SZUL_DATUM) VALUES ('" . $nev . "', '" . $szerzo . "', '" . $email . "', '" . $jelszo . "',TO_DATE('$szuldatum', 'YYYY-MM-DD') )");
                                                }
                                            }
                                        }
                                    } else {
                                        echo "<br>";
                                        echo "<p>Üres beviteli mező!<p>";
                                    }
                                }
                                ?>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row row-cols-lg row-cols-md row-cols text-center justify-content-center px-xl">
                <div class="col my-3">
                    <div class="card border-hover-primary hover-scale">
                        <div class="card-body">
                            <div class="custyle">
                                <?php
                                table(query("SELECT * FROM FELHASZNALO ORDER BY FELHASZNALONEV"));
                                ?>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>

    <nav class="navbar navbar-expand-sm navbar-dark fixed-bottom justify-content-end">
        <a class="navbar-brand" href="#top">TOP</a>
    </nav>

    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/js/bootstrap.min.js" integrity="sha384-oesi62hOLfzrys4LxRF63OJCXdXDipiYWBnvTl9Y9/TRlw5xlKIEHpNyvvDShgf/" crossorigin="anonymous"></script>
</body>

</html>