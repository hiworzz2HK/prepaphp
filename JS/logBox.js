const logPic = document.getElementById('logPic');
const popup =document.getElementById('popup');
const connectBox = document.getElementById('connectBox');

function openLog() {
    console.log("open");
    popup.style.display="flex";
}

function closeLog() {
    console.log("close");
    popup.style.display="none";    
}

function stayOpen(event) {
    event.stopPropagation();
}

console.log("ok");
logPic.addEventListener('click', openLog);
popup.addEventListener('click', closeLog);
connectBox.addEventListener('click', stayOpen, true);

