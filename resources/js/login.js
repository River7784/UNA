$(document).ready(function(){

    var typewriter = document.querySelector( ".login_welcome" )    
    var code = typewriter.innerHTML;   
    var i = 0;   
    typewriter.innerHTML = "";   
    typeWriting();
       
    function typeWriting() {   
    if (i <= code.length) {    
    typewriter.innerHTML = code.slice(0, i++) + '|';   
    setTimeout(typeWriting,150);    
    }  
    
    	}  
    });