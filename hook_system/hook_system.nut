local _ctx = this;

GameEventCallbackNames <- [
    "OnGameEvent_team_info",
    "OnGameEvent_team_score",
    "OnGameEvent_teamplay_broadcast_audio",
    "OnGameEvent_player_team",
    "OnGameEvent_player_class",
    "OnGameEvent_player_death",
    "OnGameEvent_player_hurt",
    "OnGameEvent_player_chat",
    "OnGameEvent_player_score",
    "OnGameEvent_player_spawn",
    "OnGameEvent_player_shoot",
    "OnGameEvent_player_use",
    "OnGameEvent_player_changename",
    "OnGameEvent_player_hintmessage",
    "OnGameEvent_game_init",
    "OnGameEvent_game_newmap",
    "OnGameEvent_game_start",
    "OnGameEvent_game_end",
    "OnGameEvent_round_start",
    "OnGameEvent_round_end",
    "OnGameEvent_game_message",
    "OnGameEvent_break_breakable",
    "OnGameEvent_break_prop",
    "OnGameEvent_entity_killed",
    "OnGameEvent_bonus_updated",
    "OnGameEvent_achievement_event",
    "OnGameEvent_survival_goal_reached",
    "OnGameEvent_physgun_pickup",
    "OnGameEvent_flare_ignite_npc",
    "OnGameEvent_helicopter_grenade_punt_miss",
    "OnGameEvent_user_data_downloaded",
    "OnGameEvent_ragdoll_dissolved",
    "OnGameEvent_pounce_fail",
    "OnGameEvent_hit_safe_room",
    "OnGameEvent_spawned_as_tank",
    "OnGameEvent_instructor_server_hint_create",
    "OnGameEvent_instructor_server_hint_stop",
    "OnGameEvent_player_biofeedback_scl",
    "OnGameEvent_player_death",
    "OnGameEvent_player_hurt",
    "OnGameEvent_player_team",
    "OnGameEvent_player_bot_replace",
    "OnGameEvent_bot_player_replace",
    "OnGameEvent_player_afk",
    "OnGameEvent_weapon_fire",
    "OnGameEvent_weapon_fire_on_empty",
    "OnGameEvent_weapon_reload",
    "OnGameEvent_weapon_zoom",
    "OnGameEvent_ability_use",
    "OnGameEvent_ammo_pickup",
    "OnGameEvent_item_pickup",
    "OnGameEvent_grenade_bounce",
    "OnGameEvent_hegrenade_detonate",
    "OnGameEvent_bullet_impact",
    "OnGameEvent_player_footstep",
    "OnGameEvent_player_jump",
    "OnGameEvent_player_blind",
    "OnGameEvent_player_falldamage",
    "OnGameEvent_player_ledge_grab",
    "OnGameEvent_player_ledge_release",
    "OnGameEvent_door_moving",
    "OnGameEvent_door_open",
    "OnGameEvent_door_close",
    "OnGameEvent_door_unlocked",
    "OnGameEvent_rescue_door_open",
    "OnGameEvent_waiting_checkpoint_door_used",
    "OnGameEvent_waiting_door_used_versus",
    "OnGameEvent_waiting_checkpoint_button_used",
    "OnGameEvent_success_checkpoint_button_used",
    "OnGameEvent_round_freeze_end",
    "OnGameEvent_round_start_pre_entity",
    "OnGameEvent_round_start_post_nav",
    "OnGameEvent_nav_blocked",
    "OnGameEvent_nav_generate",
    "OnGameEvent_round_end_message",
    "OnGameEvent_round_end",
    "OnGameEvent_vote_ended",
    "OnGameEvent_vote_started",
    "OnGameEvent_vote_changed",
    "OnGameEvent_vote_passed",
    "OnGameEvent_vote_failed",
    "OnGameEvent_vote_cast_yes",
    "OnGameEvent_vote_cast_no",
    "OnGameEvent_infected_hurt",
    "OnGameEvent_infected_death",
    "OnGameEvent_hostname_changed",
    "OnGameEvent_difficulty_changed",
    "OnGameEvent_finale_start",
    "OnGameEvent_finale_rush",
    "OnGameEvent_finale_escape_start",
    "OnGameEvent_finale_vehicle_ready",
    "OnGameEvent_finale_vehicle_leaving",
    "OnGameEvent_finale_win",
    "OnGameEvent_mission_lost",
    "OnGameEvent_finale_radio_start",
    "OnGameEvent_finale_radio_damaged",
    "OnGameEvent_final_reportscreen",
    "OnGameEvent_map_transition",
    "OnGameEvent_player_transitioned",
    "OnGameEvent_heal_begin",
    "OnGameEvent_heal_success",
    "OnGameEvent_heal_end",
    "OnGameEvent_heal_interrupted",
    "OnGameEvent_ammo_pack_used",
    "OnGameEvent_give_weapon",
    "OnGameEvent_pills_used",
    "OnGameEvent_pills_used_fail",
    "OnGameEvent_ammo_pack_used_fail_no_weapon",
    "OnGameEvent_ammo_pack_used_fail_full",
    "OnGameEvent_ammo_pack_used_fail_doesnt_use_ammo",
    "OnGameEvent_ammo_pile_weapon_cant_use_ammo",
    "OnGameEvent_defibrillator_begin",
    "OnGameEvent_defibrillator_used",
    "OnGameEvent_defibrillator_used_fail",
    "OnGameEvent_defibrillator_interrupted",
    "OnGameEvent_upgrade_pack_begin",
    "OnGameEvent_upgrade_pack_used",
    "OnGameEvent_upgrade_item_already_used",
    "OnGameEvent_upgrade_failed_no_primary",
    "OnGameEvent_dead_survivor_visible",
    "OnGameEvent_adrenaline_used",
    "OnGameEvent_revive_begin",
    "OnGameEvent_revive_success",
    "OnGameEvent_revive_end",
    "OnGameEvent_drag_begin",
    "OnGameEvent_drag_end",
    "OnGameEvent_player_incapacitated",
    "OnGameEvent_player_incapacitated_start",
    "OnGameEvent_player_entered_start_area",
    "OnGameEvent_player_first_spawn",
    "OnGameEvent_player_left_start_area",
    "OnGameEvent_player_entered_checkpoint",
    "OnGameEvent_player_left_checkpoint",
    "OnGameEvent_player_shoved",
    "OnGameEvent_entity_shoved",
    "OnGameEvent_player_jump_apex",
    "OnGameEvent_player_blocked",
    "OnGameEvent_player_now_it",
    "OnGameEvent_player_no_longer_it",
    "OnGameEvent_witch_harasser_set",
    "OnGameEvent_witch_spawn",
    "OnGameEvent_witch_killed",
    "OnGameEvent_tank_spawn",
    "OnGameEvent_melee_kill",
    "OnGameEvent_area_cleared",
    "OnGameEvent_award_earned",
    "OnGameEvent_tongue_grab",
    "OnGameEvent_tongue_broke_bent",
    "OnGameEvent_tongue_release",
    "OnGameEvent_choke_start",
    "OnGameEvent_choke_end",
    "OnGameEvent_choke_stopped",
    "OnGameEvent_tongue_pull_stopped",
    "OnGameEvent_lunge_shove",
    "OnGameEvent_lunge_pounce",
    "OnGameEvent_pounce_end",
    "OnGameEvent_pounce_stopped",
    "OnGameEvent_fatal_vomit",
    "OnGameEvent_survivor_call_for_help",
    "OnGameEvent_survivor_rescued",
    "OnGameEvent_survivor_rescue_abandoned",
    "OnGameEvent_relocated",
    "OnGameEvent_respawning",
    "OnGameEvent_tank_frustrated",
    "OnGameEvent_weapon_given",
    "OnGameEvent_weapon_drop",
    "OnGameEvent_break_breakable",
    "OnGameEvent_achievement_earned",
    "OnGameEvent_spec_target_updated",
    "OnGameEvent_spawner_give_item",
    "OnGameEvent_create_panic_event",
    "OnGameEvent_explain_pills",
    "OnGameEvent_explain_weapons",
    "OnGameEvent_entity_visible",
    "OnGameEvent_weapon_spawn_visible",
    "OnGameEvent_boomer_near",
    "OnGameEvent_explain_pre_radio",
    "OnGameEvent_started_pre_radio",
    "OnGameEvent_explain_radio",
    "OnGameEvent_explain_gas_truck",
    "OnGameEvent_explain_panic_button",
    "OnGameEvent_explain_elevator_button",
    "OnGameEvent_explain_lift_button",
    "OnGameEvent_explain_church_door",
    "OnGameEvent_explain_emergency_door",
    "OnGameEvent_explain_crane",
    "OnGameEvent_explain_bridge",
    "OnGameEvent_explain_gas_can_panic",
    "OnGameEvent_explain_van_panic",
    "OnGameEvent_explain_mainstreet",
    "OnGameEvent_explain_train_lever",
    "OnGameEvent_explain_disturbance",
    "OnGameEvent_explain_scavenge_goal",
    "OnGameEvent_explain_scavenge_leave_area",
    "OnGameEvent_begin_scavenge_overtime",
    "OnGameEvent_scavenge_round_start",
    "OnGameEvent_scavenge_round_halftime",
    "OnGameEvent_scavenge_round_finished",
    "OnGameEvent_scavenge_score_tied",
    "OnGameEvent_versus_round_start",
    "OnGameEvent_gascan_pour_blocked",
    "OnGameEvent_gascan_pour_completed",
    "OnGameEvent_gascan_dropped",
    "OnGameEvent_gascan_pour_interrupted",
    "OnGameEvent_scavenge_match_finished",
    "OnGameEvent_versus_match_finished",
    "OnGameEvent_use_target",
    "OnGameEvent_player_use",
    "OnGameEvent_friendly_fire",
    "OnGameEvent_gameinstructor_draw",
    "OnGameEvent_gameinstructor_nodraw",
    "OnGameEvent_request_weapon_stats",
    "OnGameEvent_player_talking_state",
    "OnGameEvent_weapon_pickup",
    "OnGameEvent_hunter_punched",
    "OnGameEvent_hunter_headshot",
    "OnGameEvent_zombie_ignited",
    "OnGameEvent_zombie_death",
    "OnGameEvent_boomer_exploded",
    "OnGameEvent_non_pistol_fired",
    "OnGameEvent_weapon_fire_at_40",
    "OnGameEvent_total_ammo_below_40",
    "OnGameEvent_player_hurt_concise",
    "OnGameEvent_tank_killed",
    "OnGameEvent_tank_rock_killed",
    "OnGameEvent_achievement_write_failed",
    "OnGameEvent_ghost_spawn_time",
    "OnGameEvent_survival_at_30min",
    "OnGameEvent_explain_pre_drawbridge",
    "OnGameEvent_explain_drawbridge",
    "OnGameEvent_explain_perimeter",
    "OnGameEvent_explain_deactivate_alarm",
    "OnGameEvent_explain_impound_lot",
    "OnGameEvent_explain_decon",
    "OnGameEvent_explain_mall_window",
    "OnGameEvent_explain_mall_alarm",
    "OnGameEvent_explain_coaster",
    "OnGameEvent_explain_coaster_stop",
    "OnGameEvent_explain_decon_wait",
    "OnGameEvent_gauntlet_finale_start",
    "OnGameEvent_explain_float",
    "OnGameEvent_explain_ferry_button",
    "OnGameEvent_explain_hatch_button",
    "OnGameEvent_explain_shack_button",
    "OnGameEvent_upgrade_incendiary_ammo",
    "OnGameEvent_upgrade_explosive_ammo",
    "OnGameEvent_receive_upgrade",
    "OnGameEvent_explain_vehicle_arrival",
    "OnGameEvent_mounted_gun_start",
    "OnGameEvent_mounted_gun_overheated",
    "OnGameEvent_explain_burger_sign",
    "OnGameEvent_explain_carousel_button",
    "OnGameEvent_explain_carousel_destination",
    "OnGameEvent_explain_stage_lighting",
    "OnGameEvent_explain_stage_finale_start",
    "OnGameEvent_explain_stage_survival_start",
    "OnGameEvent_ability_out_of_range",
    "OnGameEvent_explain_stage_pyrotechnics",
    "OnGameEvent_explain_c3m4_radio1",
    "OnGameEvent_explain_c3m4_radio2",
    "OnGameEvent_explain_gates_are_open",
    "OnGameEvent_explain_c2m4_ticketbooth",
    "OnGameEvent_explain_c3m4_rescue",
    "OnGameEvent_explain_hotel_elevator_doors",
    "OnGameEvent_explain_gun_shop_tanker",
    "OnGameEvent_explain_gun_shop",
    "OnGameEvent_explain_store_alarm",
    "OnGameEvent_explain_store_item",
    "OnGameEvent_explain_store_item_stop",
    "OnGameEvent_explain_survival_generic",
    "OnGameEvent_explain_survival_alarm",
    "OnGameEvent_explain_survival_radio",
    "OnGameEvent_explain_survival_carousel",
    "OnGameEvent_explain_return_item",
    "OnGameEvent_explain_save_items",
    "OnGameEvent_spit_burst",
    "OnGameEvent_entered_spit",
    "OnGameEvent_temp_c4m1_getgas",
    "OnGameEvent_temp_c4m3_return_to_boat",
    "OnGameEvent_explain_c1m4_finale",
    "OnGameEvent_c1m4_scavenge_instructions",
    "OnGameEvent_punched_clown",
    "OnGameEvent_charger_killed",
    "OnGameEvent_spitter_killed",
    "OnGameEvent_jockey_ride",
    "OnGameEvent_jockey_ride_end",
    "OnGameEvent_jockey_killed",
    "OnGameEvent_non_melee_fired",
    "OnGameEvent_infected_decapitated",
    "OnGameEvent_upgrade_pack_added",
    "OnGameEvent_vomit_bomb_tank",
    "OnGameEvent_triggered_car_alarm",
    "OnGameEvent_panic_event_finished",
    "OnGameEvent_charger_charge_start",
    "OnGameEvent_charger_charge_end",
    "OnGameEvent_charger_carry_start",
    "OnGameEvent_charger_carry_end",
    "OnGameEvent_charger_impact",
    "OnGameEvent_charger_pummel_start",
    "OnGameEvent_charger_pummel_end",
    "OnGameEvent_strongman_bell_knocked_off",
    "OnGameEvent_molotov_thrown",
    "OnGameEvent_gas_can_forced_drop",
    "OnGameEvent_explain_survivor_glows_disabled",
    "OnGameEvent_explain_item_glows_disabled",
    "OnGameEvent_explain_rescue_disabled",
    "OnGameEvent_explain_bodyshots_reduced",
    "OnGameEvent_explain_witch_instant_kill",
    "OnGameEvent_set_instructor_group_enabled",
    "OnGameEvent_stashwhacker_game_won",
    "OnGameEvent_versus_marker_reached",
    "OnGameEvent_start_score_animation",
    "OnGameEvent_survival_round_start",
    "OnGameEvent_scavenge_gas_can_destroyed",
    "OnGameEvent_server_spawn",
    "OnGameEvent_server_pre_shutdown",
    "OnGameEvent_server_shutdown",
    "OnGameEvent_server_cvar",
    "OnGameEvent_server_message",
    "OnGameEvent_server_addban",
    "OnGameEvent_server_removeban",
    "OnGameEvent_player_connect",
    "OnGameEvent_player_info",
    "OnGameEvent_player_disconnect",
    "OnGameEvent_player_activate",
    "OnGameEvent_player_connect_full",
    "OnGameEvent_player_say",
];

