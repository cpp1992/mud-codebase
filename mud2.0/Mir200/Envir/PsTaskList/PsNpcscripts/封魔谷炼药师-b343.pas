{
/************************************************************************}

PROGRAM Mir2;


Procedure _doexit;
begin
   This_Npc.CloseDialog(This_Player);
end;


Procedure _makedrug;
Begin
   This_Npc.NpcDialog(This_Player,
   '��ѡ����Ҫ����ҩ��\'+
   '���ˣ�����ҩ��Ҫ�Ĳ��ϴ����˰ɣ�\ \'+
   '|{cmd}<����/@main>');
   This_Npc.Click_Makedrug(This_Player);
end;

Procedure _helpmakedrug;
begin
   This_Npc.NpcDialog(This_Player,
   '�����������ҩֻ�����֡�\ \'+
   '|{cmd}<��ɫ����/@helpdrug1>�Ĺ���\'+
   '|{cmd}<��ɫ����/@helpdrug2>�Ĺ���\'+
   '|{cmd}<��ɫ����/@helpmakedrug1>��ԭ��\'+
   '|{cmd}<��ɫ����/@helpmakedrug2>��ԭ��\ \'+
   '|{cmd}<����/@main>');
end;

Procedure _helpdrug1;
begin
   This_Npc.NpcDialog(This_Player,
   '��ʿ�û�ɫ����ʩ��ʱ�������ж������������\ \'+
   '|{cmd}<����/@helpmakedrug>');
end;

Procedure _helpdrug2;
begin
   This_Npc.NpcDialog(This_Player,
   '��ʿ�û�ɫ����ʩ��ʱ�������ж��ή�ͷ���������\ \'+
   '|{cmd}<����/@helpmakedrug>');
end;

Procedure _helpmakedrug1;
begin
   This_Npc.NpcDialog(This_Player,
   '������ɫ����(����)��ԭ���ǣ� <ʳ�����Ĺ���/@helpitem_1> 1����\'+ 
   '��֩������ 2��,ʳ����Ҷ 4����\'+
   '������ɫ����(����)��ԭ���ǣ� <ʳ�����Ĺ���/@helpitem_1> 2����\'+ 
   '��֩������ 4��,ʳ����Ҷ 8����\'+
   '������ɫ����(����)��ԭ���ǣ� <ʳ�����Ĺ���/@helpitem_1> 3����\'+ 
   '��֩������ 6��,ʳ����Ҷ 12����\ \'+
   '|{cmd}<����/@helpmakedrug>');
end;


Procedure _helpmakedrug2;
begin
   This_Npc.NpcDialog(This_Player,
   '������ɫ����(����)��ԭ���ǣ� <����/@helpitem_2> 1��, Ы��β��\'+
   '1��, ʳ����Ҷ 4����\'+
   '������ɫ����(����)��ԭ���ǣ� <����/@helpitem_2> 2��, Ы��β��\'+
   '2��, ʳ����Ҷ 8����\'+
   '������ɫ����(����)��ԭ���ǣ� <����/@helpitem_2> 3��, Ы��β��\'+
   '3��, ʳ����Ҷ 12����\ \'+
   '|{cmd}<����/@helpmakedrug>');
end;

Procedure _helpitem_1;
begin
   This_Npc.NpcDialog(This_Player,
   '��ʳ�˻������ϣ����Եõ�ʳ�����Ĺ��ӣ�\'+
   '���ǿ���ÿ5��ʳ�˻�������ܵõ�һ����ʵ��\ \'+
   '|{cmd}<����/@helpmakedrug1>');
end;


Procedure _helpitem_2;
begin
   This_Npc.NpcDialog(This_Player,
   'ץ����Ѩ��Ķ������Ϳ��Եõ����ѡ�\'+
   '������ԲԲ�ļ롣\ \'+
   '|{cmd}<����/@helpmakedrug2>');
end;



procedure OnInitialize;
begin
//  DebugOut('OnInitalize');
  This_Npc.SetRebate(100);
  //���ص���
  This_NPC.FillGoods('��ɫҩ��(����)', 1, 1);
  This_NPC.FillGoods('��ɫҩ��(����)', 1, 1); 
  This_NPC.FillGoods('��ɫҩ��(����)', 1, 1);
  This_NPC.FillGoods('��ɫҩ��(����)', 1, 1);
  This_NPC.FillGoods('��ɫҩ��(����)', 1, 1);
  This_NPC.FillGoods('��ɫҩ��(����)', 1, 1);
  //����stdmode  
  This_NPC.AddStdMode(0);
  This_NPC.AddStdMode(42);
end;



Begin
   This_Npc.NpcDialog(This_Player,
   '�����ڳɹ��ˣ����������Լ����Ƶı���ҩˮ����������\'+
   '�㿴�������ڱ�����ˣ�����Ҫ��Ҫ��һЩ����ҩˮ��\ \'+
   '|{cmd}<��/@makedrug>ҩ\'+            
   '�йض�ҩ <��˵��./@helpmakedrug>\'+             
    //���񲿷֣������ñ�������<���������涾����Ϣ/@dujieyao7>\'+
   '|{cmd}<�˳�/@doexit>');
end.