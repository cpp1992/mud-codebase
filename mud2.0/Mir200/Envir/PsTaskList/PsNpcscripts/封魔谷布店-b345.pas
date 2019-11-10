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
   '�����޸��·���ͷ����ñ�ӡ�\ \ \'+
   '|{cmd}<����/@main>');
   This_Npc.Click_Repair(This_Player);
end;

procedure RepairDone;
begin
  This_Npc.NpcDialog(This_Player,
  '�����޲��úܲ���\ \ \' +
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
   '�Ѿ�������ˣ��������ܲ����\' +
   '|{cmd}<����/@main>');
end;

Procedure _sell;
begin
   This_Npc.NpcDialog(This_Player,
   '�����ȥҪ�����·����Ҹ����ۡ�\'+
   'ͷ����ñ��Ҳ�չ���\'+
   '��������һ�����ɡ�\ \'+
   '|{cmd}<����/@main>');
   This_Npc.Click_Sell(This_Player);
end;



Procedure _buy;
Begin
   This_Npc.NpcDialog(This_Player,
   '������ʲô�����·���\ \ \'+
   '|{cmd}<����/@main>');
   This_Npc.Click_Buy(This_Player);
end;


Procedure _duihua1;
Begin
   This_Npc.NpcDialog(This_Player,
   '����Ĳ��������ɷֶ��ܸ߰���\ \'+
   '|{cmd}<�ж�߰���/@duihua2>\');
end;


Procedure _duihua2;
Begin
   This_Npc.NpcDialog(This_Player,
   '�����ɳ�Ϳ˳�¥��ô�߰ɣ�\ \'+
   '|{cmd}<����/@main>                         ^<�뿪/@doexit>');
end;


procedure OnInitialize;
begin
//  DebugOut('OnInitalize');
  This_Npc.SetRebate(100);

  //���ص���
  This_NPC.FillGoods('����(��)', 50, 1);
  This_NPC.FillGoods('����(Ů)', 50, 1); 
  This_NPC.FillGoods('���Ϳ���(��)', 50, 1);
  This_NPC.FillGoods('���Ϳ���(Ů)', 50, 1);
  This_NPC.FillGoods('���Ϳ���(��)', 50, 1);
  This_NPC.FillGoods('���Ϳ���(Ů)', 50, 1);
  This_NPC.FillGoods('�ؿ���(��)', 50, 3);
  This_NPC.FillGoods('�ؿ���(Ů)', 50, 3);
  This_NPC.FillGoods('ħ������(��)', 50, 3);
  This_NPC.FillGoods('ħ������(Ů)', 50, 3);  
  This_NPC.FillGoods('���ս��(��)', 50, 3);
  This_NPC.FillGoods('���ս��(Ů)', 50, 3);
  This_NPC.FillGoods('����ս��(��)', 50, 1);
  This_NPC.FillGoods('����ս��(Ů)', 50, 1);
  This_NPC.FillGoods('��ħ����(��)', 50, 1);
  This_NPC.FillGoods('��ħ����(Ů)', 50, 1);
  This_NPC.FillGoods('ս�����(��)', 50, 1);
  This_NPC.FillGoods('ս�����(Ů)', 50, 1);  
  //����stdmode
  This_NPC.AddStdMode(10);
  This_NPC.AddStdMode(11);
  This_NPC.AddStdMode(15);
  This_NPC.AddStdMode(27);
  This_NPC.AddStdMode(28);
end;


var
j : integer;

Begin
   j := random(2);
   if j = 1 then 
   begin
      This_Npc.NpcDialog(This_Player,
      '���������һ������ħ���¼���һ���йŹ֣���˵��ħ��\'+
      '����Ŀ�ĵġ��һ��������м�����ڼ飬һ��Ҫ��취������\'+
      '���ҳ�������������������ħ����Щ�ر�ͼ�ϡ�\ \'+
      '|{cmd}<�ϰ壬��ĵ��ﲼ����ô������/@duihua1>\'+
      '|{cmd}<�����칤����Ĺ���/@gongdian>\'+
      '|{cmd}<���·�/@buy>'+addspace(' ',26)+'|{cmd}<���·�/@sell>\'+
      '|{cmd}<�޸��·�/@repair>'+addspace(' ',24)+'|{cmd}<��������/@s_repair>\'+
      '|{cmd}<�˳�/@doexit>');
   end;
   if j = 0 then 
   begin
      This_Npc.NpcDialog(This_Player,
      '������Ĳ��Ͽ���Ӧ�о���Ŷ��Ҫʲô��ʲô��\ \'+
      '|{cmd}<�ϰ壬��ĵ��ﲼ����ô������/@duihua1>\'+
      '|{cmd}<�����칤����Ĺ���/@gongdian>\'+
      '|{cmd}<���·�/@buy>'+addspace(' ',26)+'|{cmd}<���·�/@sell>\'+
      '|{cmd}<�޸��·�/@repair>'+addspace(' ',24)+'|{cmd}<��������/@s_repair>\'+
      '|{cmd}<�˳�/@doexit>');
   end;
end.