_eventCallbackScope <- {};

// string name -> GameHookMgr mgr
_gameHookMgrs <- {};

// string funcName -> callback{function(params) rawFunc, function(params) func}
// local eventCallbacks = {};

// local function _InitEventCallbackScope()
// {
//     foreach (callbackName in eventCallbackNames)
//     {
//         local argCallbackName = callbackName;
//         _eventCallbackScope[callbackName] <- function(params) {
//             if (argCallbackName in eventCallbacks)
//             {
//                 local callbacks = eventCallbacks[argCallbackName];
//                 foreach (callback in callbacks)
//                 {
//                     (callback.func)(params);
//                 }
//             }
//         }
//     }
// }

// local function _InitEventCallbackTable()
// {
//     foreach (callbackName in eventCallbackNames)
//     {
//         eventCallbacks[callbackName] <- [];
//     }
// }

function InitHookSystem()
{
    RegisterAllGameHookMgrs();
    InitGameHookScope();
}

function TryCollectGameHooks()
{
    printl("[KtScript] Try to collect game hooks.")
    local id = "KtScript_GameHooksCollected";
    if (!(id in g_RoundState))
    {
        g_RoundState[id] <- true;
        __CollectEventCallbacks(_eventCallbackScope, "OnGameEvent_", "GameEventCallbacks", RegisterScriptGameEventListener);
        InitScriptedModeCallbacks();
        //__CollectEventCallbacks(_eventCallbackScope, "OnScriptEvent_", "ScriptEventCallbacks", RegisterScriptGameEventListener);
        printl("[KtScript] Game hooks have been collected.");
    }
}

