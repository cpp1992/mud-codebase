{
/************************************************************************}


PROGRAM Mir2;

{$I common.pas}

Procedure _doexit;
begin
   This_Npc.CloseDialog(This_Player);
end;


Procedure _repair;
Begin
   This_Npc.NpcDialog(This_Player,
   '你可以修理各种首饰. \ \ \'+
   '|{cmd}<返回/@main>');
   This_Npc.Click_Repair(This_Player);
end;

procedure RepairDone;
begin
  This_Npc.NpcDialog(This_Player,
    '看上去修好了.\ \' +
    '|{cmd}<返回/@main>'
  );
end;

Procedure _s_repair;
Begin
   This_Npc.NpcDialog(This_Player,
   '你这家伙，你可太幸运了，我正好有材料做特殊修补，\'+
   '但费用是普通的三倍！\ \'+
   '|{cmd}<返回/@main>');
   This_Npc.Click_SRepair(This_Player);
end;


procedure SRepairDone;
begin
   This_Npc.NpcDialog(This_Player,
   '已经修理好了，看起来很不错嘛！\' +
   '|{cmd}<返回/@main>');
end;

Procedure _sell;
begin
   This_Npc.NpcDialog(This_Player,
   '您出售哪种首饰?\'+
   '我们也处理首饰.\ \'+
   '|{cmd}<返回/@main>');
   This_Npc.Click_Sell(This_Player);
end;



Procedure _buy;
Begin
   This_Npc.NpcDialog(This_Player,
   '请选择你要购买的首饰.\ \ \'+
   '|{cmd}<返回/@main>');
   This_Npc.Click_Buy(This_Player);
end;


procedure OnInitialize;

var
i : integer;

begin
//  DebugOut('OnInitalize');
  This_Npc.SetRebate(100);

  //加载道具
  This_NPC.FillGoods('小手镯', 3, 3);
  This_NPC.FillGoods('银手镯', 3, 3); 
  This_NPC.FillGoods('铁手镯', 3, 3);
  This_NPC.FillGoods('金项链', 3, 3);
  This_NPC.FillGoods('传统项链', 3, 3);
  This_NPC.FillGoods('古铜戒指', 3, 3);
  This_NPC.FillGoods('六角戒指', 3, 3);
  This_NPC.FillGoods('玻璃戒指', 3, 3);
  //加载stdmode 
  This_NPC.AddStdMode(26);
  for i := 19 to 24 do 
  This_NPC.AddStdMode(i);
end;

var
j : integer;

Begin
   j := random(2);
   if j = 1 then 
   begin
   This_Npc.NpcDialog(This_Player,
   '最近封魔那死对头抢了我好多生意，据说是好多人到她那去\'+
   '修理雷霆战戒等等贵重物品，使得她的手艺一下子突飞猛进。\'+
   '看样子我得努力了，不然迟早会被她淘汰的......嘿咻嘿咻,努力！\'+
   '听说土城的首饰店老板可以升级雷霆、烈焰、光芒系列首饰，\'+
   '要么你去找他打听打听吧，或许能对你有帮助。\ \'+
   '|{cmd}<购买首饰/@buy> '+addspace(' ',20)+'|{cmd}<出售首饰/@sell> \'+
   '|{cmd}<修理首饰/@repair> '+addspace(' ',20)+'|{cmd}<特殊修理/@s_repair>\'+
   '|{cmd}<退出/@doexit>');
   end;
   if j = 0 then 
   begin
   This_Npc.NpcDialog(This_Player,
   '手镯，项链，戒指都让我来帮你处理好了。\'+
   '听说土城的首饰店老板可以升级雷霆、烈焰、光芒系列首饰，\'+
   '要么你去找他打听打听吧，或许能对你有帮助。\ \'+
   '|{cmd}<购买首饰/@buy> '+addspace(' ',20)+'|{cmd}<出售首饰/@sell> \'+
   '|{cmd}<修理首饰/@repair> '+addspace(' ',20)+'|{cmd}<特殊修理/@s_repair>\'+
   '|{cmd}<退出/@doexit>');
   end;
end.