{********************************************************************

*******************************************************************}
Program Mir2;


{$I common.pas}


Procedure _doexit;
Begin
   This_Npc.CloseDialog(This_Player);
end;

procedure _Exit;
begin
  This_Npc.CloseDialog(This_Player);
end;


Procedure _repair;
Begin
   This_Npc.NpcDialog(This_Player,
   '�����޸��·���ͷ����ñ�ӡ�\ \ \'+
   '|{cmd}<����/@main>');
   This_Npc.Click_Repair(This_Player);
end;

procedure RepairDone;
begin
  This_Npc.NpcDialog(This_Player,
  '�����޲��úܲ���\ \ \' +
  '|{cmd}<����/@main>');
end;

Procedure _s_repair;
Begin
   This_Npc.NpcDialog(This_Player,
   '����һ� !���̫������...������������Ĳ����������޲�����\'+
   '����������ͨ��������\ \'+
   '|{cmd}<����/@main>');
   This_Npc.Click_SRepair(This_Player);
end;


procedure SRepairDone;
begin
   This_Npc.NpcDialog(This_Player,
   '�޵û��㲻��\ \ \' +
   '|{cmd}<����/@main>');
end;

Procedure _sell;
begin
   This_Npc.NpcDialog(This_Player,
   '�����ȥҪ�����·����Ҹ����ۡ�\'+
   'ͷ����ñ��Ҳ�չ�����������һ�����ɡ�\ \'+
   '|{cmd}<����/@main>');
   This_Npc.Click_Sell(This_Player);
end;



Procedure _buy;
Begin
   This_Npc.NpcDialog(This_Player,
   '������ʲô�����·���\ \ \'+
   '|{cmd}<����/@main>');
   This_Npc.Click_Buy(This_Player);
end;


procedure OnInitialize;
begin
//  DebugOut('OnInitalize');
  This_Npc.SetRebate(100);

  //���ص���
  This_NPC.FillGoods('����(��)', 50, 1);
  This_NPC.FillGoods('����(Ů)', 50, 1); 
  This_NPC.FillGoods('���Ϳ���(��)', 50, 1);
  This_NPC.FillGoods('���Ϳ���(Ů)', 50, 1);
  This_NPC.FillGoods('���Ϳ���(��)', 50, 1);
  This_NPC.FillGoods('���Ϳ���(Ů)', 50, 1);
  //����stdmode
  This_NPC.AddStdMode(10);
  This_NPC.AddStdMode(11);
  This_NPC.AddStdMode(15);
end;


Begin
    //IF (random(10) = 0) and (This_Player.GetV(9,20) = 1) then
    IF (random(10) = 0) and ((This_Player.GetV(11,1) = 4) or (This_Player.GetV(11,1) = 5))then
    begin
    //This_Player.SetV(9,12,1);
    This_Player.SetV(11,1,5);
    This_Npc.NpcDialog(This_Player,
          '�ڽ��Ҹ��׵������� \'
          +'�Ҹ���ԭ���ڱ���ʡ��ջ�����⣬\'
          +'��һȺ��ͽ���۸���Ϊ��ɢɢ�ģ�\'
          +'������ɭ��ȥ���Σ�֮���û�����š� \'
          +'����Ե��Ǳ�ȥ�ҡ�\ \'
          +'|{cmd}<�ر�/@exit>'
          );
    
    end else
   This_Npc.NpcDialog(This_Player,
   '��ӭ���٣���ʲô������Ҫ�Ұ�æ��\ \'+
   '|{cmd}<���·�/@buy>  ' + addspace(' ',20) + '^<���·�/@sell>  \'+
   '|{cmd}<�޲��·�/@repair>  ' + addspace(' ',18) + '^<��������/@s_repair>\' +
   '|{cmd}<�˳�/@doexit>');
end.