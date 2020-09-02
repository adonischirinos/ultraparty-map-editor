/*
x==============================================================================x
x               			        Comandos                                   x
x==============================================================================x
*/

// Comandos
CMD:ping(playerid, params[]) 			return SendClientMessageFormatted(playerid, VerdeC, "Mi PING: {FFFFFF}%d", GetPlayerPing(playerid));
CMD:dia(playerid, params[]) 				return SetPlayerTime(playerid, 12,0);
CMD:noche(playerid, params[]) 			return SetPlayerTime(playerid, 00,0);
CMD:tarde(playerid, params[]) 			return SetPlayerTime(playerid, 14,0);
CMD:nrg(playerid, params[]) 				return CrearVehiculo(playerid, 522);

// Teles
CMD:int1(playerid, params[])
{
    new dialog_string[0x45A];
    for(new i = 0; i < sizeof(InteriorDialogNames); i++)
    {
        if(!i) format(dialog_string, 1114, InteriorDialogNames[i]);
		else format(dialog_string, 1114, "%s\n%s", dialog_string, InteriorDialogNames[i]);
    }
    ShowPlayerDialog(playerid, 1, DIALOG_STYLE_LIST, "{FFD800}U{EC0000}P{DAFF7F}map{FFFFFF}: Interiores 1", dialog_string, "Ir", "Cancelar");
    return 1;
}
CMD:int2(playerid, params[])
{
    new dialog_string[0x50C];
    for(new i = 0; i < sizeof(InteriorDialogNames2); i++)
    {
	    if(!i) format(dialog_string, 1292, InteriorDialogNames2[i]);
		else format(dialog_string, 1292, "%s\n%s", dialog_string, InteriorDialogNames2[i]);
    }
    ShowPlayerDialog(playerid, 2, DIALOG_STYLE_LIST, "{FFD800}U{EC0000}P{DAFF7F}map{FFFFFF}: Interiores 2", dialog_string, "Ir", "Cancelar");
    return 1;
}

