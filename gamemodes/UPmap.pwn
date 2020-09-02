/*

Este GameMode ha sido creado exclusivamente para Comunidad UltraParty
La modificación de este GM esta permitido siempre y cuando dejen los
creditos del creador del editor del mapa y el creador del game mode.

Creditos:
- Fuze's Map Editor 		- RedFusion
- UltraParty Map Editor 	- Adonis

Y el que esté editando este GameMode y/o FilterScript.

*/

/*
x==============================================================================x
x               				  Librerías                                    x
x==============================================================================x
*/

#include <a_samp>                           // librería     (por defecto)

// Definir MAX_PLAYERS a 100 (para UltraParty FreeRoam)
#undef  MAX_PLAYERS
#define MAX_PLAYERS 						(100)
#include <Pawn.CMD>

#include <streamer>         				// streamer 	(streamer de mapas)
#include <sscanf2>                          // sscanf 		(sscanf)

#define IsVehicleExists(%0) 				GetVehicleModel(%0)
#define BYTES_PER_CELL 						4

#include "UPmap/colores.pwn"                // Colores definidos
#include "UPmap/variables.pwn"              // Variables declaradas
#include "UPmap/callbacks.pwn"              // Callbacks
#include "UPmap/comandos.pwn"               // Comandos del servidor
#include "UPmap/funciones.pwn"              // Funciones

/*
x==============================================================================x
x               			         FIN                                       x
x==============================================================================x
*/

