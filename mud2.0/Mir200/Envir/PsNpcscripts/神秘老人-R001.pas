{********************************************************************

*******************************************************************}

PROGRAM Mir2;

{$I common.pas}

Procedure _doexit;
begin
   This_Npc.CloseDialog(This_Player);
end;

procedure _Exit;
begin
  This_Npc.CloseDialog(This_Player);
end;



procedure _back;
Begin
   if compareText(This_Player.MapName, 'R001') = 0 then
   begin
      This_Player.RandomFlyTo('3');
   end;
end;


Begin
   This_Npc.NpcDialog(This_Player,
   'ǰ����һ��Σ�յ�δ֪���磬�������ڵ�ʵ��������ȥ���\'+
   '���Ժ������ɣ��ҿ��԰����ͻ���ԭ�������硣\ \'+
   '|{cmd}<�ص�����/@back>\'+
   '|{cmd}<������������/@doexit>');
end.