CMD:ls(playerid, params[]) 				return Teletransportar(playerid, 1128.049194, -1429.366699, 15.796875, 0.508603);
CMD:sf(playerid, params[]) 				return Teletransportar(playerid, -1978.157104, 259.899414, 35.171875, 85.109405);
CMD:lv(playerid, params[]) 				return Teletransportar(playerid, 2026.556396, 1007.716735, 10.820312, 270.581115);
CMD:grove(playerid, params[]) 			return Teletransportar(playerid, 2498.407958, -1669.297851, 13.343652, 87.279365);
CMD:elevador(playerid, params[]) 		return Teletransportar(playerid, 1786.629882, -1293.049926, 13.551131, 180.709701);
CMD:hospitalsf(playerid, params[]) 		return Teletransportar(playerid, -2636.424560, 614.338745, 14.453125, 180.461410);
CMD:hospitalls(playerid, params[]) 		return Teletransportar(playerid, 1178.888427, -1324.131103, 14.142307, 270.169342);
CMD:piramide(playerid, params[]) 		return Teletransportar(playerid, 2323.659423, 1283.027221, 97.402328, 7.051239);
CMD:als(playerid, params[]) 				return Teletransportar(playerid, 1967.588134, -2540.961669, 13.546875, 93.218673);
CMD:alv(playerid, params[]) 				return Teletransportar(playerid, 1431.467407, 1463.139770, 10.820312, 4.857727);
CMD:chilliad(playerid, params[])			return Teletransportar(playerid, -2315.597900, -1634.653808, 483.703125, 253.333465);
CMD:playals(playerid, params[]) 			return Teletransportar(playerid, 526.263000, -1862.374633, 4.127633, 180.839080);
CMD:feria(playerid, params[]) 			return Teletransportar(playerid, 369.865783, -2007.739501, 7.671875, 179.354400);
CMD:faro(playerid, params[]) 			return Teletransportar(playerid, 154.525878, -1949.353881, 47.875000, 358.222930);
CMD:playasf(playerid, params[]) 			return Teletransportar(playerid, -2891.647460, 118.507629, 4.826539, 97.753829);
CMD:polisf(playerid, params[]) 			return Teletransportar(playerid, -1542.571533, 675.311645, 7.187500, 92.826690);
CMD:polils(playerid, params[]) 			return Teletransportar(playerid, 1552.493408, -1675.717285, 16.195312, 88.516403);
CMD:miraflores(playerid, params[]) 		return Teletransportar(playerid, 1484.145019, -1738.797119, 13.546875, 181.702041);
CMD:bmx(playerid, params[]) 				return Teletransportar(playerid, 1864.560913, -1383.035888, 13.489555, 249.881027);
CMD:polilv(playerid, params[]) 			return Teletransportar(playerid, 2326.448974, 2406.909912, 10.820312, 1.752006);
CMD:fortcason(playerid, params[]) 		return Teletransportar(playerid, -3.684258, 1209.712036, 19.352746, 179.065795);
CMD:laspayasadas(playerid, params[]) 	return Teletransportar(playerid, -220.408721, 2627.144042, 62.846092, 6.127430);
CMD:quebrados(playerid, params[]) 		return Teletransportar(playerid, -1414.792114, 2641.264892, 55.687500, 90.414878);
CMD:barrancas(playerid, params[]) 		return Teletransportar(playerid, -851.430786, 1568.250122, 24.891113, 279.356689);
CMD:toreno(playerid, params[])			return Teletransportar(playerid, -839.165100, 1000.614929, 24.523597, 270.293395);
CMD:blueberry(playerid, params[]) 		return Teletransportar(playerid, 229.812973, 58.525196, 2.606105, 181.305816);
CMD:dillimore(playerid, params[]) 		return Teletransportar(playerid, 679.546325, -479.222106, 16.335937, 181.305816);
CMD:angelpine(playerid, params[]) 		return Teletransportar(playerid, -2264.960449, -2218.695556, 30.759288, 225.172958);
CMD:ammunation(playerid, params[]) 		return Teletransportar(playerid, 1362.730957, -1279.763671, 13.546875, 270.168395);
CMD:granja(playerid, params[]) 			return Teletransportar(playerid, -130.533508, -195.938293, 1.910940, 351.936309);
CMD:unity(playerid, params[]) 			return Teletransportar(playerid, 1832.583251, -1866.560180, 13.382812, 90.168365);
CMD:area51(playerid, params[]) 			return Teletransportar(playerid, 216.027511, 1914.370239, 17.640625, 176.962539);
CMD:ps(playerid, params[]) 				return Teletransportar(playerid, -1501.013427, -504.201782, 14.148437, 4.314204);
CMD:t1(playerid, params[]) 				return Teletransportar(playerid, -1935.873413, 228.308486, 34.156250, 4.314204);
CMD:t2(playerid, params[]) 				return Teletransportar(playerid, -2704.497802, 216.944625, 4.179687, 87.975051);
CMD:t3(playerid, params[]) 				return Teletransportar(playerid, -1905.208251, 266.721862, 41.039070, 358.360870);
CMD:t4(playerid, params[]) 				return Teletransportar(playerid, 1958.727661, 2162.284912, 10.820312, 271.566711);
CMD:t5(playerid, params[]) 				return Teletransportar(playerid, 1024.667358, -1037.175170, 31.520420, 357.734191);
CMD:t6(playerid, params[]) 				return Teletransportar(playerid, 2386.716552, 1035.677368, 10.820312, 357.734191);
CMD:torre(playerid, params[]) 			return Teletransportar(playerid, 1544.057495, -1355.989013, 329.469726, 356.794158);
CMD:centrocomercial(playerid, params[]) 	return Teletransportar(playerid, 1127.519897, -1411.030029, 13.607925, 182.602416);
CMD:adonis(playerid, params[]) 			return Teletransportar(playerid, 1136.704956, -2036.690795, 69.007812, 269.396667);
CMD:estadiols(playerid, params[]) 		return Teletransportar(playerid, 2814.197509, -1681.695434, 9.914266, 133.722045);
CMD:lspd(playerid, params[]) 			return Teletransportar(playerid, 1552.421630, -1675.562500, 16.195312, 89.364685);
CMD:lvpd(playerid, params[]) 			return Teletransportar(playerid, 2288.149414, 2426.894775, 10.820312, 171.139923);
CMD:sfpd(playerid, params[]) 			return Teletransportar(playerid, -1604.317749, 666.359313, 7.187500, 263.350311);

// Resto de Comandos
CMD:cir(playerid, params[])
{
	new Float:XYZA@cIR[4]; GetPlayerFacingAngle(playerid, XYZA@cIR[3]);
	if(sscanf(params, "p<,>fff", XYZA@cIR[0], XYZA@cIR[1], XYZA@cIR[2])) return SendClientMessage(playerid, Rojo, "USO: /cir [coordenadas: X, Y, Z]");
	Teletransportar(playerid, XYZA@cIR[0], XYZA@cIR[1], XYZA@cIR[2], XYZA@cIR[3]);
	return 1;
}

CMD:cualesmip(playerid, params[])
{
	new MiIp[17];
	GetPlayerIp(playerid, MiIp, 17);
	SendClientMessageFormatted(playerid, Verde, "Tu IP es: %s", MiIp);
	return 1;
}

CMD:vehiculo(playerid, params[])
{
	CrearVehiculo(playerid, 411);
	SendClientMessage(playerid, Verde, "Tienes un Infernus!");
	SendClientMessage(playerid, Amarillo, "* Puedes obtener más vehículos mediante los comandos /v o /car.");
	return 1;
}

CMD:moto(playerid, params[])
{
	CrearVehiculo(playerid, 522);
	SendClientMessage(playerid, Verde, "Tienes una NRG-500!");
	SendClientMessage(playerid, Amarillo, "* Puedes obtener más vehículos mediante los comandos /v o /car.");
	return 1;
}

