{
/************************************************************************}



Program Mir2;


{$I common.pas}


PROCEDURE _shengji;
begin
   This_Npc.NpcDialog(This_Player,
   '��˵�������ǵ��żҲ����ϰ�ѧ����һ��ܣ��ܹ�ʹ��\'+
   '�����䷽����������â������ϵ�н��������ͺϳɣ�����\'+
   '�Ҳ�֪������������Ҫô������ȥ��һ�������˰ɡ�\ \'+
   '|{cmd}<�뿪/@doexit>\');
end;


Procedure _doexit;
Begin
   This_Npc.CloseDialog(This_Player);
end;

Procedure _gongdian;
Begin
   This_Npc.NpcDialog(This_Player,
   '�칤��������ҵ�ʦ�����̻����Һܶ����գ������Դ���ѧ��\'+
   '��ʦ֮����Ҳ��Ҳû�м���ʦ���˺����Ҳ���ʦ�ֵ���˵��\'+
   '����ʦ��ʧ���ˣ������Ǳ�ħ�������ˡ����Ƕ��ܽ�������֪\'+
   '�����ܲ��ܰ��������ҵ����ǵ�ʦ������˵���������ڵ��¹�\'+
   '�ħ��Ϊ�˲�������ǰȥӪ�ȣ���ħ�޶���ȥ���¹����\'+
   'Ȼ������Ҳ��ȥ��Ϊ��׳�۵ı��ء���Ϊ�������Ǿ����Ѵ�\'+
   'û�������ļ��չ�����\ \'+
   '|{cmd}<������������â��������װ������/@shengji>             ^<�뿪/@doexit>');
end;

Procedure _repair;
Begin
   This_Npc.NpcDialog(This_Player,
   '��Ҫ�������ҿ��Ǹ����ܹ���Ŷ��\ \'+
   '|{cmd}<����/@main>');
   This_Npc.Click_Repair(This_Player);
end;

procedure RepairDone;
begin
  This_Npc.NpcDialog(This_Player,
  '��ô�����޺��˰ɣ����������µĻ�ֵǮ��\ \' +
  '|{cmd}<����/@main>');
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
   '�Ѿ�������ˣ��������ܲ����\ \' +
   '|{cmd}<����/@main>');
end;

Procedure _sell;
begin
   This_Npc.NpcDialog(This_Player,
   '������Ҫ������Ʒ��\ \'+
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
  This_NPC.FillGoods('��ҩ(С��)', 200, 1);
  This_NPC.FillGoods('ħ��ҩ(С��)', 200, 1); 
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
  This_NPC.FillGoods('������;�', 100, 1);
  This_NPC.FillGoods('�����', 10, 1);
  This_NPC.FillGoods('�����(��)', 10, 1);  
  This_NPC.FillGoods('��ɫҩ��(����)', 10, 1);
  This_NPC.FillGoods('��ɫҩ��(����)', 10, 1);
  //����stdmode 
  This_NPC.AddStdMode(0);
  This_NPC.AddStdMode(3); 
  This_NPC.AddStdMode(5);
  This_NPC.AddStdMode(6);
  This_NPC.AddStdMode(10);
  This_NPC.AddStdMode(11);
  This_NPC.AddStdMode(15);
  This_NPC.AddStdMode(42);
  This_NPC.AddStdMode(43);
  for i := 19 to 28 do
  This_NPC.AddStdMode(i);
end;



Begin
   This_Npc.NpcDialog(This_Player, 
   '�㾹Ȼ���ܵ�����������������ô�����ķ��ϣ�\'+
   '˳�������һ�£�һ�������Թ�������Ҳ���ܻ�ͷ�ˣ�\ \' +
   '|{cmd}<�����칤����Ĺ���/@gongdian>\'+
   '|{cmd}<��/@buy>                            ^<��/@sell>\' +
   '|{cmd}<����/@repair>                          ^<��������/@s_repair>\'+
   '|{cmd}<�˳�/@doexit>');
end.