<?php
    include("../database/db.php");
    session_start();

    if(isset($_GET["delete"])) {
        $request = delete_pref($_GET["delete"]);
        echo $request;
        header( "Location: ../../../../ta_preferences.html");
    } else {
        display_table();
    }

    function display_table() {
        $data = personal_prefs();
    
        //make table
        echo "<table class=\"table table-striped table-bordered justify-content-center\">";
        echo "<thead>";
        echo "<tr>";
        echo "<th>weekday</th>";
        echo "<th>times</th>";
        echo "<th>late shifts</th>";
        echo "<th></th>";
        echo "</thead>";
        echo "</tr>"; 
        echo "<tbody>";
    
        while($resp = $data->fetch_assoc()) {
            echo "<tr>";;
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
            echo "<td>";
            $button = "<form action=\"/php/personal_pref.php?delete=".$resp['id'];
            $button.="\" method=\"post\"> 
            <input type=\"submit\" class=\"btn btn-danger\"name=\"pref\" value=\"Delete";
            $button .= "\"/>  </form>"; 
            echo $button;
            echo "</td";
            echo "</tr>";
        }
        echo "</tbody>";
        echo "</table>";
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