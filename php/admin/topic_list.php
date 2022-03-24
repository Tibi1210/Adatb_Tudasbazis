<?php
include "../functions/query.php";
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
        <div class="row row-cols-lg- row-cols-md-2 row-cols-1 text-center justify-content-center px-xl-6 aos-init aos-animate" data-aos="fade-up">
            <div class="col my-3">
                <div class="card border-hover-primary hover-scale">
                    <div class="card-body">
                        <h4 class="font-weight-bold mb-3">Új témakör:</h4>
                        <div class="m-sm-4">
                            <form>
                                <div class="form-group">
                                    <label>Cím</label>
                                    <input class="form-control form-control-lg" type="text" name="cim" placeholder="Cím" />
                                </div>
                                <div class="form-group">
                                    <br />
                                    <label>Név</label>
                                    <input class="form-control form-control-lg" type="text" name="nev" placeholder="Név" />
                                </div>
                                <div class="form-group">
                                    <br />
                                    <label>Altémakör</label>
                                    <input class="form-control form-control-lg" type="text" name="altemakor" placeholder="Altémakör" />
                                </div>
                                <div class="form-group">
                                    <br />
                                    <label>Tartalom</label>
                                    <input class="form-control form-control-lg" type="text" name="tartalom" placeholder="Tartalom" />
                                </div>
                                <div class="text-center mt-3">
                                    <br />
                                    <button type="submit" class="btn btn-lg btn-primary" id="btn_src">
                                        Létrehozás
                                    </button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col my-3">
                <div class="card border-hover-primary hover-scale">
                    <div class="card-body">
                        <h4 class="font-weight-bold mb-3">Témakörök:</h4>
                        <div class="custyle">
                            <?php

                            $s = query("select * from TEMAKOR");

                            echo "<table class='table table-striped custab'>\n";
                            $ncols = oci_num_fields($s);
                            echo "<tr>\n";
                            for ($i = 1; $i <= $ncols; ++$i) {
                                $colname = oci_field_name($s, $i);
                                echo "  <th><b>" .$colname . "</b></th>\n";
                            }
                            echo "</tr>\n";

                            while (($row = oci_fetch_array($s, OCI_ASSOC + OCI_RETURN_NULLS)) != false) {
                                echo "<tr>\n";
                                foreach ($row as $item) {
                                    echo "<td>";
                                    echo $item !== null ? $item : "&nbsp;";
                                    echo "</td>\n";
                                }
                                echo "</tr>\n";
                            }
                            echo "</table>\n";
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