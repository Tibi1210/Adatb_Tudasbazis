<?php

session_start(["name" => "user"]);

if (!isset($_SESSION["felhasznalonev"])) {
    header("Location: index.php");
}

session_unset();
session_destroy();

header("Location: ../guest/index.php");
