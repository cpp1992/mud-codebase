{
/************************************************************************}



PROGRAM Mir2;

Procedure _doexit;
begin
   This_Npc.CloseDialog(This_Player);
end;


Procedure _canjia;
begin
   This_Npc.NpcDialog(This_Player,
   '�ڸ��ص��ϱ��������"�����"���ɽ�����ͥ��\'+
   '����ͥ�����Ի���ѡ��ʹ�����ֱ�ӽ������ͨ����\'+
   'ͨ�����ͨ����������أ��Ϳɿ�ʼ����ػ��\ \'+
   '|{cmd}<����/@main>                         ^<�ر�/@doexit>');
end;


Procedure _zuoyong;
begin
   This_Npc.NpcDialog(This_Player,
   '��������ã�����ʹ���ߴ�������״̬��\'+
   'ʹ�������������ͨ����Ĺ��￴�����㣬\'+
   '��Ϳ���ֱ�Ӵ�Խͨ��������ء�\'+
   '���������������Ӵ��һ��������\'+
   'Ȼ��ֱ�Ӻ���ͥ�����Ի�����ʹ�á�\ \'+
   '|{cmd}<����/@main>                         ^<�ر�/@doexit>');
end;


Procedure _shuliang;
begin
   This_Npc.NpcDialog(This_Player,
   '�������������Բ�ѯ��\'+
   '1������ͥ�е�������ӶԻ���ѯ�Լ��ĵ�ǰ�����������\'+
   '2������ʡ�Ĺ����ƿ��Բ�ѯ��\'+ 
   '3�������ڽ�ɫ�������в�ѯ�����ʯ�����·�����\ \'+
   '|{cmd}<����/@main>                         ^<�ر�/@doexit>');
end;


Procedure _xiaoshi;
begin
   This_Npc.NpcDialog(This_Player,
   '���ֻ��Ա��λ�������ڻ���������������ʧ��\'+
   '�ڽ��Ļ�У����������һ�������á�\ \'+
   '|{cmd}<����/@main>                         ^<�ر�/@doexit>');
end;


Procedure _baoluo;
begin
   This_Npc.NpcDialog(This_Player,
   '����ͥ�����ͨ�������������ǲ������װ���ġ�\ \'+
   '|{cmd}<����/@main>                         ^<�ر�/@doexit>');
end;

Procedure _baozang;
begin
   This_Npc.NpcDialog(This_Player,
   '�ڽ�����غ������ͳ��Ի���ѡ��[��������ı���]��\'+
   '���Բ鿴���������صı������Ҫ�������صĹ��\'+
   '���������صĹ���󣬾Ϳ��Եõ������ı��\'+
   '�ڴ���ػ�У���Щ��ػ������ص����ر��أ�\'+
   '������˵�е�ս��ʥħ�����Ҳ���������С�\ \'+
   '|{cmd}<����/@main>                         ^<�ر�/@doexit>');
end;


Begin
   This_Npc.NpcDialog(This_Player,
   '���˽ⴳ��صĹ������Ҳ�֪���ģ���Ҳ����ȥ����������ӣ�\ \'+
   '|{cmd}<��βμӡ�����ء�/@canjia>\'+
   '|{cmd}<���������/@zuoyong>\'+
   '|{cmd}<��β�ѯ�Լ����������/@shuliang>\'+
   '|{cmd}<�����������Ƿ����ʧ/@xiaoshi>\'+
   '|{cmd}<����������Ƿ�ᱩװ��/@baoluo>\'+
   '|{cmd}<���֪�����ڵ�������صı���/@baozang>');
end.