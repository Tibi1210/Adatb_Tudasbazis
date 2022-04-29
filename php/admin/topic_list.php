<?php
include "../functions/functions.php";
if (isset($_GET["cim"]) && isset($_GET["nev"]) && isset($_GET["altemakor"])) {
    $cim = $_GET["cim"];
    $nev = $_GET["nev"];
    $altemakor = $_GET["altemakor"];
    $empty = false;
} else {
    $cim = "";
    $nev = "";
    $altemakor = "";
    $empty = true;
}
if (isset($_GET["deletebtn"])) {
    query("DELETE FROM TEMAKOR WHERE CIM='" . $_GET["deletebtn"] . "'");
}

$vaneupdate = false;
$vane = false;
if (isset($_GET["updatebtn"])) {
    $update = query("SELECT * FROM TEMAKOR WHERE cim='" . $_GET["updatebtn"] . "'");
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
    <title>Témakörök</title>
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
                    <a class="nav-link" href="user_list.php">Felhasználók</a>
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
                    <a class="nav-link text-white" href="topic_list.php">Témakörök</a>
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
                            <h4 class="font-weight-bold mb-3">Új témakör:</h4>
                            <div class="m-sm-4">
                                <form>
                                    <div class="form-group">
                                        <label>Cím</label>
                                        <?php
                                        if (isset($_GET["updatebtn"])) {
                                            echo "<input class='form-control form-control-lg' type='text' name='cim' value='" . $updaterow["CIM"] . "' placeholder='Cím' />";
                                        } else {
                                            echo "<input class='form-control form-control-lg' type='text' name='cim' placeholder='Cím' />";
                                        }
                                        ?>
                                    </div>
                                    <div class="form-group">
                                        <br />
                                        <label>Név</label>
                                        <?php
                                        if (isset($_GET["updatebtn"])) {
                                            echo "<input class='form-control form-control-lg' type='text' name='nev' value='" . $updaterow["NEV"] . "' placeholder='Név' />";
                                        } else {
                                            echo "<input class='form-control form-control-lg' type='text' name='nev' placeholder='Név' />";
                                        }
                                        ?>
                                    </div>
                                    <div class="form-group">
                                        <br />
                                        <label>Altémakör</label>
                                        <?php
                                        if (isset($_GET["updatebtn"])) {
                                            echo "<input class='form-control form-control-lg' type='text' name='altemakor' value='" . $updaterow["ALTEMAKOR"] . "' placeholder='Altémakör' />";
                                        } else {
                                            echo "<input class='form-control form-control-lg' type='text' name='altemakor' placeholder='Altémakör' />";
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
                                    if ($cim != "" && $nev != ""  && $altemakor != "") {
                                        $s = query("SELECT CIM FROM TEMAKOR WHERE cim='$cim'");
                                        while (($row = oci_fetch_array($s, OCI_ASSOC + OCI_RETURN_NULLS)) != false) {
                                            foreach ($row as $item) {
                                                if (!isset($_GET["updatebtnfinal"])) {
                                                    $vane = true;
                                                } else {
                                                    if ($cim != $_GET["updatebtnfinal"]) {
                                                        $s = query("SELECT CIM FROM TEMAKOR WHERE cim='" . $_GET["updatebtnfinal"] . "'");
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
                                            echo "<p>Már létezik ilyen témakör!<p>";
                                        } else {
                                            if (isset($_GET["updatebtnfinal"])) {
                                                query("UPDATE TEMAKOR SET CIM='$cim',NEV='$nev',ALTEMAKOR='$altemakor' WHERE CIM='" . $_GET["updatebtnfinal"] . "'");
                                            } else {
                                                query("INSERT INTO TEMAKOR (CIM, NEV, ALTEMAKOR) VALUES ('" . $cim . "', '" . $nev . "','" . $altemakor . "')");
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
                                table(query("SELECT * FROM TEMAKOR ORDER BY CIM DESC"));
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