class GameHookMgr
{
    _callbacks = null;

    constructor()
    {
        _callbacks = [];
    }

    function GetName()
    {
        throw "not implemented!";
    }

    function GetFuncIter()
    {
        foreach (callback in _callbacks)
        {
            yield callback.func;
        }
    }

    function Register(rawFunc, func = null)
    {
        if (func == null)
        {
            func = rawFunc;
        }
        _callbacks.append({rawFunc = rawFunc, func = func});
    }

    function Unregister(func)
    {
        local count = _callbacks.len();
        for (local i = 0; i < count; i++)
        {
            local callback = _callbacks[i];
            if (callback.rawFunc == func)
            {
                _callbacks.remove(i);
                return true;
            }
        }
        return false;
    }
}

class GameEventHookMgr extends GameHookMgr
{
    _name = null;

    constructor(name)
    {
        base.constructor();
        _name = name;
    }

    function GetName()
    {
        return _name;
    }

    function Invoke(params)
    {
        foreach (func in GetFuncIter())
        {
            func(params);
        }
    }
}

class OnShutdownHookMgr extends GameHookMgr
{
    constructor()
    {
        base.constructor();
    }

    function GetName()
    {
        return "OnShutdown";
    }

    function Invoke()
    {
        foreach (func in GetFuncIter())
        {
            func();
        }
    }
}

