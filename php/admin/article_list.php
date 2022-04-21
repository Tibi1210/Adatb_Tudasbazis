<?php
include "../functions/functions.php";
if (isset($_GET["cim"]) && isset($_GET["tartalom"])) {
  $cim = $_GET["cim"];
  $tartalom = $_GET["tartalom"];
  $empty = false;
} else {
  $cim = "";
  $tartalom = "";
  $empty = true;
}
if (isset($_GET["deletebtn"])) {
  query("DELETE FROM CIKK WHERE CIM='" . $_GET["deletebtn"] . "'");
}


$vaneupdate = false;
$vane = false;
if (isset($_GET["updatebtn"])) {
  $update = query("SELECT CIM,TARTALOM FROM CIKK WHERE cim='" . $_GET["updatebtn"] . "'");
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
  <title>Cikkek</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/css/bootstrap.min.css" integrity="sha384-r4NyP46KrjDleawBgD5tp8Y7UzmLA05oM1iAEQ17CSuDqnUK2+k9luXQOfXJCJ4I" crossorigin="anonymous" />
  <link rel="stylesheet" href="../../css/css.css" />
</head>

<body>
  <!-- A top navigációs menü. -->
  <nav class="navbar navbar-expand-sm navbar-dark sticky-top">
    <span class="navbar-text p-2 text-white">Menü</span>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="collapsibleNavbar">
      <ul class="navbar-nav">
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
          <a class="nav-link" href="topic_list.php">Témakörök</a>
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
      <div class="row row-cols-lg- row-cols-md-2 row-cols-1 text-center justify-content-center px-xl-6">
        <div class="col my-3">
          <div class="card border-hover-primary hover-scale">
            <div class="card-body">
              <h4 class="font-weight-bold mb-3">Új cikk:</h4>
              <div class="m-sm-4">
                <form action="article_list.php" method="get">
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
                    <label>Tartalom</label>
                    <?php
                    if (isset($_GET["updatebtn"])) {
                      echo "<textarea class='form-control form-control-lg' maxlength='300' name='tartalom' placeholder='Tartalom'>" . $updaterow["TARTALOM"] . "</textarea>";
                    } else {
                      echo "<textarea class='form-control form-control-lg' maxlength='300' name='tartalom' placeholder='Tartalom'></textarea>";
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
                  if ($cim != "" && $tartalom != "") {
                    $s = query("SELECT CIM FROM CIKK WHERE cim='$cim'");
                    while (($row = oci_fetch_array($s, OCI_ASSOC + OCI_RETURN_NULLS)) != false) {
                      foreach ($row as $item) {
                        if(!isset($_GET["updatebtnfinal"])){
                          $vane = true;
                        }else{
                          $s = query("SELECT CIM FROM CIKK WHERE cim='".$_GET["updatebtnfinal"]."'");
                          $vane=false;
                          while (($row = oci_fetch_array($s, OCI_ASSOC + OCI_RETURN_NULLS)) != false) {
                            foreach ($row as $item) {
                              $vane = true;
                            }
                          }
                        }
                      }
                    }
                    if ($vane) {
                      echo "<br>";
                      echo "<p>Már létezik ilyen cikk!<p>";
                    } else {
                      if(isset($_GET["updatebtnfinal"])){
                        query("UPDATE CIKK SET CIM='$cim',TARTALOM='$tartalom' WHERE CIM='".$_GET["updatebtnfinal"]."'");
                      }else{
                        query("INSERT INTO CIKK (CIM, TARTALOM, LETREHOZAS_DATUM, SZERZO) VALUES ('" . $cim . "', '" . (string) $tartalom . "', TO_DATE('" . date("Y") . "-" . date("m") . "-" . date("d") . " " . date("H:i:s") . "', 'YYYY-MM-DD HH24:MI:SS'), 'marci79')");
                      }
                    }
                  } else {
                    echo "<br>";
                    echo "<p>Üres beviteli mező!<p>";
                  }
                } else {
                  echo "<br>";
                  echo "<p>Üres beviteli mező!<p>";
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
                table(query("SELECT * FROM CIKK ORDER BY LETREHOZAS_DATUM DESC"))
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