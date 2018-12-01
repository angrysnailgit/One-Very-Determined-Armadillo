if (file_exists("settings.ini")) file_delete("settings.ini");

ini_open("settings.ini");

ini_write_real("settings", "shake", global.shake);
ini_write_real("settings", "sound", global.sound);
ini_write_real("settings", "music", global.music);
ini_write_real("settings", "volume", global.volume);

ini_close();
