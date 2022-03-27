<?php
function query($asd)
{
  $username = "home";             // Use your username
  $password = "asd";             // and your password
  $database = "localhost/XE";   // and the connect string to connect to your database

  $c = oci_connect($username, $password, $database);
  if (!$c) {
    $m = oci_error();
    trigger_error('Could not connect to database: ' . $m['message'], E_USER_ERROR);
  }

  $s = oci_parse($c, $asd);
  if (!$s) {
    $m = oci_error($c);
    trigger_error('Could not parse statement: ' . $m['message'], E_USER_ERROR);
  }

  $r = oci_execute($s);
  if (!$r) {
    $m = oci_error($s);
    trigger_error('Could not execute statement: ' . $m['message'], E_USER_ERROR);
  }
  return $s;
}

function table($s)
{
  echo "<table class='table table-striped custab'>\n";
  $ncols = oci_num_fields($s);
  echo "<tr>\n";
  for ($i = 1; $i <= $ncols; ++$i) {
    $colname = oci_field_name($s, $i);
    echo "  <th><b>" . $colname . "</b></th>\n";
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
}
