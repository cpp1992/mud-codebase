{
*******************************************************************}


PROGRAM Mir2;

{$I common.pas}

Procedure _doexit;
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
   '����һ���̫�����ˣ��������в����������޲���\'+
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
  This_NPC.AddStdMode(27);
end;

Procedure _Normal;
begin
   This_Npc.NpcDialog(This_Player,
   '��Ҳ��Ϊ��Ѱ���µĶ����������������\'+
   '��ҲӦ��֪�������Σ�ա����ܹ�����ľ�������װ��Ʒ��\ \'+
   '|{cmd}<����װ��Ʒ/@repair> '+AddSpace(' ',24)+'|{cmd}<��������/@s_repair>\'+
   '|{cmd}<�˳�/@doexit>');
end;

Procedure _SMSSRW108;
begin
   if This_Player.GetV(108,1) = 15 then
   begin
      This_Player.Give('����',360000);
      This_Player.SetV(108,1,16);
      This_Player.UpdateTaskDetail(108,1);
      This_NPC.CloseDialog(This_Player);
   end;
end;

var
  SMSS108 : integer;
Begin
   SMSS108 := This_Player.GetV(108,1);
   if SMSS108 = 16 then
   begin
      This_Npc.NpcDialog(This_Player,
      '�������ʰ��ʰ������һ��سǡ����鷳��ʿ����һ����\'+
      '�����ǵ���Ϣ�������˺����������ġ�\'+
      '������Ŀ�꣺�������أ�����Ϣ�������˺���\ \'+
      '|{cmd}<����ǰ���Ǿ��췵�ء�����ͻ�ȥ��֪���˺����ǵ���Ϣ��/@doexit>\ \'+
      '|{cmd}<����������������/@Normal>');
   end else if SMSS108 = 15 then
   begin
      This_Npc.NpcDialog(This_Player,
      '�����ı���Ī�������������˺�����Ը���ˣ�\'+
      '�������ǵ����⣬��������ǣ�ҡ���������ĺܵ�������\'+
      '�������ʰ��ʰ������һ��سǡ����鷳��ʿ����һ����\'+
      '�����ǵ���Ϣ�������˺����������ġ�\'+
      '������Ŀ�꣺�������أ�����Ϣ�������˺���\ \'+
      '|{cmd}<����ǰ���Ǿ��췵�ء�����ͻ�ȥ��֪���˺����ǵ���Ϣ��/@SMSSRW108>\'+
      '|{cmd}<����������������/@Normal>');
   end else
   begin
      _Normal;
   end;
end.