program mir2;

procedure _OpenValuedBox;
begin
  This_Npc.OpenNeedKeyBox(This_Player);
end;

procedure _OpenValuedBox2;
begin
  This_Npc.OpenNeedKeyBox2(This_Player);
end;

procedure OpenValuedBox_OK2;
begin
   This_NPC.NpcDialog(This_Player,
   '��ϲ�������Ѿ�����\ \'+
   '|{cmd}<����ʹ�ñ���Կ��/@OpenValuedBox>');
end;

procedure OpenValuedBox_Fail;
begin
   This_NPC.NpcDialog(This_Player,
   '����û�з���ʲô����\ \'+
   '|{cmd}<����/@main>');
end;

Procedure OpenValuedBox_Again;
begin
   This_NPC.NpcDialog(This_Player,
   '�����ڻ����һ���ٴο�����͵Ļ��ᣬ\'+
   '�����͵Ŀ�������Ҫʹ�ñ���Կ�ף�\'+
   'ֻҪ��ʹ��1��Ԫ���Ϳ���ֱ�ӿ�����\'+
   '���Ƿ�Ը��ʹ��1��Ԫ���ٴο�����ͣ�\'+
   '��Ҳ���Է�����λ��ᣬ����ʹ�ñ���Կ�׿�����͡�\'+
   '|{cmd}<ʹ��1��Ԫ���ٴο������/@OpenValuedBox2>\ \'+
   '|{cmd}<����ʹ�ñ���Կ��/@OpenValuedBox>');
end;

procedure OnInitialize;
begin
  This_Npc.AddNpcProp(13);
end;

begin
  This_Npc.NpcDialog( This_Player,
    '��˽��ľ��룬\' +
    '�����ڿ��屦�ص��������Կ���һ�а߲����ּ���\' +
    '���������Ϲŷ��ľ������أ�Ω�б���Կ�׷��ܿ�����\ \' +
    '|{cmd}<ʹ�ñ���Կ��/@OpenValuedBox>'
    );
end.
