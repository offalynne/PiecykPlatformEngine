if (image_yscale>0.2) {
  image_yscale-=0.05;
  y+=0.73;
}
t-=1;
if (t<10) {
  image_alpha-=0.1;
}
if (image_alpha<0) {
  instance_destroy();
}