// class _HookMgr extends GameHookMgr
// {
//     constructor()
//     {
//         base.constructor();
//     }

//     function GetName()
//     {
//         return "_";
//     }

//     function Invoke()
//     {
//         foreach (func in GetFuncIter())
//         {
//             //todo
//         }
//     }
// }

class AllowBashHookMgr extends GameHookMgr
{
    constructor()
    {
        base.constructor();
    }

    function GetName()
    {
        return "AllowBash";
    }

    function Invoke(basher, bashee)
    {
        local bashAll = DirectorScript.ALLOW_BASH_ALL;
        local bashPushOnly = DirectorScript.ALLOW_BASH_PUSHONLY;
        local bashNone = DirectorScript.ALLOW_BASH_NONE;

        local result = bashAll;
        foreach (func in GetFuncIter())
        {
            local result0 = func(basher, bashee);
            if (result0 == null)
            {
                continue;
            }
            if (result0 == bashNone)
            {
                result = result0;
            }
            else if (result0 == bashPushOnly)
            {
                if (result == bashAll)
                {
                    result = result0;
                }
            }
        }
        return result;
    }
}

class AllowTakeDamageHookMgr extends GameHookMgr
{
    constructor()
    {
        base.constructor();
    }

    function GetName()
    {
        return "AllowTakeDamage";
    }

