function loadImages(imagePaths) {
  [...imagePaths].forEach(function(path){
    console.log(path)
  })
  var gallery = document.getElementById("gallery");
  gallery.innerHTML = '';
//  [...imagePaths].forEach(function(path) {
//    var img = document.createElement("img");
//    img.src = path;
//    img.alt = "Gallery Image";
//    img.className = "gallery-item";
//    img.onclick = function() { openImage(img); };
//    gallery.appendChild(img);
//  });
}

function openImage(element) {
  var popup = document.getElementById("popup");
  var popupImage = document.getElementById("popup-image");
  popup.style.display = "block";
  popupImage.src = element.src;
}

function closeImage() {
  var popup = document.getElementById("popup");
  popup.style.display = "none";
}
