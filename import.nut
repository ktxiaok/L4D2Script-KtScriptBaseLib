local rt = getroottable();
local isUninited = !("KtScript" in rt);
if (isUninited)
{
    ::KtScript <- {};
    IncludeScript("ktscript/base/utils/init");
    IncludeScript("ktscript/base/serialization_system/init");
    IncludeScript("ktscript/base/hook_system/init");
}
::KtScript.TryCollectGameHooks();
if (isUninited)
{
    IncludeScript("ktscript/base/character_mgr/init");
}
::KtScript.CharacterMgrTryRefresh();
if (isUninited)
{
    IncludeScript("ktscript/base/task_system/init");
    IncludeScript("ktscript/base/chatcmd_system/init");
}
::KtScript._TaskSystemOnImport();
