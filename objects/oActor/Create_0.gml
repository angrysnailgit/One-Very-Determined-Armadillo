/// @description Initialization Stuff
#region Player States

enum states 
{
	walking, 
	aiming, 
	flying
};

#endregion
state = states.walking;

#region Init Variables

canSound = true;
moveDirection = 1;
canWalk = 20;
walkForce = 75;
jumpCooldown = 0;
hPower = 0;
vPower = 0;
leave = true;
arrow = noone;

#endregion

//fix rotation
phy_fixed_rotation = true;

//make sure we don't pass thru objects at high speed
phy_bullet = true;