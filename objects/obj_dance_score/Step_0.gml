/// @desc Changes Alpha and scaling

x_stretch += 1/120;
y_stretch += 1/120;

face_alpha -= 1/60;

if (face_alpha <= 0) {
	instance_destroy();
}