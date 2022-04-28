<?php
include "../functions/functions.php";
if (isset($_GET["cim"]) && isset($_GET["hibajelentes"])&& isset($_GET["hibanev"])) {
    $cim = $_GET["cim"];
    $hibajelentes= $_GET["hibajelentes"];
    $hibanev = $_GET["hibanev"];
    $empty = false;
} else {
    $cim = "";
    $hibajelentes= "";
    $hibanev = "";
    $empty = true;
}
if (isset($_GET["deletebtn"])) {
    query("DELETE FROM HIBA_BEJELENTES WHERE CIM='" . $_GET["deletebtn"] . "'");
  }

$vaneupdate = false;
$vane = false;
if (isset($_GET["updatebtn"])) {
    $update = query("SELECT * FROM HIBA_BEJELENTES WHERE cim='" . $_GET["updatebtn"] . "'");
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
    <title>Hibák</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/css/bootstrap.min.css" integrity="sha384-r4NyP46KrjDleawBgD5tp8Y7UzmLA05oM1iAEQ17CSuDqnUK2+k9luXQOfXJCJ4I" crossorigin="anonymous" />
    <link rel="stylesheet" href="../../css/css.css" />
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
                <li class="nav-item">
                    <a class="nav-link" href="article_list.php">Cikkek</a>
                </li>
                <!-- A navigációs menü 2. opciója. -->
                <li class="nav-item">
                    <a class="nav-link text-white" href="error_list.php">Hibák</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="logout.php">Logout</a>
                </li>
                <!-- A navigációs menü 3. opciója. -->

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
                            <h4 class="font-weight-bold mb-3">Új hiba:</h4>
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
                                        <label>Hibajelentés</label>
                                        <?php
                                        if (isset($_GET["updatebtn"])) {
                                            echo "<input class='form-control form-control-lg' type='text' name='hibajelentes' value='" . $updaterow["HIBAJELENTES"] . "' placeholder='Hibajelentés' />";
                                        } else {
                                            echo "<input class='form-control form-control-lg' type='text' name='hibajelentes' placeholder='Hibajelentés' />";
                                        }
                                        ?>
                                    </div>
                                    <div class="form-group">
                                        <br />
                                        <label>Hibanév</label>
                                        <?php
                                        if (isset($_GET["updatebtn"])) {
                                            echo "<input class='form-control form-control-lg' type='text' name='hibanev' value='" . $updaterow["HIBANEV"] . "' placeholder='Hibanév' />";
                                        } else {
                                            echo "<input class='form-control form-control-lg' type='text' name='hibanev' placeholder='Hibanév' />";
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
                                    if ($cim != ""  && $hibajelentes != "" && $hibanev != "") {
                                        $s = query("SELECT CIM FROM HIBA_BEJELENTES WHERE cim='$cim'");
                                        while (($row = oci_fetch_array($s, OCI_ASSOC + OCI_RETURN_NULLS)) != false) {
                                            foreach ($row as $item) {
                                                if (!isset($_GET["updatebtnfinal"])) {
                                                    $vane = true;
                                                } else {
                                                    if ($cim != $_GET["updatebtnfinal"]) {
                                                        $s = query("SELECT CIM FROM HIBA_BEJELENTES WHERE cim='" . $_GET["updatebtnfinal"] . "'");
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
                                            echo "<p>Már létezik ilyen hiba!<p>";
                                        } else {
                                            if (isset($_GET["updatebtnfinal"])) {
                                                query("UPDATE HIBA_BEJELENTES SET CIM='$cim',HIBAJELENTES='$hibajelentes',HIBANEV='$hibanev',FELHASZNALONEV='". $_SESSION["felhasznalonev"] ."' WHERE CIM='" . $_GET["updatebtnfinal"] . "'");
                                            } else {
                                                query("INSERT INTO HIBA_BEJELENTES (CIM, HIBAJELENTES, HIBANEV, FELHASZNALONEV) VALUES ('" . $cim . "', '" . $hibajelentes . "', '" . $hibanev . "', '". $_SESSION["felhasznalonev"] ."')");
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

    </div>
    </div>

    <nav class="navbar navbar-expand-sm navbar-dark fixed-bottom justify-content-end">
        <a class="navbar-brand" href="#top">TOP</a>
    </nav>

    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/js/bootstrap.min.js" integrity="sha384-oesi62hOLfzrys4LxRF63OJCXdXDipiYWBnvTl9Y9/TRlw5xlKIEHpNyvvDShgf/" crossorigin="anonymous"></script>
</body>

</html>