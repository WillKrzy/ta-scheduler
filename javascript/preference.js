var counter = 0;
function add_input() {
    counter++;
    //get the first div, which is the day and preference
    var addtl_div = document.createElement('div');
    addtl_div.setAttribute("class", "form-group");
    addtl_div.innerHTML = document.getElementById("pref").innerHTML;
    var select_control = addtl_div.getElementsByTagName("select");
    select_control[0].setAttribute("name", "weekday"+counter);
    //add the div to the document
    document.getElementById('inputs').appendChild(addtl_div);
    //get the second div which is the yes no radio button
    var addtl_div_p2 = document.createElement('div');
    addtl_div_p2.setAttribute("class", "form-group text-center");
    addtl_div_p2.innerHTML = document.getElementById("late").innerHTML;
    //select the two radio buttons
    var radio_bttns = addtl_div_p2.getElementsByTagName("input");
    //change the name of the radio buttons so they do not interfere
    radio_bttns[0].setAttribute("name", "late_shifts"+counter);
    radio_bttns[1].setAttribute("name", "late_shifts"+counter);
    //add the div to the document
    document.getElementById('inputs').appendChild(addtl_div_p2);
}

function remove_input() {
    if(counter > 0) {
        counter--;
        var child_nodes = document.getElementById("inputs");
        child_nodes.removeChild(child_nodes.lastChild);
        child_nodes.removeChild(child_nodes.lastChild);
    }
}

//run on load
if (window.XMLHttpRequest) {
    // code for IE7+, Firefox, Chrome, Opera, Safari
        xmlhttp = new XMLHttpRequest();
    } else {
        // code for IE6, IE5
        xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
    }
    xmlhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
            document.getElementById("preferences").innerHTML = this.responseText;
        }
    };  
    xmlhttp.open("GET","php/personal_pref.php",true);
    xmlhttp.send();
