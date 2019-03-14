/*var idx = 0;
//setInterval(plusImg(1), 2000);
showImg(idx);
function showImg(n){
    var i;
    var slides = document.getElementsByClassName('imgx');
    for(i=0; i<slides.length; i++){
        slides[i].style.display = 'none';
    }
    slides[n].style.display = 'block';
}
function plusImg(n){
    idx += n;
    var slides = document.getElementsByClassName('imgx');
    var l = slides.length;
    if(idx > (l-1)){
        idx = 0;
    }
    if(idx<0){
        idx = l-1;
    }
    showImg(idx);
}*/