<?php
    include("../database/db.php");
    $data = manager_prefs();

    while($resp = $data->fetch_assoc()) {
        echo "<tr>";
        echo "<td>";
        echo $resp['name'];
        echo "</td>";
        echo "<td>";
        echo $resp['username'];
        echo "</td>";
        echo "<td>";
        echo $resp['weekday'];
        echo "</td>";
        echo "<td>";
        echoColumn($resp['start'], $resp['end']);
        echo "</td>";
        echo "<td>";
        if($resp['late_shifts'] == 1) {
            echo "Yes";
        } else {
            echo "No";
        }
        echo "</td>";
        echo "</tr>";
    }


    function echoColumn($st, $sd) {
        if ($st == "00:00:00") {
            echo "Unavailable";
        } else {
            $date_s = new DateTime($st);
            $date_e = new DateTime($sd);
            echo $date_s->format('h:i:s A') . " -" . $date_e->format('h:i:s A');
        }
    }
?>