    function Invoke(damageTable)
    {
        local result = true;
        foreach (func in GetFuncIter())
        {
            local result0 = func(damageTable);
            if (result0 == null)
            {
                continue;
            }
            if (!result0)
            {
                result = false;
            }
        }
        return result;
    }
}

class BotQueryHookMgr extends GameHookMgr
{
    constructor()
    {
        base.constructor();
    }

    function GetName()
    {
        return "BotQuery";
    }

    function Invoke(queryflag, entity, defaultvalue)
    {
        local result = true;
        foreach (func in GetFuncIter())
        {
            local result0 = func(queryflag, entity, defaultvalue);
            if (result0 == null)
            {
                continue;
            }
            if (!result0)
            {
                result = false;
            }
        }
        return result;
    }
}

class CanPickupObjectHookMgr extends GameHookMgr
{
    constructor()
    {
        base.constructor();
    }

    function GetName()
    {
        return "CanPickupObject";
    }

    function Invoke(object)
    {
        local result = false;
        foreach (func in GetFuncIter())
        {
            local result0 = func(object);
            if (result0 == null)
            {
                continue;
            }
            if (result0)
            {
                result = true;
            }
        }
        return result;
    }
}

class InterceptChatHookMgr extends GameHookMgr
{
    constructor()
    {
        base.constructor();
    }

