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
   '��ֻ���·���\'+
   '��ʵ���Ľ��˲�����������Ǹ��ģ�\'+
   'ֻ��û��ʵ�����˲�ʲô������\ \'+
   '|{cmd}<����/@main>');
   This_Npc.Click_Repair(This_Player);
end;

procedure RepairDone;
begin
  This_Npc.NpcDialog(This_Player,
  '�㿴���ǲ��Ǻܳ�ɫ��\ \ \' +
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
  This_Npc.SetRebate(100);

  //����stdmode
  This_NPC.AddStdMode(10);
  This_NPC.AddStdMode(11);
  This_NPC.AddStdMode(27);
  This_NPC.AddStdMode(28);
end;


Begin
   This_Npc.NpcDialog(This_Player,
   '��ã�Ǯ�ٺã���Ҳ����������ôΣ�յĵط��ˣ���֪������\'+
   '��������ö���𣿼�Ǯ����һ��ʱ������������Ҷ�����˵�ˣ�\'+
   '�㻹��ֵĻ�����ô�Ҿ�Ϊ����һ�ˣ������۹���ֵ����ġ�\ \'+
   '|{cmd}<�����칤����Ĺ���/@gongdian>\'+
   '|{cmd}<�޲�����/@repair>  '+addspace(' ',26)+'|{cmd}<��������/@s_repair>\' +
   '|{cmd}<�˳�/@doexit>');
end.