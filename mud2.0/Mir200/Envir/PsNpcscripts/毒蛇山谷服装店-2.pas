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
   '�޵û��㲻��\ \ \' +
   '|{cmd}<����/@main>');
end;

Procedure _sell;
begin
   This_Npc.NpcDialog(This_Player,
   '�����ȥҪ�����·����Ҹ����ۡ�\'+
   'ͷ����ñ��Ҳ�չ�����������һ�����ɡ�\ \'+
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
  //����stdmode
  This_NPC.AddStdMode(10);
  This_NPC.AddStdMode(11);
  This_NPC.AddStdMode(15);
  This_NPC.AddStdMode(27);
  This_NPC.AddStdMode(28);
end;


Begin
   This_Npc.NpcDialog(This_Player,
   '��л���٣���ʲô������Ҫ�Ұ�æ��\ \'+
   '|{cmd}<�����칤����Ĺ���/@gongdian>\'+
   '|{cmd}<���·�/@buy>  '+addspace(' ',20)+'|{cmd}<���·�/@sell>  \'+
   '|{cmd}<�޲��·�/@repair>  '+addspace(' ',18)+'|{cmd}<��������/@s_repair>\' +
   '|{cmd}<�˳�/@doexit>');
end.