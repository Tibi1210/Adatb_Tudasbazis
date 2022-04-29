<?php
include "../functions/functions.php";
?>

<!DOCTYPE html>
<html lang="hu-HU">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Nemtrivialis</title>
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
                    <a class="nav-link text-white" href="modify_list.php">Módosítás</a>
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
    <div class="container">
        <div class="row row-cols-lg row-cols-md row-cols text-center justify-content-center px-xl">
            <div class="col my-3">
                <div class="card border-hover-primary hover-scale">
                    <div class="card-body">
                        <div class="custyle">
                            <h1>1. Módosítások száma</h1>
                            <?php
                            lekerdezes_table(query("SELECT CIM,Count(CIM) AS DARAB FROM MODOSITAS GROUP BY CIM ORDER BY CIM"));
                            ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="container">
        <div class="row row-cols-lg row-cols-md row-cols text-center justify-content-center px-xl">
            <div class="col my-3">
                <div class="card border-hover-primary hover-scale">
                    <div class="card-body">
                        <div class="custyle">
                            <h1>2. Cikkek száma</h1>
                            <?php
                            lekerdezes_table(query("SELECT SZERZO,Count(CIM) AS DARAB FROM CIKK GROUP BY SZERZO ORDER BY SZERZO"));
                            ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="container">
        <div class="row row-cols-lg row-cols-md row-cols text-center justify-content-center px-xl">
            <div class="col my-3">
                <div class="card border-hover-primary hover-scale">
                    <div class="card-body">
                        <div class="custyle">
                            <h1>3. Szerzök témái</h1>
                            <?php
                            lekerdezes_table(query("SELECT CIKK.SZERZO,TEMAKOR.NEV AS TEMAKOR,CIKK.CIM FROM CIKK,TEMAKOR WHERE CIKK.CIM=TEMAKOR.CIM ORDER BY CIKK.SZERZO"));
                            ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="container">
        <div class="row row-cols-lg row-cols-md row-cols text-center justify-content-center px-xl">
            <div class="col my-3">
                <div class="card border-hover-primary hover-scale">
                    <div class="card-body">
                        <div class="custyle">
                            <h1>4. Cikkek hibái</h1>
                            <?php
                            lekerdezes_table(query("SELECT CIKK.CIM,HIBA_BEJELENTES.HIBANEV AS HIBA FROM CIKK,HIBA_BEJELENTES WHERE CIKK.CIM=HIBA_BEJELENTES.CIM ORDER BY CIKK.CIM"));
                            ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="container">
        <div class="row row-cols-lg row-cols-md row-cols text-center justify-content-center px-xl">
            <div class="col my-3">
                <div class="card border-hover-primary hover-scale">
                    <div class="card-body">
                        <div class="custyle">
                            <h1>5. Cikkek hibának száma</h1>
                            <?php
                            lekerdezes_table(query("SELECT CIKK.CIM,COUNT(HIBA_BEJELENTES.HIBANEV) AS HIBA FROM CIKK,HIBA_BEJELENTES WHERE CIKK.CIM=HIBA_BEJELENTES.CIM GROUP BY CIKK.CIM ORDER BY CIKK.CIM"));
                            ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="container">
        <div class="row row-cols-lg row-cols-md row-cols text-center justify-content-center px-xl">
            <div class="col my-3">
                <div class="card border-hover-primary hover-scale">
                    <div class="card-body">
                        <div class="custyle">
                            <h1>6. Tudományos intézetek</h1>
                            <?php
                            lekerdezes_table(query("SELECT INTEZET,COUNT(INTEZET) AS DARAB FROM ADMIN GROUP BY INTEZET ORDER BY INTEZET"));
                            ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="container">
        <div class="row row-cols-lg row-cols-md row-cols text-center justify-content-center px-xl">
            <div class="col my-3">
                <div class="card border-hover-primary hover-scale">
                    <div class="card-body">
                        <div class="custyle">
                            <h1>6. Szerzök</h1>
                            <?php
                            lekerdezes_table(query("SELECT COUNT(SZERZO_E) AS SZERZOK FROM FELHASZNALO WHERE SZERZO_E='y'"));
                            ?>
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