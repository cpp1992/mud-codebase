{********************************************************************

*******************************************************************}


PROGRAM Mir2;

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
   'Ҫ����װ��Ʒ��\ \ \'+
   '|{cmd}<����/@main>');
   This_Npc.Click_Repair(This_Player);
end;

procedure RepairDone;
begin
  This_Npc.NpcDialog(This_Player,
    '����û�����ԡ�\ \ \' +
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
  This_Npc.SetRebate(200);

  //����stdmode 
  This_NPC.AddStdMode(19);
  This_NPC.AddStdMode(20);
  This_NPC.AddStdMode(21);
  This_NPC.AddStdMode(22);
  This_NPC.AddStdMode(23);
  This_NPC.AddStdMode(24);
  This_NPC.AddStdMode(26);
end;

Procedure _Normal;
begin
   This_Npc.NpcDialog(This_Player,
   '��Ҳ��Ϊ��Ѱ���µĶ����������������\'+
   '��ҲӦ��֪�������Σ�ա����ܹ�����ľ�������װ��Ʒ��\ \'+
   '|{cmd}<����װ��Ʒ/@repair> ' + addSpace(' ',24) + '^<��������/@s_repair>\'+
   '|{cmd}<�˳�/@doexit>');
end;

Begin
      _Normal;
end.