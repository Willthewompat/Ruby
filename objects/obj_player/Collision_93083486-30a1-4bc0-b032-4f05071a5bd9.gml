//Horizontal collisiobnsdsrdch
if (place_meeting(x+hsp,y,obj_box))

{
	while(!place_meeting(x+sign(hsp),y,obj_box))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}
x = x + hsp;
//Vertical collision
if (place_meeting(x,y+vsp,obj_door))
{
	while(!place_meeting(x,y+sign(vsp),obj_door))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp;