{
/************************************************************************}

Program Mir2;


{$I common.pas}


PROCEDURE _mo;
begin
   This_Npc.NpcDialog(This_Player,
   '����������Ҫ��ս��ħ����ֱ�ڿ���Ц��\'+ 
   'û�г�ֵľ��򣬲�Ҫ�����ս��ħ\'+ 
   '������ı���ǻ�ɥ����Ŷ~\'+ 
   '������������~~~~~~\ \'+ 
   '|{cmd}<������!��Ҫ��ս��/@join>\'+
   '|{cmd}<����,�һ�û׼����/@doexit>\');
end;

PROCEDURE _join;
begin
   This_Npc.NpcDialog(This_Player,
   '�ã��е�ʶ����Ҫ��ս����ħ��������ɭ�֣����Ҳ�����\'+
   '�������������㣬����һ���ưܵ����ӣ������ס�ŵ���\'+
   '���޷�սʤ�Ķ�ħ����������������\ \'+
   '|{cmd}<�뿪/@doexit>\');
end;


Procedure _doexit;
Begin
   This_Npc.CloseDialog(This_Player);
end;

Procedure _ask;
Begin
    This_Npc.NpcDialog(This_Player,
   'ǰ����ץ��һ����������ͷ��\'+
   '��˵�Լ���ʲô�ƹ�������Ե�����ɣ�\'+
   '���ҹص���¥��ȥ�ˡ�����ʶ����\ \'+
   '|{cmd}<����/@main>');
end;



Begin
   This_Npc.NpcDialog(This_Player,
   '�������������ˡ�\'+
   '�糿��������ͻȻ�����Լ��ָֻ���ԭò�ˣ�\'+
   '�����귨��½�ָֻ���\ \'+ 
   '|{cmd}<������Ϣ/@ask>\'+ 
   '|{cmd}<��Ҫ��ս��ħ/@mo>\' +
   '|{cmd}<�˳�/@doexit>');
end.