{********************************************************************

*******************************************************************}

program mir2;

{$I common.pas}

procedure _DoExit;
begin
  This_Npc.CloseDialog(This_Player);
end;

procedure _Exit;
begin
  This_Npc.CloseDialog(This_Player);
end;

procedure domain;
begin
  This_Npc.NpcDialog(This_Player,
  '欢迎！这里有你想要的手套。\'
  +'|{cmd}<买手套/@buy> \'
  +'|{cmd}<卖手套/@sell> \'
  +'|{cmd}<修补手套/@repair> \'
  +'|{cmd}<特殊修理/@s_repair>\'
  +'|{cmd}<返回盟重/@moveout>\'
  +'|{cmd}<退出/@doexit>'
  );
end;

procedure _moveout;
begin  
    if This_Player.MapName = '0149' then 
    This_Player.Flyto('3',313 + random(3) - 1,303 + random(3) - 1); 
end;

procedure _buy;
begin
  This_Npc.NpcDialog(This_Player, 
    '你想买点什么？\ \ \|{cmd}<返回/@main>'
  );
  This_Npc.Click_Buy(This_Player);
end;

procedure _Sell;
begin
  This_Npc.NpcDialog(This_Player, 
    '把你要卖的东西给我看看，我会给你一个估价...\ \|{cmd}<返回/@main>'
  );
  This_Npc.Click_Sell(This_Player);
end;

procedure _Repair;
begin
  This_Npc.NpcDialog(This_Player,
    '这里你可以修补手套.\ \|{cmd}<返回/@main>'
  );
  This_Npc.Click_Repair(This_Player);
end;

procedure RepairDone;
begin
  This_Npc.NpcDialog(This_Player,
    '这个看上去已经补好了。\ \|{cmd}<返回/@main>'
  );
end;

procedure _S_Repair;
begin
  This_Npc.NpcDialog(This_Player,
    '你这家伙 !你可太幸运了...我正好有所需的材料做特种修补。\但价格嘛……是通常的三倍。\ \ \|{cmd}<返回/@main>'
  );
  This_Npc.Click_SRepair(This_Player);
end;

procedure SRepairDone;
begin
  This_Npc.NpcDialog(This_Player,
    '看上去它已经修好了...\请好好的使用它.\ \' +
    '|{cmd}<返回/@main>'
  );
end;



//初始化操作
procedure OnInitialize;
begin
  This_Npc.AddStdMode(26);
  This_Npc.FillGoods('皮制手套',5,1);
  This_Npc.SetRebate(100);
end;

//脚本执行的入口
begin
  domain;
end.  