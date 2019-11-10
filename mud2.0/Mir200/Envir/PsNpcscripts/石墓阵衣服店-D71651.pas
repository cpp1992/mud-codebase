{
*******************************************************************}

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
   '��ʦ֮����Ҳ��Ҳû�м���ʦ���ˣ������Ҳ���ʦ�ֵ���˵\'+
   '�����ʦ��ʧ���ˣ������Ǳ�ħ�������ˡ����Ƕ��ܽ�������\'+
   '֪���ܲ��ܰ��������ҵ����ǵ�ʦ������˵���������ڵ��¹�\'+
   '�ħ��Ϊ�˲�������ǰȥӪ�ȣ���ħ�޶���ȥ���¹����\'+
   'Ȼ������Ҳ��ȥ��Ϊ��׳�۵ı��ء���Ϊ�������Ǿ����Ѵ�\'+
   'û�������ļ��չ�����\ \'+
   '|{cmd}<������������â��������װ������/@shengji>             ^<�뿪/@doexit>');
end;

Procedure _repair;
Begin
   This_Npc.NpcDialog(This_Player,
   '�����ȥҪ�޸�����Ʒ��\ \ \'+
   '|{cmd}<����/@main>');
   This_Npc.Click_Repair(This_Player);
end;

procedure RepairDone;
begin
  This_Npc.NpcDialog(This_Player,
  '�޵û��㲻��\ \ \' +
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

procedure OnInitialize;
begin
//  DebugOut('OnInitalize');
  This_Npc.SetRebate(200);

  //����stdmode
  This_NPC.AddStdMode(10);
  This_NPC.AddStdMode(11);
  This_NPC.AddStdMode(15);
  This_NPC.AddStdMode(27);
  This_NPC.AddStdMode(28);
end;

Procedure _Normal;
Begin
   This_Npc.NpcDialog(This_Player,
   '������·���������˺ܶ��Ե���ʿ��\'+
   '���ҵ���������Ϊ������������ǰ���\'+
   '�޸��·���ͷ��������Ҫ�޸��·���ͷ����\ \'+
   '|{cmd}<�����칤����Ĺ���/@gongdian>\'+
   '|{cmd}<�޸��·�/@repair> '+addspace(' ',22)+'|{cmd}<��������/@s_repair>\' +
   '|{cmd}<�˳�/@doexit>');
end;

Procedure _XiangNian108;
Begin
   This_Npc.NpcDialog(This_Player,
   '�һ��ǻ�������������ʵ����\'+
   '�����ɣ�ʯĹ����Ш�����ֺ��ѶԸ����������Ҫ���\'+
   '��������Ķ��������Ҫ������������ܸ������������Ķ���\'+
   '�Ҿ�������˵�Ļ���\'+
   '������Ŀ�꣺ǰ��ʯĹ��㣬ɱ��Ш�꣬��ȡ�����Ķ���\ \'+
   '|{cmd}<����������ô��ô�������أ��������취��ȡ����ɡ�/@XiangNian108_01>');
end;

Procedure _XiangNian108_01;
Begin
   if This_Player.GetV(108,1) = 12 then
   begin
      This_Player.Give('����',360000);
      This_Player.SetV(108,1,13);
      This_Player.SetV(108,6,0);
      This_Player.UpdateTaskDetail(108,1);
      This_NPC.CloseDialog(This_Player);
   end;
end;

Procedure _QianBeiDY108;
Begin
   if This_Player.GetV(108,1) = 14 then
   begin
      This_Player.Give('����',360000);
      This_Player.SetV(108,1,15);
      This_Player.UpdateTaskDetail(108,1);
      This_NPC.CloseDialog(This_Player);
   end;
end;

var
  SMYF108 : integer;
Begin
   SMYF108 := This_Player.GetV(108,1);
   if SMYF108 = 15 then
   begin
      This_Npc.NpcDialog(This_Player,
      '��ȥʯĹ��֪ͨ���ε걣��Ա��������ʰ��ʰ�����ǵ���Ҳ���ž��ˡ�\'+
      '������Ŀ�꣺����ʯĹ���ҵ����ε걣��Ա��\ \'+
      '|{cmd}<ǰ����Ӧ��ȥ�ˣ�̫���ˣ������ȥ�����ε걣��Ա/@doexit>\ \'+
      '|{cmd}<����������������/@Normal>');
   end else if SMYF108 = 14 then
   begin
      This_Npc.NpcDialog(This_Player,
      '�����������Ķ��������ˣ�����������Ǽ����ϼһﶼ��������\'+
      '�����귨��Щ���˲żüð����ã��ã���ȥʯĹ��֪ͨ���ε걣��Ա��\'+
      '������ʰ��ʰ�����ǵ���Ҳ���ž��ˡ�\'+
      '������Ŀ�꣺����ʯĹ���ҵ����ε걣��Ա��\ \'+
      '|{cmd}<ǰ����Ӧ��ȥ�ˣ�̫���ˣ������ȥ�����ε걣��Ա/@QianBeiDY108>\ \'+
      '|{cmd}<����������������/@Normal>');
   end else if SMYF108 = 13 then
   begin
      This_Npc.NpcDialog(This_Player,
      '���Ѿ��������������Ķ�����ô��\'+
      '������Ŀ�꣺ǰ��ʯĹ��㣬ɱ��Ш�꣬��ȡ�����Ķ���\ \'+
      '|{cmd}<����������ô��ô�������أ��������취��ȡ����ɡ�/@doexit>\ \'+
      '|{cmd}<����������������/@Normal>');
   end else if SMYF108 = 12 then
   begin
      This_Npc.NpcDialog(This_Player,
      '���Ѿ������˺��һ������˵ĺ����ˣ�\'+
      '�ҿ����������ģ����������ʵ����\ \'+
      'ǰ������ֻ�������ö��ѡ�����ǰ���Ƕ��������ذɣ�\'+
      '|{cmd}<���˺����������ǣ�/@XiangNian108>\ \'+
      '|{cmd}<����������������/@Normal>');
   end else
   begin
      _Normal;
   end;
end.