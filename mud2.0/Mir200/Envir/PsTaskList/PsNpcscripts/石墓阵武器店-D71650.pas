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
  This_NPC.AddStdMode(5);
  This_NPC.AddStdMode(6);
end;

Procedure _Normal;
begin
   This_Npc.NpcDialog(This_Player,
   '������������ʿ��˵�������͸�����һ�������ʱ�̲�׼���ţ�\'+
   '��ô��Ҳ���Ϊ���ϵ����á�Ҫ�����кü���������ô���Բ�\'+
   '������������ô�������������������������ɣ�\ \'+
   '|{cmd}<��������/@repair> '+AddSpace(' ',24)+'|{cmd}<��������/@s_repair>\'+
   '|{cmd}<�˳�/@doexit>');
end;

Procedure _QianBeiZou108;
begin
   This_Npc.NpcDialog(This_Player,
   '�ǰ  �˵���������ǵ�ʱ̫�嶯�ˣ�һ������Ϊ���˺�����\'+
   '��ȷȴ�����������ǹ¹µ����ġ�\'+
   '��ȥ�������Ϣ����ʯĹ���·����ϰ�ɣ�һ���������ᣡ\'+
   '������Ŀ�꣺����ʯĹ���ҵ��·����ϰ壩\ \'+
   '|{cmd}<�õģ������ȥ��/@QianBeiZou108_01>');
end;

Procedure _QianBeiZou108_01;
begin
   if This_Player.GetV(108,1) = 11 then
   begin
      This_Player.Give('����',320000);
      This_Player.SetV(108,1,12);
      This_Player.UpdateTaskDetail(108,1);
      This_NPC.CloseDialog(This_Player);
   end;
end;

var
  SM108 : integer; 
Begin
   SM108 := This_Player.GetV(108,1);
   if SM108 = 12 then
   begin
      This_Npc.NpcDialog(This_Player,
      '��ȥ�������Ϣ����ʯĹ���·����ϰ�ɣ�һ���������ᣡ\'+
      '������Ŀ�꣺����ʯĹ���ҵ��·����ϰ壩\ \'+
      '|{cmd}<�õģ������ȥ��/@doexit>\ \'+
      '|{cmd}<����������������/@Normal>');
   end else if SM108 = 11 then
   begin
      This_Npc.NpcDialog(This_Player,
      '�����˼��˵�����Ѿ������˺��һ������˵ĺ����ˣ�\'+
      '���ǵ��ּ�����������ô�ö�û���ҵ�����һ���˾Ͱ쵽�ˣ�\'+
      '���������  ���\ \'+
      '|{cmd}<����ǰ�������������ذ�/@QianBeiZou108>�����˺������˽��ѹ�ȥ��\'+
      '���ıض����ܼ尾��������Ҫ������Щ���ֵ�ʱ��\ \'+
      '|{cmd}<����������������/@Normal>');
   end else
   begin
      _Normal;
   end;
end.