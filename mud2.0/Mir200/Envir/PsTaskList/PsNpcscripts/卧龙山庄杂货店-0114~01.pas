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
   '������Ҫ������Ʒ��\ \ \'+
   '|{cmd}<����/@main>');
   This_Npc.Click_Sell(This_Player);
end;



Procedure _buy;
Begin
   This_Npc.NpcDialog(This_Player,
   '������Щʲô��\ \ \'+
   '|{cmd}<����/@main>');
   This_Npc.Click_Buy(This_Player);
end;


procedure OnInitialize;
var
  i : integer;
begin
//  DebugOut('OnInitalize');
  This_Npc.SetRebate(100);

  //���ص���
  This_NPC.FillGoods('��ҩ(С��)', 100, 1);
  This_NPC.FillGoods('ħ��ҩ(С��)', 100, 1); 
  This_NPC.FillGoods('��ҩ(����)', 100, 1);
  This_NPC.FillGoods('ħ��ҩ(����)', 100, 1);
  This_NPC.FillGoods('ǿЧ��ҩ', 100, 1);
  This_NPC.FillGoods('ǿЧħ��ҩ', 100, 1);
  This_NPC.FillGoods('��ҩ(С)��', 100, 1);
  This_NPC.FillGoods('ħ��ҩ(С)��', 100, 1);
  This_NPC.FillGoods('��ҩ(��)��', 100, 1);
  This_NPC.FillGoods('ħ��ҩ(��)��', 100, 1);  
  This_NPC.FillGoods('������ҩ', 100, 1);
  This_NPC.FillGoods('����ħ��ҩ', 100, 1);
  This_NPC.FillGoods('�������Ѿ�', 100, 1);  
  This_NPC.FillGoods('�����', 10, 1);
  This_NPC.FillGoods('�����(��)', 10, 1);
  This_NPC.FillGoods('���������', 10, 1);
  This_NPC.FillGoods('��ɫҩ��(����)', 10, 1);  
  This_NPC.FillGoods('��ɫҩ��(����)', 10, 1);
  This_NPC.FillGoods('��ɫҩ��(����)', 10, 1);  
  This_NPC.FillGoods('��ɫҩ��(����)', 10, 1);  
  This_NPC.FillGoods('������ɫҩ��', 10, 1);
  This_NPC.FillGoods('������ɫҩ��', 10, 1);
  //����stdmode 
  This_NPC.AddStdMode(0);
  This_NPC.AddStdMode(3); 
  This_NPC.AddStdMode(5);
  This_NPC.AddStdMode(6);
  This_NPC.AddStdMode(10);
  This_NPC.AddStdMode(11);
  This_NPC.AddStdMode(15);
  This_NPC.AddStdMode(16);
  This_NPC.AddStdMode(42);
  This_NPC.AddStdMode(43);
  for i := 19 to 28 do
  This_NPC.AddStdMode(i);
end;

Procedure _newskill2;
begin
   This_Npc.NpcDialog(This_Player,
   '��Ȼ������ɽׯ��һֱû��ȥ����\'+
   '�����ս�������귨����Ϣ���ǻ����������š�\'+
   '������Щ������������������һ��ʱ����о���\'+
   '����Ҳ�ܹ���ʶһЩ������Ҫ��æ��\'+
   '10���ż���Ƭ(С)/���Խ����1���ż���Ƭ(��)��\'+
   '5���ż���Ƭ�п���ƴ�ӳ�1���ż���Ƭ(��)\ \'+
   '|{cmd}<����ż���Ƭ(С)/@newskill21>                 ^<ƴ�ӹż���Ƭ(��) /@newskill22>\'+
   '|{cmd}<û����/@doexit>');
end;

Procedure _newskill22;
begin
   if This_Player.GetBagItemCount('�ż���Ƭ(��)') >= 5 then
   begin
      This_Player.Take('�ż���Ƭ(��)',5);
      This_Player.Give('�ż���Ƭ(��)',1);
      This_Npc.NpcDialog(This_Player,
      '��Ȼ������ɽׯ��һֱû��ȥ����\'+
      '�����ս�������귨����Ϣ���ǻ����������š�\'+
      '������Щ������������������һ��ʱ����о���\'+
      '����Ҳ�ܹ���ʶһЩ���㻹��Ҫ��æ��\'+
      '10���ż���Ƭ(С)/���Խ����1���ż���Ƭ(��)��\'+
      '5���ż���Ƭ�п���ƴ�ӳ�1���ż���Ƭ(��)\ \'+
      '|{cmd}<����ż���Ƭ(С)/@newskill21>                 ^<ƴ�ӹż���Ƭ(��) /@newskill22>\'+
      '|{cmd}<û����/@doexit>');
   end else
   begin
      This_Npc.NpcDialog(This_Player,
      '��û���㹻�Ĺż���Ƭ(��)����\ \'+
      '|{cmd}<�˳�/@doexit>');
   end; 
end;

Procedure _newskill21;
begin
   if This_Player.GetBagItemCount('�ż���Ƭ(С)') >= 10 then
   begin
      This_Player.Take('�ż���Ƭ(С)',10);
      This_Player.Give('�ż���Ƭ(��)',1);
      This_Npc.NpcDialog(This_Player,
      '��Ȼ������ɽׯ��һֱû��ȥ����\'+
      '�����ս�������귨����Ϣ���ǻ����������š�\'+
      '������Щ������������������һ��ʱ����о���\'+
      '����Ҳ�ܹ���ʶһЩ���㻹��Ҫ��æ��\'+
      '10���ż���Ƭ(С)/���Խ����1���ż���Ƭ(��)��\'+
      '5���ż���Ƭ�п���ƴ�ӳ�1���ż���Ƭ(��)\ \'+
      '|{cmd}<����ż���Ƭ(С)/@newskill21>                 ^<ƴ�ӹż���Ƭ(��) /@newskill22>\'+
      '|{cmd}<û����/@doexit>');
   end else
   begin
      This_Npc.NpcDialog(This_Player,
      '��û���㹻�Ĺż���Ƭ(С)����\ \'+
      '|{cmd}<�˳�/@doexit>');
   end; 
end;

Begin
   This_Npc.NpcDialog(This_Player,
   '��������Ҫ�ҵİ�������ʲô��Ҫ�ͺ���˵�ɡ�\ \'+ 
   '|{cmd}<��/@buy>                                 ^<��/@sell>\'+
   '|{cmd}<�����������ż���Ƭ/@newskill2>\'+
   '|{cmd}<�˳�/@doexit>');
end.