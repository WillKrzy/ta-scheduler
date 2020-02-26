<?php


include("../database/db.php");

if(isset($_GET["from"])) {
    $from = $_GET["from"];
    $to = $_GET["to"];
    $data = survey_resp_date($from, $to);
} else {
    $data = survey_resp_today();
}

while ($resp = $data->fetch_assoc()) {
    echo "<tr>";
    echo "<td>";
    echo $resp['code'];
    echo "</td>";
    echo "<td>";
    echo $resp['professor'];
    echo "</td>";
    echo "<td>";
    echo $resp['text'];
    echo "</td>";
    echo "<td>";
    echo $resp['datetime'];
    echo "</td>";
    echo "</tr>";
}

$data->close();


?>