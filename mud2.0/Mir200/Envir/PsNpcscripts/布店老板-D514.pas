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
   '��ֻ���·���\'+
   '��ʵ���Ľ��˲�����������Ǹ��ģ�\'+
   'ֻ��û��ʵ�����˲�ʲô������\ \'+
   '|{cmd}<����/@main>');
   This_Npc.Click_Repair(This_Player);
end;

procedure RepairDone;
begin
  This_Npc.NpcDialog(This_Player,
  '�㿴���ǲ��Ǻܳ�ɫ��\ \ \' +
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
  This_Npc.SetRebate(100);

  //����stdmode
  This_NPC.AddStdMode(10);
  This_NPC.AddStdMode(11);
end;


Begin
   This_Npc.NpcDialog(This_Player,
   '��ã�Ǯ�ٺã���Ҳ����������ôΣ�յĵط��ˣ���֪������\'+
   '��������ø����𣿼�Ǯ����һ��ʱ������������Ҷ�����˵�ˣ�\'+
   '�㻹��ֵĻ�����ô�Ҿ�Ϊ����һ�ˣ������۹���ֵ����ġ�\ \'+
   '|{cmd}<�޲�����/@repair>  ' + addspace(' ',26) + '^<��������/@s_repair>\' +
   '|{cmd}<�˳�/@doexit>');
end.