{********************************************************************

*******************************************************************}
program mir2;

{$I common.pas}

procedure _Exit;
begin
  This_Npc.CloseDialog(This_Player);
end;

Procedure domain;
begin
   This_NPC.NpcDialog(This_Player,
   '�����˰�����������ʲô����ǿ��\\'
   +'|{cmd}<���Է���ʯͷ��ȭ/@Q1>\'
   +'|{cmd}<Ϊ��׷��������������־/@Q2>\'
   +'|{cmd}<���صĵ�����С��������~/@Q3>\'
   +'|{cmd}<������˵ʲô����Ҫ����ȥ��/@exit>\'
   );

end;

procedure _Q1;
begin
   This_NPC.NpcDialog(This_Player,
   '�����㻹û��������Ժ�������\'
   +'|{cmd}<�뿪/@exit>'
   );

end;

procedure _Q2;
begin
   This_NPC.NpcDialog(This_Player,
   '�ش�Ĳ���~�ܺ��Ϸ������\'
   +'������������ر��ȴ�������������\'
   +'ӭ����սȥ�ɣ�����\\'
   +'|{cmd}<��!��Ը����ս��/@join>\'
   +'|{cmd}<����,�һ�û׼����/@exit>\'
   );

end;

procedure _Q3;
begin
   This_NPC.NpcDialog(This_Player,
   '�����㻹û��������Ժ�������\'
   +'|{cmd}<�뿪/@exit>'
   );

end;


procedure _join;
begin
   This_NPC.NpcDialog(This_Player,
   '�ھ������һ�����ݣ����ǽ�������֮�ص�ͨ��\'
   +'�����ĵĻ���ȥ��ս�ɣ���סֻҪ����˭���ܳ�Ϊ��ǿ\'
   +'|{cmd}<�뿪/@exit>'
   );

end;


begin
  domain;
end. 