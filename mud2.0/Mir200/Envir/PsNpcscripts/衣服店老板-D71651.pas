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
   '�����ȥҪ�޸�����Ʒ��\ \ \'+
   '|{cmd}<����/@main>');
   This_Npc.Click_Repair(This_Player);
end;

procedure RepairDone;
begin
  This_Npc.NpcDialog(This_Player,
  '�޵û��㲻��\ \ \' +
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
   '�Ѿ�������ˣ��������ܲ����\ \' +
   '|{cmd}<����/@main>');
end;

procedure OnInitialize;
begin
//  DebugOut('OnInitalize');
  This_Npc.SetRebate(200);

  //����stdmode
  This_NPC.AddStdMode(10);
  This_NPC.AddStdMode(11);
  This_NPC.AddStdMode(15);
end;

Procedure _Normal;
Begin
   This_Npc.NpcDialog(This_Player,
   '������·���������˺ܶ��Ե���ʿ��\'+
   '���ҵ���������Ϊ������������ǰ���\'+
   '�޸��·���ͷ��������Ҫ�޸��·���ͷ����\ \'+
   '|{cmd}<�޸��·�/@repair> ' + addspace(' ',22) + '^<��������/@s_repair>\' +
   '|{cmd}<�˳�/@doexit>');
end;

Begin
      _Normal;
end.