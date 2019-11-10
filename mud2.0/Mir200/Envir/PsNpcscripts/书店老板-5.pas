{********************************************************************

*******************************************************************}

Program Mir2;

Procedure _doexit;
begin
   This_Npc.CloseDialog(This_Player);
end;

procedure _Exit;
begin
  This_Npc.CloseDialog(This_Player);
end;


procedure _help33;
begin
   This_Npc.NpcDialog(This_Player,
   'ʩ��������԰����²���������\'+
   'Lv.1 : ������ڵ� 14 ����ʼ����.\'+
   'Lv.2 : ������ڵ� 17 ����ʼ����.\'+
   'Lv.3 : ������ڵ� 20 ����ʼ����.\ \'+
   '|{cmd}<����/@helpbooks>');
end;

procedure _help32;
begin
   This_Npc.NpcDialog(This_Player,
   '������ս������԰����²���������\'+
   'Lv.1 : ������ڵ� 9 ����ʼ����.\'+
   'Lv.2 : ������ڵ� 13 ����ʼ����.\'+
   'Lv.3 : ������ڵ� 19 ����ʼ����.\ \'+
   '|{cmd}<����/@helpbooks>');
end;

procedure _help31;
begin
   This_Npc.NpcDialog(This_Player,
   '����������԰����²���������\'+
   'Lv.1 : ������ڵ� 7 ����ʼ����.\'+
   'Lv.2 : ������ڵ� 11 ����ʼ����.\'+
   'Lv.3 : ������ڵ� 16 ����ʼ����. \ \'+
   '|{cmd}<����/@helpbooks>');
end;

procedure _help22;
begin
   This_Npc.NpcDialog(This_Player,
   '���������԰����²���������\'+
   'Lv.1: ������ڵ� 19 ����ʼ������\'+
   'Lv.2: ������ڵ� 23 ����ʼ������\'+
   'Lv.3: ������ڵ� 25 ����ʼ������\ \'+
   '|{cmd}<����/@helpbooks>');
end;

procedure _help21;
begin
   This_Npc.NpcDialog(This_Player,
   '����������԰����²���������\'+
   'Lv.1: ������ڵ� 7 ����ʼ������\'+
   'Lv.2: ������ڵ� 11 ����ʼ������\'+
   'Lv.3: ������ڵ� 16 ����ʼ������\ \'+
   '|{cmd}<����/@helpbooks>');
end;

procedure _help12;
begin
   This_Npc.NpcDialog(This_Player,
   '��ɱ��������԰����²���������\'+
   'Lv.1 : ������ڵ� 19 ����ʼ������\'+
   'Lv.2 : ������ڵ� 22 ����ʼ������\' +
   'Lv.3 : ������ڵ� 24 ����ʼ������\ \'+
   '|{cmd}<����/@helpbooks>');
end;

procedure _help11;
begin
   This_Npc.NpcDialog(This_Player,
   '������������԰����²���������\'+
   'Lv.1 : ������ڵ� 7 ����ʼ����\'+
   'Lv.2 : ������ڵ� 11 ����ʼ����\' +
   'Lv.3 : ������ڵ� 16 ����ʼ����\ \' +
   '|{cmd}<����/@helpbooks>');
end;



Procedure _helpbooks;
begin
   This_Npc.NpcDialog(This_Player,
   '������������Ȥ��\ \'+
   '|��ʿ����ѧ<��������/@help11>��<��ɱ����/@help12>��\'+
   '|ħ��ʦ����ѧ<������/@help21>��<�����/@help22>��\'+
   '|��ʿ����ѧ <������/@help31>��<������ս��/@help32>,��<ʩ����/@help33>��\ \'+
   '|{cmd}<����/@main>');
end;


Procedure _sell;
begin
   This_Npc.NpcDialog(This_Player,
   '���ҿ�������顣\ \ \'+
   '|{cmd}<����/@main>');
   This_Npc.Click_Sell(This_Player);
end;



Procedure _buy;
Begin
   This_Npc.NpcDialog(This_Player,
   '��ѡ������Ҫ����顣\ \ \'+
   '|{cmd}<����/@main>');
   This_Npc.Click_Buy(This_Player);
end;


procedure OnInitialize;
begin
//  DebugOut('OnInitalize');
  This_Npc.SetRebate(100);
  //���ص���
  This_NPC.FillGoods('������', 100, 1);
  This_NPC.FillGoods('������', 100, 1);
  This_NPC.FillGoods('��������', 100, 1);
  This_NPC.FillGoods('������ս��', 100, 1);
  This_NPC.FillGoods('�����', 100, 1);
  This_NPC.FillGoods('��ɱ����', 100, 1);
  This_NPC.FillGoods('ʩ����', 100, 1);
  This_NPC.FillGoods('���ܻ�', 100, 1);
  This_NPC.FillGoods('������', 100, 1);
  This_NPC.FillGoods('�׵���', 100, 1);
  This_NPC.FillGoods('�����Ӱ', 100, 1);
  This_NPC.FillGoods('�����', 100, 1);
  This_NPC.FillGoods('�����', 100, 1);
  This_NPC.FillGoods('��ʥս����', 100, 1);
  This_NPC.FillGoods('��ɱ����', 100, 1);
  This_NPC.FillGoods('��ħ��', 100, 1);
  This_NPC.FillGoods('�ٻ�����', 100, 1);
  This_NPC.FillGoods('������', 100, 1);
  This_NPC.FillGoods('����������', 100, 1);
  This_NPC.FillGoods('�ջ�֮��', 100, 1);
  This_NPC.FillGoods('˲Ϣ�ƶ�', 100, 1);
  This_NPC.FillGoods('��ǽ', 100, 1);
  This_NPC.FillGoods('���ѻ���', 100, 1);
  This_NPC.FillGoods('�����׹�', 100, 1);
  This_NPC.FillGoods('�����䵶', 100, 1);
  This_NPC.FillGoods('Ұ����ײ', 100, 1);
  This_NPC.FillGoods('������ʾ', 100, 1);
  This_NPC.FillGoods('Ⱥ��������', 100, 1);
  This_NPC.FillGoods('ħ����', 100, 1);
  This_NPC.FillGoods('ʥ����', 100, 1);
  //����stdmode
  This_NPC.AddStdMode(3);
  This_NPC.AddStdMode(4);
end;



Begin
   This_Npc.NpcDialog(This_Player,
   '��ӭ��������Щ����������\ \ \'+
   '|{cmd}<����/@buy>                      ^<����/@sell>   \'+
   '|{cmd}<ѯ�ʸ����似��ϸ��/@helpbooks> \'+
   '|{cmd}<�˳�/@doexit>');
end.