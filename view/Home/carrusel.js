var images = document.querySelectorAll('.carousel img');
var currentImage = 0;

function showImage(n) {
  images[currentImage].classList.remove('active');
  currentImage = (n + images.length) % images.length;
  images[currentImage].classList.add('active');
}

function nextImage() {
  showImage(currentImage + 1);
}

function previousImage() {
  showImage(currentImage - 1);
}

setInterval(nextImage, 5000); // Cambia la imagen cada 5 segundos

showImage(currentImage); // Muestra la primera imagen al cargar la página
