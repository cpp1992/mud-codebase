{
*******************************************************************}
Program Mir2;

Procedure _doexit;
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
   '��ʿ����ѧ<��������/@help11>��<��ɱ����/@help12>��\'+
   'ħ��ʦ����ѧ<������/@help21>��<�����/@help22>��\'+
   '��ʿ����ѧ <������/@help31>��<������ս��/@help32>��<ʩ����/@help33>��\ \'+
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
  This_NPC.FillGoods('ʩ����', 100, 1);
  This_NPC.FillGoods('�����', 100, 1);
  This_NPC.FillGoods('���ܻ�', 100, 1);
  This_NPC.FillGoods('�����', 100, 1);
  This_NPC.FillGoods('�׵���', 100, 1);
  This_NPC.FillGoods('��ɱ����', 100, 1);
  This_NPC.FillGoods('��ɱ����', 100, 1); 
  This_NPC.FillGoods('�����䵶', 100, 1);
  This_NPC.FillGoods('Ұ����ײ', 100, 1);
  This_NPC.FillGoods('�һ𽣷�', 100, 1);
  This_NPC.FillGoods('�ٻ�����', 100, 1);
  This_NPC.FillGoods('������', 100, 1);
  This_NPC.FillGoods('����������', 100, 1);
  This_NPC.FillGoods('�����', 100, 1);
  This_NPC.FillGoods('��ʥս����', 100, 1);
  This_NPC.FillGoods('������ʾ', 100, 1);
  This_NPC.FillGoods('��ħ��', 100, 1); 
  This_NPC.FillGoods('Ⱥ��������', 100, 1);
  This_NPC.FillGoods('�������', 1000, 1);
  This_NPC.FillGoods('�ջ�֮��', 100, 1);
  This_NPC.FillGoods('������', 100, 1);
  This_NPC.FillGoods('˲Ϣ�ƶ�', 100, 1);
  This_NPC.FillGoods('���ѻ���', 100, 1);
  This_NPC.FillGoods('��ǽ', 100, 1);
  This_NPC.FillGoods('�����Ӱ', 100, 1);
  This_NPC.FillGoods('�����׹�', 100, 1);
  This_NPC.FillGoods('ħ����', 100, 1);
  This_NPC.FillGoods('ʥ����', 100, 1);
  This_NPC.FillGoods('������', 100, 1);
  //����stdmode
  This_NPC.AddStdMode(3);
  This_NPC.AddStdMode(4);
end;

Procedure _jineng;
Begin
   This_Npc.NpcDialog(This_Player,
   '����Ҫ֪��ʲô�书�����أ�\ \'+
   '|{cmd}<ʨ�Ӻ�/@shizihou>               ^<�޼�����/@wuji>\'+
   '|{cmd}<�����/@tianhuo>               ^<������/@hanbing>               ^<������/@qigong>\'+
   '|{cmd}<����/@main>');
end;

Procedure _qigong;
Begin
   This_Npc.NpcDialog(This_Player,
   '<������/c=red>\'+
   '��ȥ������������Ϊ��һ���ڹ���������������Ӧ����ʵս֮�С�\'+
   'ֱ��һλ��ʿ��Ǳ���о��󣬶����������и�����������������\'+
   '�Ӷ����ƿ���Χ�Ĺ�������Է�������á�\ \'+
   '|{cmd}<����/@jineng>                               ^<�˳�/@doexit>');
end;

Procedure _hanbing;
Begin
   This_Npc.NpcDialog(This_Player,
   '<������/c=red>\'+
   '��˵��ͨ�����ߣ�������ʹ�Է��ܵ�����ı����˺���������޴��\'+
   '�������ܽ����������֮�⣬�õ��˵����Ľ��ܵ��𺳡�\'+
   '��˵�������Ʒ�����編ʦ��Ѱ�Ҵ��ˣ���֪�����Ƿ��ҵ���\ \'+
   '|{cmd}<����/@jineng>                               ^<�˳�/@doexit>');
end;

Procedure _tianhuo;
Begin
   This_Npc.NpcDialog(This_Player,
   '<�����/c=red>\'+
   '��ǰ������������һ�ֻ���ħ�����书���ɣ�\'+
   '��ʵ�ʹ���ʱ������������ӿ������·������뵽�����졣\'+
   '��һ�����ֺƽٺ�����𳹵׶����� \'+
   '������书�ؼ���һ����ɽ���ﱻ���֣�����������������ϡ�\ \'+
   '|{cmd}<����/@jineng>                               ^<�˳�/@doexit>');
end;

Procedure _wuji;
Begin
   This_Npc.NpcDialog(This_Player,
   '<�޼�����/c=red>\'+
   '��˵�ɰ����ŵ������������������������Զ����ʧ������������\'+
   '��˵��ͨ������Ų��֮�������Լ����ٻ��޵�����ת�Ƶ��Լ�����\'+
   '�������ּ����ֱ��˳�Ϊ����������\ \'+
   '|{cmd}<����/@jineng>                               ^<�˳�/@doexit>');
end;

Procedure _shizihou;
Begin
   This_Npc.NpcDialog(This_Player,
   '<ʨ�Ӻ�/c=red>\'+
   '����һ�ַǳ�ǿ��ļ��ܣ�ʹ���߱���ӵ�м���ǿ���������������\'+
   'һ��ѧ����һ�ﵱǧ�����֮��ȡ�н��׼���̽��ȡ�\'+
   '�����������ĸ�����Ҳ����ǿ�󣬴�˵����ʹ��������Ҳ���ܵ�Ӱ�졣\'+
   '��˵ԭ����ţħ��Ҳ���������ּ��ܣ��ѵ�.....\ \'+
   '|{cmd}<����/@jineng>                               ^<�˳�/@doexit>');
end;

Begin
   This_Npc.NpcDialog(This_Player,
   '��ħ�ȵ�����������ʧ�ˣ����˶������ԭ�������ӣ�\'+
   '���׷�����ʲô�����أ�\ \'+
   '|{cmd}<����/@buy>                         ^<����/@sell>   \'+
   '����<��˵�еļ���/@jineng>             ^<ѯ�ʸ����似��ϸ��/@helpbooks> \'+
   '|{cmd}<�˳�/@doexit>');
end.
