{********************************************************************

*******************************************************************}

Program Mir2;


{$I common.pas}



Procedure _repair;
Begin
   This_Npc.NpcDialog(This_Player,
   '��ֻ�������\'+
   '�����Ĺ����ǲ���ʲô�����ģ�\'+
   'ʲô�������ģ��ǿ϶���ƭ�ӡ�����\ \'+
   '|{cmd}<����/@main>');
   This_Npc.Click_Repair(This_Player);
end;

procedure RepairDone;
begin
  This_Npc.NpcDialog(This_Player,
  '������ɵĶ�Ư�������Բ��� ��\ \ \' +
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
end;



Begin
   This_Npc.NpcDialog(This_Player,
   '�٣������Ҷ�ôϲ��Ǯ����ôΣ�յ�������Ҳ������ˡ�\'+
   '��֪�����ҷ��˵ĳɱ��Ƿǳ��ߵġ� \'+
   '��Ӧ�ø�����˫���ļ۸�����������ң�\'+
   'û���κ�����Ļ����޲��·��ҿ��Ƿǳ����ɵİ�.\ \'+
   '|{cmd}<�޲�����/@repair>  ' + addspace(' ',20) + '^<��������/@s_repair>\' +
   '|{cmd}<�˳�/@doexit>');
end.