CMD:90x(playerid, params[])
{
	new Float:angulo; new Veh; Veh = GetPlayerVehicleID(playerid);
	GetVehicleZAngle(Veh, angulo); SetVehicleZAngle(Veh, angulo+90);
	return 1;
}
CMD:180x(playerid, params[])
{
	new Float:angulo; new Veh; Veh = GetPlayerVehicleID(playerid);
	GetVehicleZAngle(Veh, angulo); SetVehicleZAngle(Veh, angulo+180);
	return 1;
}

CMD:f(playerid, params[])
{
	if(!IsPlayerInAnyVehicle(playerid) || (GetPlayerState(playerid) != PLAYER_STATE_DRIVER)) return SendClientMessage(playerid, Rojo, "ERROR: Necesitas coche o estar de conductor para voltear el vehiculo");
	new Float:xyza[4];
	GetVehiclePos(GetPlayerVehicleID(playerid), xyza[0], xyza[1], xyza[2]);
	GetVehicleZAngle(GetPlayerVehicleID(playerid), xyza[3]);
	SetVehiclePos(GetPlayerVehicleID(playerid), xyza[0], xyza[1], xyza[2]+2);
	SetVehicleZAngle(GetPlayerVehicleID(playerid), xyza[3]);
	RepairVehicle(GetPlayerVehicleID(playerid));
	return 1;
}

CMD:car(playerid, params[])
{
    if(isnull(params)) return SendClientMessage(playerid, Rojo, "USO: /car [idveh/nombre]");
	CrearVehiculo(playerid, ObtenerVehiculoID(params));
    return 1;
}

CMD:ir(playerid, params[])
{
	if(sscanf(params,"u",params[0])) return SendClientMessage(playerid, Rojo, "ERROR: /air [id]");
	if(!IsPlayerConnected(params[0])) return SendClientMessage(playerid, Rojo, "ERROR: Jugador no conectado!");
	if(params[0] == playerid) return SendClientMessage(playerid, Rojo, "ERROR: No puedes teletransportarte a tí mismo.");
	new Float:posicion[4], nombre[MAX_PLAYER_NAME], Float:distancia_2 = 5.0;
	GetPlayerName(params[0], nombre, MAX_PLAYER_NAME);
	GetPlayerPos(params[0],posicion[0],posicion[1],posicion[2]);
	GetPlayerFacingAngle(params[0],posicion[3]);
	posicion[0] = posicion[0] + (distancia_2 * floatsin(-posicion[3], degrees));
	posicion[1] = posicion[1] + (distancia_2 * floatcos(-posicion[3], degrees));
	Teletransportar(playerid,posicion[0],posicion[1],posicion[2], posicion[3]);
	SetPlayerInterior(playerid,GetPlayerInterior(params[0]));
	SetPlayerVirtualWorld(playerid,GetPlayerVirtualWorld(params[0]));
	SendClientMessageFormatted(playerid, Limon, "Usted ha ido a la posición de %s.", nombre);
    return 1;
}

CMD:comandos(playerid, params[])
{
	ShowPlayerDialog(playerid, 0, DIALOG_STYLE_TABLIST_HEADERS, "{FFD800}U{EC0000}P{DAFF7F}map{FFFFFF}: Comandos",
	"{FFFFFF}Comandos\t{FFFFFF}Descripción\
	\n{DAFF7F}/dia\t{FFFFFF}Cambia el tiempo de día\
	\n{DAFF7F}/tarde\t{FFFFFF}Cambia el tiempo de tarde \
	\n{DAFF7F}/noche\t{FFFFFF}Cambia el tiempo de noche\
	\n{DAFF7F}/fps\t{FFFFFF}Ver tus FPS actuales \
	\n{DAFF7F}/ping\t{FFFFFF}Ver tus PING actual \
	\n{DAFF7F}/nrg\t{FFFFFF}Saca un NRG-500 \
	\n{DAFF7F}/vehiculo\t{FFFFFF}Saca un Infernus\
	\n{DAFF7F}/moto\t{FFFFFF}Saca una NRG-500\
	\n{DAFF7F}/cir\t{FFFFFF}Ir a coordenadas especificas \
	\n{DAFF7F}/ir\t{FFFFFF}Ir a un jugador \
	\n{DAFF7F}/cualesmiip\t{FFFFFF}Ver tu IP actual\
	\n{DAFF7F}/f\t{FFFFFF}Voltear tu vehículo\
	\n{DAFF7F}/180x\t{FFFFFF}Voltea tu vehículo a 180°\
	\n{DAFF7F}/90x\t{FFFFFF}Voltea tu vehiculo a 90°\
	\n{DAFF7F}/car\t{FFFFFF}Saca un vehículo en especifico", "Cerrar", "");
	return 1;
}

