/// @description Draw Menu

draw_set_font(fDefault);
draw_set_halign(fa_middle);
draw_set_valign(fa_top);

for (var i = 0; i < menu_items; i ++)
{
	var offset = 4;
	var txt = menu[i];
	if (menu_cursor == i)
	{
		//txt = string_insert("> ", txt, 0)
		var col = global.col_white;
	}
	else
	{
		var col = global.col_darker;
	}
	var xx = menu_x;
	var yy = menu_y - (menu_item_height * (i * 2));
	draw_set_color(global.col_basically_black);
	draw_text(xx - offset, yy, txt);
	draw_text(xx + offset, yy, txt);
	draw_text(xx, yy + offset, txt);
	draw_text(xx, yy - offset, txt);
	draw_set_color(col);
	draw_text(xx, yy, txt);
}