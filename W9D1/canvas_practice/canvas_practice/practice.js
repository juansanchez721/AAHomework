document.addEventListener("DOMContentLoaded", function(){
const canv = document.getElementById("mycanvas");
const ctx = canv.getContext('2d');

ctx.fillStyle = 'red';
void ctx.fillRect(20, 15, 500, 500);


void ctx.beginPath();
ctx.arc(250, 250, 50, 0, 2 * Math.PI);
ctx.stroke();
ctx.fillStyle= 'blue';
ctx.fill();
});
