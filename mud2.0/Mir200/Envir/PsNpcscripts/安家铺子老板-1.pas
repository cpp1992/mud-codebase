{********************************************************************

*******************************************************************}

Program Mir2;

{$I common.pas}

Procedure _doexit;
begin
   This_Npc.CloseDialog(This_Player);
end;

procedure _Exit;
begin
  This_Npc.CloseDialog(This_Player);
end;

Procedure _repair;
Begin
   This_Npc.NpcDialog(This_Player,
   '�һ��޺�����\ \ \'+
   '|{cmd}<����/@main>');
   This_Npc.Click_Repair(This_Player);
end;

procedure RepairDone;
begin
  This_Npc.NpcDialog(This_Player,
    '���������Ѿ��޺��ˣ�\'+
    '������б������Ҫ����,������\ \' +
    '|{cmd}<����/@main>'
  );
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
   '�Ѿ�������ˣ��������ܲ����\' +
   '|{cmd}<����/@main>');
end;


procedure OnInitialize;
begin
//  DebugOut('OnInitalize');
  This_Npc.SetRebate(100);
  //����stdmode  
  This_NPC.AddStdMode(5);
  This_NPC.AddStdMode(6);
end;




Begin
      This_Npc.NpcDialog(This_Player,
      '��ӭ���٣���Ҫ�Ұ�ʲôæ��\ \'+  
      '|{cmd}<��������/@repair> \'+
      '|{cmd}<��������/@s_repair>\'+
      '|{cmd}<�˳�/@doexit>');
end.