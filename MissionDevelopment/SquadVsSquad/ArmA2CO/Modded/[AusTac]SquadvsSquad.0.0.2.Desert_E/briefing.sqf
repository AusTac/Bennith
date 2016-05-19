waitUntil {!isNull player};
waitUntil {player==player};
switch (side player) do
{
case WEST:
{

player createDiaryRecord ["Diary",["Credits"," Day and Weather Script - by Moerderhoschi<br /><br />"]];

player createDiaryRecord ["Diary",["Required Mods"," @ACE,<br /> @ACEX,<br /> @ACEX_RU,<br /> @ACEX_USNavy,<br /> @CBA_CO,<br /> @ACRE,<br /> @JayArma2Lib,<br /> @SG_ChechenRebels,<br /> @bb_mercs,<br /> @AusTacEliteUnits<br /> + any clientside mods.<br />"]];

player createDiaryRecord ["Diary",["Weapons and Equipment","You can select from a limited arsenal at your FOB Ammo, Medical crates, so choose wisely as with limited weapons and ammo you may not make the journey.<br /><br />Throughout the maze you may come accross random ammo and medical boxes for resupplying but be aware that these maybe heavly guarded by chechens rebels or IEDS.<br /><br />Need we remind you that grabbing gear of fallen enemies is also a valid option."]];

player createDiaryRecord ["Diary",["SitRep","Starting from your squad FOB, you must venture through a winding, tedious, hostile maze, battling it out with Hostile independant militants, dodge unknown IED placements whilst trying to eliminate the enemy squad and claim their FOB for your own."]];

player createDiaryRecord ["Diary",["About","[AusTac] Mission | Squad vs Squad 0.0.1. Built for Event nights held by [AusTac] and its members.<br /><br />Visit [AusTac] at www.austac.net<br /><br />or join our TeamSpeak on ts3.austac.net.au"]];

player createDiaryRecord ["Diary",["ChangeLog","Version 0.0.2<br /> - Added Revive Params<br /> - Added Respawn Params<br /> - Added ACE Wounds Params<br /> - Added AI Skill Params<br /> - Added Spectating<br /> - Added All Dead End Game<br /> - Added Weather Params<br /> - Added Time of Day Params<br /> - Added ChangeLog<br /> - Updated Mission Notes<br /> - Added Debug Params<br /><br />Version 0.0.1<br /> - Initial BETA Release<br /><br />"]];


};
case EAST:
{

player createDiaryRecord ["Diary",["Required Mods"," @ACE,<br /> @ACEX,<br /> @ACEX_RU,<br /> @ACEX_USNavy,<br /> @CBA_CO,<br /> @ACRE,<br /> @JayArma2Lib,<br /> @SG_ChechenRebels,<br /> @bb_mercs,<br /> @AusTacEliteUnits<br /> + any clientside mods.<br />"]];

player createDiaryRecord ["Diary",["Weapons and Equipment","You can select from a limited arsenal at your FOB Ammo, Medical crates, so choose wisely as with limited weapons and ammo you may not make the journey.<br />Throughout the maze you may come accross random ammo and medical boxes for resupplying but be aware that these maybe heavly guarded by chechens rebels or IEDS.<br />Need we remind you that grabbing gear of fallen enemies is also a valid option."]];

player createDiaryRecord ["Diary",["SitRep","Starting from your squad FOB, you must venture through a winding, tedious, hostile maze, battling it out with Hostile independant militants, dodge unknown IED placements whilst trying to eliminate the enemy squad and claim their FOB for your own."]];

player createDiaryRecord ["Diary",["About","[AusTac] Mission | Squad vs Squad 0.0.1. Built for Event nights held by [AusTac] and its members.<br />Visit [AusTac] at<br />www.austac.net<br />or join our TeamSpeak on<br />ts3.austac.net.au"]];

player createDiaryRecord ["Diary",["ChangeLog","Version 0.0.2<br /> - Added Revive Params<br /> - Added Respawn Params<br /> - Added ACE Wounds Params<br /> - Added AI Skill Params<br /> - Added Spectating<br /> - Added All Dead End Game<br /> - Added Weather Params<br /> - Added Time of Day Params<br /><br />Version 0.0.1<br /> - Initial BETA Release<br /><br />"]];


};
case RESISTANCE:
{
};
case CIVILIAN:
{
};
};