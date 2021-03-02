/// @desc Movement Variables

fore1_x = -320;
fore2_x = -160;
fore3_x = -80;
fore4_x = -40;

fore_speed = 20;

fore1_x_per = abs(fore1_x * (1 / (30 * fore_speed))); //the amount of steps for everything
fore2_x_per = abs(fore2_x * (1 / (30 * fore_speed)));
fore3_x_per = abs(fore3_x * (1 / (30 * fore_speed)));
fore4_x_per = abs(fore4_x * (1 / (30 * fore_speed)));