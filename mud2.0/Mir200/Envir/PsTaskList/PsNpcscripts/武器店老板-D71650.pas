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
   'Ҫ��������������ʲô������\ \'+
   '|{cmd}<����/@main>');
   This_Npc.Click_Repair(This_Player);
end;

procedure RepairDone;
begin
  This_Npc.NpcDialog(This_Player,
    '����Ҫ�������\ \' +
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
  This_NPC.AddStdMode(5);
  This_NPC.AddStdMode(6);
end;

Procedure _Normal;
begin
   This_Npc.NpcDialog(This_Player,
   '������������ʿ��˵�������͸�����һ�������ʱ�̲�׼���ţ�\'+
   '��ô��Ҳ���Ϊ���ϵ����á�Ҫ�����кü���������ô���Բ�\'+
   '������������ô�������������������������ɣ�\ \'+
   '|{cmd}<��������/@repair> ' + addSpace(' ',24) + '^<��������/@s_repair>\'+
   '|{cmd}<�˳�/@doexit>');
end;

Begin
      _Normal;
end.