/*
x==============================================================================x
x               			       Callbacks                                   x
x==============================================================================x
*/

main()
{
   	new datos[0b11], tiempo[0b11];
	getdate(datos[0], datos[1], datos[0b10]);
 	gettime(tiempo[0], tiempo[1], tiempo[0b10]);
	print ("------------------------------------");
	print ("        UltraParty Map Editor       ");
	print ("               -----              	");
	print ("          Adonis 2015-2016          ");
	print ("------------------------------------");
	print ("              INICIADO              ");
	printf(" Fecha: %02d/%02d/%02d   Hora: %02d:%02d:%02d  ", datos[2], datos[1], datos[0], tiempo[0], tiempo[1], tiempo[0b10]);
	print ("------------------------------------");
}

public OnGameModeInit()
{
	SetGameModeText("UltraParty Map Editor");
    for(new classid; classid<300; classid++){
	AddPlayerClass(classid, 0.0, 0.0, 0.0, 0.0, 0, 0, 0, 0, 0, 0); }
    UsePlayerPedAnims();
	ShowPlayerMarkers(1);
	ShowNameTags(1);

	new objetos_inicio[8];
	objetos_inicio[0] = CreateDynamicObject(19854, 1463.0753, 2774.4724, 9.6762, 0.0000, 0.0000, 90.0000); //MIHouse1Outside
	objetos_inicio[1] = CreateDynamicObject(19855, 1463.0756, 2774.4704, 9.6606, 0.0000, 0.0000, 90.0000); //MIHouse1Inside
	objetos_inicio[2] = CreateDynamicObject(19859, 1458.5104, 2784.3142, 11.6326, 0.0000, 0.0000, 91.0000); //MIHouse1Door3
	SetDynamicObjectMaterial(objetos_inicio[2], 0, 16093, "a51_ext", "a51_fencsign", 0xFFFFFFFF);
	objetos_inicio[3] = CreateDynamicObject(19777, 1473.4750, 2769.8212, 10.5132, 69.4999, -1.3999, -53.2999); //FBILogo1
	objetos_inicio[4] = CreateDynamicObject(19893, 1473.3389, 2769.7221, 10.3766, 0.0000, 0.0000, -54.7999); //LaptopSAMP1
	SetDynamicObjectMaterialText(objetos_inicio[4], 1, "THIS HIDDEN SITE HAS BEEN SEIZED", 130, "Tahoma", 32, 1, 0xFF000000, 0xFFFFFFFF, 0);
	objetos_inicio[5] = CreateDynamicObject(19624, 1473.4155, 2770.2724, 10.8124, 0.0000, 0.0000, -86.9999); //Case1
	objetos_inicio[6] = CreateDynamicObject(19355, 1468.8527, 2776.5119, 10.3001, 0.0000, 90.0000, 0.0000); //wall003
	SetDynamicObjectMaterialText(objetos_inicio[6], 0, "{FFFFFF}http://www.{FFE75F}ultra{FC534C}partysamp.{FFFFFF}.com", 130, "Tahoma", 35, 1, 0xFF000000, 0x0, 0);
	objetos_inicio[7] = CreateDynamicObject(19355, 1473.5447, 2776.4218, 12.6602, 0.0000, 0.0000, 0.0000); //wall003
	SetDynamicObjectMaterialText(objetos_inicio[7], 0, "{FFFFFF}http://www.{FFE75F}ultra{FC534C}partysamp.{FFFFFF}.com", 130, "Tahoma", 35, 1, 0xFF000000, 0x0, 0);


	return 1;
}

public OnPlayerConnect(playerid)
{
	GameTextForPlayer(playerid,"~w~SA-MP: ~y~~h~Ultra~r~~h~~h~Party ~g~~h~~h~Map Editor",5000,5);
	SendClientMessage(playerid, Blanco, "• Bienvenidos a {FFD800}Ultra{EC0000}Party {B1FF8C}Map Editor");
	SendClientMessage(playerid, VerdeC, "Escribe < /comandos > para ver todos los comandos disponibles en el servidor");
	SendClientMessage(playerid, Blanco, "GameMode exclusivo para {FFD800}Ultra{EC0000}Party");
	SendClientMessage(playerid, Naranja, "http://www.ultrapartysamp.com");
	Datos[playerid][VehiculosJ] = 0;
	return 1;
}

public OnPlayerDisconnect(playerid, reason)
{
	Datos[playerid][VehiculosJ] = 0;
	return 1;
}

public OnPlayerSpawn(playerid)
{
	SetPlayerInterior(playerid,0);
	TogglePlayerClock(playerid, 1);
	new r = random(sizeof(posiciones));
	TeletransportarJug(playerid, posiciones[r][0], posiciones[r][1], posiciones[r][2], posiciones[r][3]);
	return 1;
}

public OnPlayerDeath(playerid, killerid, reason)
{
	if(killerid == INVALID_PLAYER_ID)
	{
        SendDeathMessage(INVALID_PLAYER_ID,playerid,reason);
	}
	else
	{
    	SendDeathMessage(killerid,playerid,reason);
		SetPlayerScore(killerid, GetPlayerScore(killerid)+1);
	}
 	return 1;
}

public OnPlayerRequestClass(playerid, classid)
{
 	SetPlayerInterior(playerid, 14);
	SetPlayerPos(playerid, 258.4893, -41.4008, 1002.0234);
	SetPlayerFacingAngle(playerid, 270.0);
	SetPlayerCameraPos(playerid, 256.0815, -43.0475, 1004.0234);
	SetPlayerCameraLookAt(playerid, 258.4893, -41.4008, 1002.0234);
	return 1;
}

public OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
	switch(dialogid)
	{
		case 1:
		{
			if(!response) return 1;
			TeletransportarJug(playerid, InteriorDialogData[listitem][0], InteriorDialogData[listitem][1], InteriorDialogData[listitem][2], InteriorDialogData[listitem][3], InteriorDialogInteriors[listitem][0]);
			SendClientMessageFormatted(playerid, Azul, "Te has teletransportado al interior %s ...", InteriorDialogNames[listitem][0]);
			return 1;
		}
		case 2:
		{
			if(!response) return 1;
			TeletransportarJug(playerid, InteriorDialogData2[listitem][0], InteriorDialogData2[listitem][1], InteriorDialogData2[listitem][2], InteriorDialogData2[listitem][3], InteriorDialogInteriors2[listitem][0]);
			SendClientMessageFormatted(playerid, Azul, "Te has teletransportado al interior %s ...", InteriorDialogNames2[listitem][0]);
			return 1;
		}
	}
	return 1;
}
