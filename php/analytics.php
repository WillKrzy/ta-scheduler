<?php
include("../database/db.php");


$subtitle = "All Time";
$dataCourses;
if(isset($_GET["to"]) && isset($_GET["from"])) {
    $subtitle = "From ". $_GET["from"]. " to ".$_GET["to"];
    $dataCourses = get_coursesRange($_GET["from"], $_GET["to"]);
} else {
    $dataCourses = get_courses();
}

// Course calculation
$dataCourses = get_courses();
$dataPointsCourses  = array();

if ($dataCourses->num_rows > 0) {
    // output data of each row
    while ($row = $dataCourses->fetch_assoc()) {
        $dataPointsCourses[] = array("label" => $row["code"], "y" => $row["Percent"]);
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
                    text: "Class Share of TA Hour Survey Responses"
                },
                subtitles: [{
                    text : "<?php echo $subtitle ?>"
                }],
                data: [{
                    type: "pie",
                    yValueFormatString: "#,##0.00\"%\"",
                    indexLabel: "{label} ({y})",
                    dataPoints: <?php echo json_encode($dataPointsCourses,  JSON_NUMERIC_CHECK); ?>
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