    function GetName()
    {
        return "InterceptChat";
    }

    function Invoke(message, speaker)
    {
        local result = true;
        foreach (func in GetFuncIter())
        {
            local result0 = func(message, speaker);
            if (result0 == null)
            {
                continue;
            }
            if (!result0)
            {
                result = false;
            }
        }
        return result;
    }
}

class UserConsoleCommandHookMgr extends GameHookMgr
{
    constructor()
    {
        base.constructor();
    }

    function GetName()
    {
        return "UserConsoleCommand";
    }

    function Invoke(player, arg)
    {
        foreach (func in GetFuncIter())
        {
            func(player, arg);
        }
    }
}

function RegisterGameHookMgr(mgr)
{
    _gameHookMgrs[mgr.GetName()] <- mgr;
}

function RegisterAllGameHookMgrs()
{
    foreach (name in GameEventCallbackNames)
    {
        RegisterGameHookMgr(GameEventHookMgr(name));
    }

    RegisterGameHookMgr(OnShutdownHookMgr());
    RegisterGameHookMgr(AllowBashHookMgr());
    RegisterGameHookMgr(AllowTakeDamageHookMgr());
    RegisterGameHookMgr(BotQueryHookMgr());
    RegisterGameHookMgr(CanPickupObjectHookMgr());
    RegisterGameHookMgr(InterceptChatHookMgr());
    RegisterGameHookMgr(UserConsoleCommandHookMgr());
}

function InitGameHookScope()
{
    foreach (callbackName in GameEventCallbackNames)
    {
        local callbackName0 = callbackName;
        _eventCallbackScope[callbackName0] <- function(params) {
            if (callbackName0 in _gameHookMgrs)
            {
                local hookMgr = _gameHookMgrs[callbackName0];
                hookMgr.Invoke(params);
            }
        }.bindenv(_ctx);
    }
}

_lastReplacedGameHook_OnShutdown <- null;
_lastReplacedGameHook_AllowBash <- null;
_lastReplacedGameHook_AllowTakeDamage <- null;
_lastReplacedGameHook_BotQuery <- null;
_lastReplacedGameHook_CanPickupObject <- null;
_lastReplacedGameHook_InterceptChat <- null;
_lastReplacedGameHook_UserConsoleCommand <- null;

