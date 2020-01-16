function moveFSPage(){
	var form = document.createElement("form");
	var parm = new Array();
    var input = new Array();

    form.action = "ForSaleController";
    form.method = "post";
    parm.push( ['type', "FsPageRe"] );


    for (var i = 0; i < parm.length; i++) {
        input[i] = document.createElement("input");
        input[i].setAttribute("type", "hidden");
        input[i].setAttribute('name', parm[i][0]);
        input[i].setAttribute("value", parm[i][1]);
        form.appendChild(input[i]);
    }
    document.body.appendChild(form);
    form.submit();
}