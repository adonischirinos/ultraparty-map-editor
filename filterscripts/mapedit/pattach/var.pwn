enum PLAYERATTACH_DATA {
    bool:  PLAYERATTACH_DATA_TOGGLE,
           PLAYERATTACH_DATA_MODEL,
           PLAYERATTACH_DATA_BONE,
    Float: PLAYERATTACH_DATA_X,
    Float: PLAYERATTACH_DATA_Y,
    Float: PLAYERATTACH_DATA_Z,
    Float: PLAYERATTACH_DATA_RX,
    Float: PLAYERATTACH_DATA_RY,
    Float: PLAYERATTACH_DATA_RZ,
    Float: PLAYERATTACH_DATA_SX,
    Float: PLAYERATTACH_DATA_SY,
    Float: PLAYERATTACH_DATA_SZ,
           PLAYERATTACH_DATA_COLOR1,
           PLAYERATTACH_DATA_COLOR2
}

new g_PlayerAttachData[MAX_PLAYERS][MAX_PLAYERATTACH_INDEX][PLAYERATTACH_DATA];