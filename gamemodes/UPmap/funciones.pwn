
/*
x==============================================================================x
x               			       Funciones                                   x
x==============================================================================x
*/


stock TeletransportarJug(playerid, Float:x, Float:y, Float:z, Float:a, interior = 0, vw = 0)
{
	if(IsPlayerInVehicle(playerid, GetPlayerVehicleID(playerid))) RemovePlayerFromVehicle(playerid);
	SetPlayerInterior(playerid, interior);
	SetPlayerPos(playerid, x, y, z+1);
	SetPlayerFacingAngle(playerid, a);
	SetCameraBehindPlayer(playerid);
	SetPlayerVirtualWorld(playerid, vw);
	return 1;
}

stock Teletransportar(playerid, Float:x, Float:y, Float:z, Float:a)
{
	switch(GetPlayerState(playerid))
	{
		case PLAYER_STATE_ONFOOT:
		{
		    SetPlayerInterior(playerid, 0);
		    SetPlayerPos(playerid, x, y, z);
			SetPlayerFacingAngle(playerid, a);
		}
		case PLAYER_STATE_PASSENGER:
		{
			RemovePlayerFromVehicle(playerid);
		    SetPlayerInterior(playerid, 0);
		    SetPlayerPos(playerid, x, y, z);
			SetPlayerFacingAngle(playerid, a);
		}
		case PLAYER_STATE_DRIVER:
		{
		    new veh = GetPlayerVehicleID(playerid);
		    SetPlayerInterior(playerid, 0);
			SetVehiclePos(veh, x, y, z);
		 	SetVehicleZAngle(veh, a);
	 	}
	}
	SetCameraBehindPlayer(playerid);
	return 1;
}

stock CrearVehiculo(playerid, veh, Float:xveh = 0.0, Float:yveh = 0.0, Float:zveh = 0.0, Float:aveh = 0.0)
{
	if(veh <= 400 && veh >= 612) return SendClientMessage(playerid, Rojo, "ERROR: Modelo de vehículo incorrecto");
	GetPlayerFacingAngle(playerid, aveh);
	switch(GetPlayerState(playerid))
	{
		case PLAYER_STATE_DRIVER, PLAYER_STATE_PASSENGER:
		{
		    RemovePlayerFromVehicle(playerid);
		}
	}
	GetPlayerPos(playerid, xveh, yveh, zveh);
	SetPlayerFacingAngle(playerid, aveh);
	if(Datos[playerid][VehiculosJ] != INVALID_VEHICLE_ID || IsVehicleExists(Datos[playerid][VehiculosJ])) DestroyVehicle(Datos[playerid][VehiculosJ]);
	Datos[playerid][VehiculosJ] = INVALID_VEHICLE_ID;
	Datos[playerid][VehiculosJ] = CreateVehicle(veh, xveh, yveh, zveh, aveh, -1, -1, -1);
	LinkVehicleToInterior(Datos[playerid][VehiculosJ], GetPlayerInterior(playerid));
	SetVehicleVirtualWorld(Datos[playerid][VehiculosJ], GetPlayerVirtualWorld(playerid));
	PutPlayerInVehicle(playerid, Datos[playerid][VehiculosJ], 0);
	SetVehicleParamsEx(Datos[playerid][VehiculosJ], VEHICLE_PARAMS_ON, VEHICLE_PARAMS_ON, VEHICLE_PARAMS_OFF, VEHICLE_PARAMS_OFF, VEHICLE_PARAMS_OFF, VEHICLE_PARAMS_OFF, VEHICLE_PARAMS_OFF);
	return 1;
}

ObtenerVehiculoID(vname[])
{
    for(new i = 0; i < 211; i++)
    {
        if(strfind(VehicleNames[i], vname, true) != -1)
        return i + 400;
    }
    return -1;
}

stock SendClientMessageFormatted(playerid, color, fstring[], {Float, _}:...)
{
    static const STATIC_ARGS = 3;
    new n = (numargs() - STATIC_ARGS) * BYTES_PER_CELL;
    if(n)
    {
        new message[144],arg_start,arg_end;
        #emit CONST.alt        fstring
        #emit LCTRL          5
        #emit ADD
        #emit STOR.S.pri        arg_start

        #emit LOAD.S.alt        n
        #emit ADD
        #emit STOR.S.pri        arg_end
        do
        {
            #emit LOAD.I
            #emit PUSH.pri
            arg_end -= BYTES_PER_CELL;
            #emit LOAD.S.pri      arg_end
        }
        while(arg_end > arg_start);

        #emit PUSH.S          fstring
        #emit PUSH.C          144
        #emit PUSH.ADR         message

        n += BYTES_PER_CELL * 3;
        #emit PUSH.S          n
        #emit SYSREQ.C         format

        n += BYTES_PER_CELL;
        #emit LCTRL          4
        #emit LOAD.S.alt        n
        #emit ADD
        #emit SCTRL          4

        if(playerid == INVALID_PLAYER_ID)
        {
            #pragma unused playerid
            return SendClientMessageToAll(color, message);
        } else {
            return SendClientMessage(playerid, color, message);
        }
    } else {
        if(playerid == INVALID_PLAYER_ID)
        {
            #pragma unused playerid
            return SendClientMessageToAll(color, fstring);
        } else {
            return SendClientMessage(playerid, color, fstring);
        }
    }
}
