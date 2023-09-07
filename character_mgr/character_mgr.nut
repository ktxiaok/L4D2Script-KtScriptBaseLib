local _ctx = this;

_players <- {};

function InitCharacterMgr()
{
    CharacterMgrRegisterGameHooks();
}

function GetPlayerIter()
{
    foreach (player, val in _players)
    {
        if (!player.IsValid())
        {
            continue;
        }
        yield player;
    }
}

function GetSurvivorIter()
{
    foreach (player in GetPlayerIter())
    {
        if (player.IsSurvivor())
        {
            yield player;
        }
    }
}



local RefreshedFlagName = "KtScript_CharacterMgrRefreshed";

function CharacterMgrIsRefreshed()
{
    return RefreshedFlagName in g_RoundState;
}

function CharacterMgrSetRefreshed()
{
    g_RoundState[RefreshedFlagName] <- true;
}

function CharacterMgrTryRefresh()
{
    if (CharacterMgrIsRefreshed())
    {
        return;
    }

    _players.clear();

    local ent = null;
    while (true)
    {
        ent = Entities.FindByClassname(ent, "player");
        if (ent == null)
        {
            break;
        }
        CharacterMgrRecordNewPlayer(ent);
    }

    CharacterMgrSetRefreshed();
}

function CharacterMgrRecordNewPlayer(player)
{
    _players[player] <- true;
}

function CharacterMgrRemovePlayer(player)
{
    if (player in _players)
    {
        delete _players[player];
    }
}

function CharacterMgrOnPlayerActivate(params)
{
    local player = GetPlayerFromUserID(params.userid);
    CharacterMgrRecordNewPlayer(player);
}

function CharacterMgrOnPlayerDisconnect(params)
{
    local player = GetPlayerFromUserID(params.userid);
    CharacterMgrRemovePlayer(player);
}

function CharacterMgrRegisterGameHooks()
{
    RegisterGameHook("OnGameEvent_player_activate", CharacterMgrOnPlayerActivate, _ctx);
    RegisterGameHook("OnGameEvent_player_disconnect", CharacterMgrOnPlayerDisconnect, _ctx);
}
