function load_next_shift() {
    if (window.XMLHttpRequest) {
    // code for IE7+, Firefox, Chrome, Opera, Safari
        xmlhttp = new XMLHttpRequest();
    } else {
        // code for IE6, IE5
        xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
    }
    xmlhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
            document.getElementById("next_shift").innerHTML = this.responseText;
        }
    };  
    xmlhttp.open("GET","php/next_shift.php",true);
    xmlhttp.send();
}

function load_incoming_reqs() {
    if (window.XMLHttpRequest) {
    // code for IE7+, Firefox, Chrome, Opera, Safari
        xmlhttp = new XMLHttpRequest();
    } else {
        // code for IE6, IE5
        xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
    }
    xmlhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
            document.getElementById("incoming").innerHTML = this.responseText;
        }
    };  
    xmlhttp.open("GET","php/incoming_pickup_req.php",true);
    xmlhttp.send();
}


function load_outgoing_req() {
    if (window.XMLHttpRequest) {
    // code for IE7+, Firefox, Chrome, Opera, Safari
        xmlhttp = new XMLHttpRequest();
    } else {
        // code for IE6, IE5
        xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
    }
    xmlhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
            document.getElementById("outgoing").innerHTML = this.responseText;
        }
    };  
    xmlhttp.open("GET","php/outgoing_pickup_req.php",true);
    xmlhttp.send();
}

function ask_how_busy() {
    var ques = prompt("How many questions are on the board?");
    if (ques != null && ques != "") {
        while(isNaN(ques)) {
            ques = prompt("How many questions are on the board? Please enter a number");
        }
        if (window.XMLHttpRequest) {
        // code for IE7+, Firefox, Chrome, Opera, Safari
            xmlhttp = new XMLHttpRequest();
        } else {
            // code for IE6, IE5
            xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
        }    
        xmlhttp.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200) {
                console.log(this.responseText);
            }
        };  
        console.log(ques);
        xmlhttp.open("GET","php/question.php?questions=" + ques, true);
        xmlhttp.send();;
    }
}

load_outgoing_req();
load_incoming_reqs();
load_next_shift();
ask_how_busy();
setInterval(ask_how_busy, 30*60*1000);

