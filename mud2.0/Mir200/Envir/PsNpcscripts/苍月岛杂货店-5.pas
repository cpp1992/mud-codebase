{
/************************************************************************}

PROGRAM Mir2;

{$I common.pas}

Procedure _doexit;
begin
   This_Npc.CloseDialog(This_Player);
end;


Procedure _sell;
begin
   This_Npc.NpcDialog(This_Player,
   '���ǳ��ۻ���������ᣬ�޸��͵�.\ \ \'+
   '|{cmd}<����/@main>');
   This_Npc.Click_Sell(This_Player);
end;



Procedure _buy;
Begin
   This_Npc.NpcDialog(This_Player,
   '����Ҫ������Ʒ��?\ \ \'+
   '|{cmd}<����/@main>');
   This_Npc.Click_Buy(This_Player);
end;


procedure OnInitialize;

begin
//  DebugOut('OnInitalize');
  This_Npc.SetRebate(100);

  //���ص���
  This_NPC.FillGoods('�������Ѿ�', 100, 1);
  This_NPC.FillGoods('������;�', 100, 1); 
  This_NPC.FillGoods('�������Ѿ��', 100, 1);
  This_NPC.FillGoods('������;��', 100, 1);
  This_NPC.FillGoods('�����', 100, 1);
  This_NPC.FillGoods('�����(��)', 100, 1);
  This_NPC.FillGoods('���������', 10, 1);
  This_NPC.FillGoods('�޸���', 50, 1);
  //����stdmode 
  This_NPC.AddStdMode(25);
  This_NPC.AddStdMode(3);
end;


var
j : integer;

Begin
   j := random(2);
   if j = 1 then 
   begin
   This_Npc.NpcDialog(This_Player,
   '��֣������ҩ��������ô��ô�ã�����˿�ӯ�š�\'+
   '�����ħϮ���¼�Խ��ԽƵ���������ڵ�С����Ϣ\'+
   '˵�ƺ��Ͳر�ͼ�йأ�����Ȥ�㲻��ȥ����һ��Ŷ��\ \'+
   '|{cmd}<������Ʒ/@buy> '+addspace(' ',20)+'|{cmd}<������Ʒ/@sell> \'+
   '|{cmd}<�˳�/@doexit>');
   end;
   if j = 0 then 
   begin
   This_Npc.NpcDialog(This_Player,
   '��ð���������㶫����\'+
   '����������õĺܣ���������򲻵��ˣ� \ \'+
   '|{cmd}<������Ʒ/@buy> '+addspace(' ',20)+'|{cmd}<������Ʒ/@sell> \'+
   '|{cmd}<�˳�/@doexit>');
   end;
end.