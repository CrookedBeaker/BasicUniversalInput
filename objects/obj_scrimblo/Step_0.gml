/// @description Move around, test the input method

hspd = (in_right-in_left)*3;
vspd = (in_down-in_up)*3;

if (hspd != 0) {image_xscale = sign(hspd)};
image_speed = (hspd != 0 || vspd != 0);

x += hspd;
y += vspd;