function InitScriptedModeCallbacks()
{
    local targetScope = g_MapScript;

    local TryReplaceGameHook = function(name) {
        local lastHookFieldName = "_lastReplacedGameHook_" + name;
        if (this[lastHookFieldName] != null)
        {
            UnregisterGameHook(name, this[lastHookFieldName]);
        }
        if (name in targetScope)
        {
            local rawFunc = targetScope[name];
            local replacedFuncName = name + "_Replaced";
            targetScope[replacedFuncName] <- rawFunc;
            local paramCount = rawFunc.getinfos().parameters.len();
            local paramCode = "";
            for (local i = 1; i <= paramCount; i++)
            {
                paramCode += "p" + i.tostring();
                if (i != paramCount)
                {
                    paramCode += ",";
                }
            }
            local func = compilestring(format("return function(%s){g_MapScript.%s(%s);}", paramCode, replacedFuncName, paramCode));
            RegisterGameHook(name, func);
            this[lastHookFieldName] = func;
        }
    }

    TryReplaceGameHook("OnShutdown");
    local hookMgr_OnShutdown = _gameHookMgrs["OnShutdown"];
    targetScope.OnShutdown <- function() {
        hookMgr_OnShutdown.Invoke();
    }

    TryReplaceGameHook("AllowBash");
    local hookMgr_AllowBash = _gameHookMgrs["AllowBash"];
    targetScope.AllowBash <- function(basher, bashee) {
        return hookMgr_AllowBash.Invoke(basher, bashee);
    }

    TryReplaceGameHook("AllowTakeDamage");
    local hookMgr_AllowTakeDamage = _gameHookMgrs["AllowTakeDamage"];
    targetScope.AllowTakeDamage <- function(damageTable) {
        return hookMgr_AllowTakeDamage.Invoke(damageTable);
    }

    TryReplaceGameHook("BotQuery");
    local hookMgr_BotQuery = _gameHookMgrs["BotQuery"];
    targetScope.BotQuery <- function(queryflag, entity, defaultvalue) {
        return hookMgr_BotQuery.Invoke(queryflag, entity, defaultvalue);
    }

    TryReplaceGameHook("CanPickupObject");
    local hookMgr_CanPickupObject = _gameHookMgrs["CanPickupObject"];
    targetScope.CanPickupObject <- function(object) {
        return hookMgr_CanPickupObject.Invoke(object);
    }

    TryReplaceGameHook("InterceptChat");
    local hookMgr_InterceptChat = _gameHookMgrs["InterceptChat"];
    targetScope.InterceptChat <- function(message, speaker) {
        return hookMgr_InterceptChat.Invoke(message, speaker);
    }

    TryReplaceGameHook("UserConsoleCommand");
    local hookMgr_UserConsoleCommand = _gameHookMgrs["UserConsoleCommand"];
    targetScope.UserConsoleCommand <- function(player, arg) {
        hookMgr_UserConsoleCommand.Invoke(player, arg);
    }
}

// Obsolete(use RegisterHooksInScope instead)
function RegisterEventCallbacks(envObj, scope)
{
    RegisterGameHooksInScope(scope, envObj);
}

function RegisterGameHooksInScope(scope, envObj = null)
{
    foreach (key, val in scope)
    {
        if (key in _gameHookMgrs)
        {
            local hookMgr = _gameHookMgrs[key];
            local rawFunc = val;
            local func = envObj == null ? rawFunc : rawFunc.bindenv(envObj);
            hookMgr.Register(rawFunc, func);
        }
    }
}

local function GetGameHookMgr(name)
{
    if (!(name in _gameHookMgrs))
    {
        throw "Invalid game hook name: " + name;
    }
    return _gameHookMgrs[name];
}

function RegisterGameHook(name, func, envObj = null)
{
    local hookMgr = GetGameHookMgr(name);
    hookMgr.Register(func, envObj == null ? func : func.bindenv(envObj));
}

function UnregisterGameHook(name, func)
{
    local hookMgr = GetGameHookMgr(name);
    hookMgr.Unregister(func);
}
