<?php
include "../functions/functions.php";

if (isset($_GET["src_GET"])) {
  $search = $_GET["src_GET"];
} else {
  $search = "";
}


?>

<!DOCTYPE html>
<html lang="hu-HU">

<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <?php
  $s = query("SELECT cim FROM CIKK WHERE cim='$search'");
  echo " <title>";
  if ($search != "" && oci_fetch_array($s, OCI_ASSOC + OCI_RETURN_NULLS) != false) {
    echo $search;
  } else {
    echo "Mindentudó";
  }
  echo "</title>";
  ?>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/css/bootstrap.min.css" integrity="sha384-r4NyP46KrjDleawBgD5tp8Y7UzmLA05oM1iAEQ17CSuDqnUK2+k9luXQOfXJCJ4I" crossorigin="anonymous" />
  <link rel="stylesheet" href="../../css/css.css" />
</head>

<body>
  <!-- A top navigációs menü. -->
  <nav class="navbar navbar-expand-sm navbar-dark sticky-top">
      <div class="collapse navbar-collapse" id="collapsibleNavbar">
          <ul class="navbar-nav">
              <li class="nav-item">
                  <a class="nav-link " href="index.php">Home</a>
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
                  <a class="nav-link" href="topic_list.php">Témakörök</a>
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
    <br />
    <div class="row justify-content-center">
      <div class="col-12 col-md-10 col-lg-8">

        <form class="card card-sm" action="article.php" method="get">
          <div class="card-body row no-gutters align-items-center">
            <div class="col-auto">
              <i class="fas fa-search h4 text-body"></i>
            </div>
            <div class="col">
              <?php
              echo "<input class='form-control form-control-lg form-control-borderless' type='search' value='$search' placeholder='Search...' id='src_bar' name='src_GET' />"
              ?>
            </div>
            <div class="col-auto">
              <button class="btn btn-lg btn-success" id="btn_src" type="submit">
                Search
              </button>
            </div>
          </div>
        </form>

      </div>
    </div>
    <br />
  </div>

  <div class="py-6 bg-light-primary">
    <div class="container">
      <div class="row row-cols-lg row-cols-md row-cols text-center justify-content-center px-xl">
        <div class="col my-3">
          <div class="card border-hover-primary hover-scale">
            <div class="card-body">
              <div class="custyle">

                <!--Cím-->
                <?php
                $s = query("SELECT cim FROM CIKK WHERE cim='$search'");
                echo " <div class='font-weight-bold topic-title'>";
                while (($row = oci_fetch_array($s, OCI_ASSOC + OCI_RETURN_NULLS)) != false) {
                  foreach ($row as $item) {
                    echo $item !== null ? $item : "&nbsp;";
                  }
                }
                echo "</div>";
                ?>

                <div class='line-horizontal'></div>
                <div class='topic-body'>

                  <!--Tartalom-->
                  <?php
                  $s = query("SELECT tartalom FROM CIKK WHERE cim='$search'");
                  $row = oci_fetch_array($s, OCI_ASSOC + OCI_RETURN_NULLS);

                  if ($search != "" && $row) {
                    foreach ($row as $item) {
                      echo $item !== null ? $item : "&nbsp;";
                    }
                  } else {
                    echo "<p>ERROR: nincs ilyen cikk az adatbázisban :(</p>";
                  }
                  ?>

                </div>
                <div class="topic-logobox">
                  <img src="../../src/small.png" class="topic-logo" />
                </div>
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