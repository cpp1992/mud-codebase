{********************************************************************

*******************************************************************}

PROGRAM Mir2;

Procedure _doexit;
begin
   This_Npc.CloseDialog(This_Player);
end;

procedure _Exit;
begin
  This_Npc.CloseDialog(This_Player);
end;


Procedure _join;
begin
   This_Npc.NpcDialog(This_Player,
   '��Ȼ���Ѿ�������ս�ľ�����ô�Ҿ͸�����ɣ�ǰ������\'+
   'Ѱ��һ��ľ�ţ�վ���ŵ�����ͻᵽ������֮�أ�ȥսʤħ\'+
   '��ɣ���ս�������ʱ���ˣ�\ \'+
   '|{cmd}<�뿪/@doexit>');
end;


Begin
   This_Npc.NpcDialog(This_Player,
   '��ͣ��ս������Щû�����ǵĹ���Ż��������飬ѧ�����桢\'+
   '���������������࣬��Ϊ���߲���Ҫ׷��ǿ�����������Ҫ\'+
   '�м�ǿ����־������������������ս��Ϊ��Ϊ��ǿ������Ŭ����\ \'+
   '|{cmd}<��!��Ը����ս��/@join>\'+
   '|{cmd}<����,�һ����뿪��/@doexit>');
end.