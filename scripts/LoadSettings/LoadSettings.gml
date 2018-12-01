if (file_exists("settings.ini"))
{
ini_open("settings.ini");

global.shake = ini_read_real("settings", "shake", 1);
global.sound = ini_read_real("settings", "sound", 1);
global.music = ini_read_real("settings", "music", 0.3);
global.volume = ini_read_real("settings", "volume", 1);

ini_close();
}
else
{
ini_open("settings.ini");

ini_write_real("settings", "shake", 1);
ini_write_real("settings", "sound", 1);
ini_write_real("settings", "music", 0.3);
ini_write_real("settings", "volume", 1);

global.shake = ini_read_real("settings", "shake", 1);
global.sound = ini_read_real("settings", "sound", 1);
global.music = ini_read_real("settings", "music", 0.3);
global.volume = ini_read_real("settings", "volume", 1);

ini_close();
}
