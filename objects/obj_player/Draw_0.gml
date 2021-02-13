draw_self();

draw_sprite_ext(spr_pistola, 0, x+(20 * image_xscale), y+7, image_xscale, image_yscale, 0, c_white, 1);

draw_set_font(fnt_game_ui);
draw_set_color(c_white);

draw_text(35,30, "Ammo: "+string(ammo));

var xx = view_wport[0] - 300;
var yy = 35;

var width = xx + ((life/100) * 200);
var height = yy + 25;

draw_set_color(c_black);
draw_rectangle(xx - 3, yy - 3, xx + 204, height + 4, 0);

draw_set_color(c_red);
draw_rectangle(xx, yy, xx + 200, height, 0)

draw_set_color(c_lime);
draw_rectangle(xx, yy, width, height, 0);