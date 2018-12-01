/// @desc SlideTransition(mode, targetroom)
/// @arg Mode sets transition mode (next, restart, goto)
/// @arg Target sets target room when using goto mode

with (oGameController)
{
	mode = argument[0];
	if (argument_count > 1) target = argument[1];
}
