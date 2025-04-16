#include "./maps/bloc1.pwn"
#include "./maps/majihouse1.pwn"
#include "./maps/police_new.pwn"
#include "./maps/eboueur.pwn"
#include "./maps/inttabac.pwn"
#include "./maps/autoecole.pwn"

stock mapping_GenerateAllMaps()
{
	mapping_bloc1();
	mapping_majihouse1();
	mapping_police_new();
	mapping_eboueur();
	mapping_inttabac();
	mapping_autoecole();
}
