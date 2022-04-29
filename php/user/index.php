<?php
include "../functions/functions.php";

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
    <div class="collapse navbar-collapse" id="collapsibleNavbar">
        <ul class="navbar-nav">
            <!-- A navigációs menü 1. opciója. -->
            <li class="nav-item">
                <a class="nav-link text-white" href="index.php">Home</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="article_list.php">Cikkek</a>
            </li>
            <!-- A navigációs menü 2. opciója. -->
            <!-- A navigációs menü 3. opciója. -->
            <li class="nav-item">
                <a class="nav-link" href="error_list.php">Hibák</a>
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
                        <input
                            class="form-control form-control-lg form-control-borderless"
                            type="search"
                            placeholder="Search..."
                            id="src_bar"
                            name="src_GET"
                        />
                    </div>
                    <div class="col-auto">
                        <button
                            class="btn btn-lg btn-success"
                            id="btn_src"
                            type="submit"
                        >
                            Search
                        </button>
                    </div>
                </div>
            </form>
        </div>
    </div>
    <br />
</div>

<section class="py-6 bg-light-primary">
    <div class="container">
        <div
            class="row row-cols-lg-3 row-cols-md-2 row-cols-1 text-center justify-content-center px-xl-6 aos-init aos-animate"
            data-aos="fade-up"
        >
            <!-- Cards -->
            <?php
            $s = query("SELECT * FROM CIKK ORDER BY CIM");
            while (($row = oci_fetch_array($s, OCI_ASSOC + OCI_RETURN_NULLS)) != false) {
                foreach ($row as $item) {
                    $cim = $item;
                    break;
                }
                echo "<div class='col my-3'>";
                echo "<a class='card border-hover-primary hover-scale' href='article.php?src_GET=$cim'>\n";
                echo "<div class='card-body'>\n";
                echo "<div class='text-primary mb-5'>\n";
                echo "<img src='../../src/logo.png' width='200' height='90' />\n";
                echo "</div>\n";

                echo "<div class='font-weight-bold topic-title mb-3'>\n";
                echo "<p>$cim</p>";
                echo "</div>\n";

                echo "</div>\n";
                echo "</a>\n";
                echo "</div>\n";
            }
            ?>
            <!-- Cards -->
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

