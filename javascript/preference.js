function add_input() {
    //set a static variable
    if( typeof add_input.counter == 'undefined' ) {
        add_input.counter = 0;
    }
    add_input.counter++;
    //get the first div, which is the day and preference
    var addtl_div = document.createElement('div');
    addtl_div.setAttribute("class", "form-group");
    addtl_div.innerHTML = document.getElementById("pref").innerHTML;
    var select_control = addtl_div.getElementsByTagName("select");
    select_control[0].setAttribute("name", "weekday"+add_input.counter);
    //add the div to the document
    document.getElementById('inputs').appendChild(addtl_div);
    //get the second div which is the yes no radio button
    var addtl_div_p2 = document.createElement('div');
    addtl_div_p2.setAttribute("class", "form-group text-center");
    addtl_div_p2.innerHTML = document.getElementById("late").innerHTML;
    //select the two radio buttons
    var radio_bttns = addtl_div_p2.getElementsByTagName("input");
    //change the name of the radio buttons so they do not interfere
    radio_bttns[0].setAttribute("name", "late_shifts"+add_input.counter);
    radio_bttns[1].setAttribute("name", "late_shifts"+add_input.counter);
    //add the div to the document
    document.getElementById('inputs').appendChild(addtl_div_p2);
}