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
      <span class="navbar-text p-2 text-white">Menu</span>
      <button
        class="navbar-toggler"
        type="button"
        data-toggle="collapse"
        data-target="#collapsibleNavbar"
      >
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="collapsibleNavbar">
        <ul class="navbar-nav">
          <!-- A navigációs menü 1. opciója. -->
          <li class="nav-item">
            <a class="nav-link" href="user_list.html">Users</a>
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

    <section class="py-6 bg-light-primary">
      <div class="container">
        <div
          class="row row-cols-lg- row-cols-md-2 row-cols-1 text-center justify-content-center px-xl-6 aos-init aos-animate"
          data-aos="fade-up"
        >
          <div class="col my-3">
            <div class="card border-hover-primary hover-scale">
              <div class="card-body">
                <h4 class="font-weight-bold mb-3">Add new user:</h4>
                <div class="m-sm-4">
                  <form>
                    <div class="form-group">
                      <label>First Name</label>
                      <input
                        class="form-control form-control-lg"
                        type="text"
                        name="first_name"
                        placeholder="Enter first name"
                      />
                    </div>
                    <div class="form-group">
                      <br />
                      <label>Last Name</label>
                      <input
                        class="form-control form-control-lg"
                        type="text"
                        name="last_name"
                        placeholder="Enter last name"
                      />
                    </div>
                    <div class="form-group">
                      <br />
                      <label>Email</label>
                      <input
                        class="form-control form-control-lg"
                        type="email"
                        name="email"
                        placeholder="Enter email"
                      />
                    </div>
                    <div class="form-group">
                      <br />
                      <label>Birthday</label>
                      <input
                        class="form-control form-control-lg"
                        type="text"
                        name="bday"
                        placeholder="Birthday"
                      />
                    </div>
                    <div class="form-group">
                      <br />
                      <label>Szerzö???????</label>
                      <input
                        class="form-control form-control-lg"
                        type="text"
                        name="szerzö"
                        placeholder="?????????"
                      />
                    </div>
                    <div class="form-group">
                      <br />
                      <label>Password</label>
                      <input
                        class="form-control form-control-lg"
                        type="password"
                        name="password"
                        placeholder="Enter password"
                      />
                    </div>
                    <div class="form-group">
                      <br />
                      <label>Password Again</label>
                      <input
                        class="form-control form-control-lg"
                        type="password"
                        name="password_again"
                        placeholder="Enter password again"
                      />
                    </div>
                    <div class="text-center mt-3">
                      <br />
                      <button
                        type="submit"
                        class="btn btn-lg btn-primary"
                        id="btn_src"
                      >
                        Add user
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
                <h4 class="font-weight-bold mb-3">Users:</h4>
                <div class="custyle">

                <?php

error_reporting(E_ALL);
ini_set('display_errors', 'On');

$username = "home";                  // Use your username
$password = "asd";             // and your password
$database = "localhost/XE";   // and the connect string to connect to your database

$query = "select * from FELHASZNALO";

$c = oci_connect($username, $password, $database);
if (!$c) {
  $m = oci_error();
  trigger_error('Could not connect to database: ' . $m['message'], E_USER_ERROR);
}

$s = oci_parse($c, $query);
if (!$s) {
  $m = oci_error($c);
  trigger_error('Could not parse statement: ' . $m['message'], E_USER_ERROR);
}
$r = oci_execute($s);
if (!$r) {
  $m = oci_error($s);
  trigger_error('Could not execute statement: ' . $m['message'], E_USER_ERROR);
}

echo "<table class='table table-striped custab'>\n";
$ncols = oci_num_fields($s);
echo "<tr>\n";
for ($i = 1; $i <= $ncols; ++$i) {
  $colname = oci_field_name($s, $i);
  echo "  <th><b>" . htmlspecialchars($colname, ENT_QUOTES | ENT_SUBSTITUTE) . "</b></th>\n";
}
echo "</tr>\n";

while (($row = oci_fetch_array($s, OCI_ASSOC + OCI_RETURN_NULLS)) != false) {
  echo "<tr>\n";
  foreach ($row as $item) {
    echo "<td>";
    echo $item !== null ? htmlspecialchars($item, ENT_QUOTES | ENT_SUBSTITUTE) : "&nbsp;";
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
