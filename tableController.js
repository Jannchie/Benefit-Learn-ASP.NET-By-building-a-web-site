
function addRow() {
    var table = document.getElementById("table");
    var tr = document.createElement("tr");
    var array = [1, 3, 4, 2, 5];
    for (i = 0; i < 5; i++) {
        var td = document.createElement("td");
        var txt = document.createTextNode(array[i]);
        td.appendChild(txt);
        tr.appendChild(td);
        table.appendChild(tr);
    }
}