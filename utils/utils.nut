function AllPlayers(ignoreBot = false)
{
    local next = null;
    while (true)
    {
        next = Entities.FindByClassname(next, "player");
        if (!next)
        {
            break;
        }
        if (ignoreBot && IsPlayerABot(next))
        {
            continue;
        }
        yield next;
    }
}

function SetPrimaryAmmo(playerEnt, ammoCount)
{
    local inv = {};
    GetInvTable(playerEnt, inv);
    if ("slot0" in inv)
    {
        NetProps.SetPropIntArray(playerEnt, "m_iAmmo", ammoCount, NetProps.GetPropInt(inv.slot0, "m_iPrimaryAmmoType"));
    }
}

function GetPrimaryAmmo(playerEnt)
{
    local inv = {};
    GetInvTable(playerEnt, inv);
    if ("slot0" in inv)
    {
        return NetProps.GetPropIntArray(playerEnt, "m_iAmmo", NetProps.GetPropInt(inv.slot0, "m_iPrimaryAmmoType"));
    }
    return null;
}

function GetPrimaryWeapon(playerEnt)
{
    local inv = {};
    GetInvTable(playerEnt, inv);
    if ("slot0" in inv)
    {
        return inv.slot0;
    }
    else
    {
        return null;
    }
}

function ImportPublicMembers(srcScope, dstScope)
{
    if ("GetPublicMemberNames" in srcScope)
    {
        local names = srcScope.GetPublicMemberNames();
        foreach (name in names)
        {
            local member = srcScope[name];
            local memberType = typeof member;
            if (memberType == "function")
            {
                member = member.bindenv(srcScope);
            }

            dstScope[name] <- member;
        }
    }
}

function CreateUniqueTargetName(prefix = "gen")
{
    local maxTry = 1000;
    local tryCount = 0;
    while (true)
    {
        tryCount++;
        local number = RandomInt(0, 99999999);
        local name = prefix + number;
        if (Entities.FindByName(null, name) == null)
        {
            return name;
        }
        if (tryCount >= maxTry)
        {
            throw "Couldn't create unique targetname!";
        }
    }
}
