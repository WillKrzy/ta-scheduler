<?php
include("../database/db.php");

// Prof calculation
$dataProfs = get_professors();
$totalProf = 0;


$dataPointsProfessors = array();
if ($dataProfs->num_rows > 0) {
    // output data of each row
    while ($row = $dataProfs->fetch_assoc()) {
        //$tmp = array("label" => $row["professor"], "y" => $row["Percent"]);
        $dataPointsProfessors[] = array("label" => $row["professor"], "y" => $row["Percent"]);
    }
} else {
    echo "0 results";
}


?>
<!DOCTYPE HTML>
<html>

<head>
    <script>
        window.onload = function() {


            var chart = new CanvasJS.Chart("chartContainer", {
                animationEnabled: true,
                title: {
                    text: "Professor Share of TA Hour Survey Responses"
                },
                subtitles: [{
                    text: "All Time"
                }],
                data: [{
                    type: "pie",
                    yValueFormatString: "#,##0.00\"%\"",
                    indexLabel: "{label} ({y})",
                    dataPoints: <?php echo json_encode($dataPointsProfessors,  JSON_NUMERIC_CHECK); ?>
                }]
            });
            chart.render();

        }
    </script>
</head>

<body>
    <div id="chartContainer" style="height: 200px; width: 100%;"></div>
    <script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
</body>

</html>