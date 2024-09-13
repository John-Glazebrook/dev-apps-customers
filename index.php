<?php
$servername = "localhost";
$username = "root";
$password = "";

$conn = new mysqli($servername, $username, $password, "dev-apps-customers");
if ($conn->connect_error) {
    die("DB connection error");
}
$db_connection = "OK";

$lat = "50.262794";
$lon = "-5.100783";
$sql = "

SELECT 
    id,
    first,
    last,
    email,
    age,
    post_code,
    lat AS customer_lat,
    lon AS customer_lon,
    6371 * 2 * ASIN(SQRT(
        POWER(SIN(({$lat} - lat) * pi()/180 / 2), 2) +
        COS(lat * pi()/180) * COS({$lat} * pi()/180) *
        POWER(SIN(({$lon} - lon) * pi()/180 / 2), 2)
    )) AS distance_km
FROM 
    customers
ORDER BY 
    distance_km;
       
";
$result = $conn->query($sql);

?>

<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
  </head>
  <body>
  <div class="container">
    <h1>Hello, world!</h1>
    <p>
        Database connection: <?= $db_connection ?>
    </p>

    <h1>Customers ordered by distance from Truro College</h1>

    <table class="table table-success table-striped-columns">
    <thead>
        <tr>
        <th scope="col">First</th>
        <th scope="col">Last</th>
        <th scope="col">Email</th>
        <th scope="col">KM</th>
        </tr>
    </thead>
    <tbody>

<?php
    if ($result->num_rows > 0):
        // output data of each row
        while($row = $result->fetch_assoc()):
?>
        <tr>
        <td><?= $row["first"] ?></td>
        <td><?= $row["last"] ?></td>
        <td><?= $row["email"] ?></td>
        <td><?= round($row["distance_km"], 1) ?> km</td>
        </tr>

<?php
        endwhile;
    endif;
?>
        </table>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
  </body>
</html>

<?php

$conn->close();

?>