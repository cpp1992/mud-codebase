{
*******************************************************************}

Program Mir2;

procedure _DoExit;
begin
  This_Npc.CloseDialog(This_Player);
end;

procedure _Exit;                         
begin
  This_Npc.CloseDialog(This_Player);
end;
                                                                                                                             
procedure _newskill2;                         
begin
   This_Npc.NpcDialog(This_Player,
   '������귨�紫�Ĺ�ս���ؼ��԰ɣ��ţ������������˼��\'+
   '���߽������꣬���ڹ��ؼ�Ҳ�������ţ��������ܹ����㡣\'+
   '10���ż���Ƭ(С)���Խ����1���ż���Ƭ(��)��\'+
   '5���ż���Ƭ(��)����ƴ�ӳ�1���ż���Ƭ(��)��\ \'+
   '|{cmd}<����ż���Ƭ(С)/@newskill21>                 ^<ƴ�ӹż���Ƭ(��) /@newskill22>\ \'+
   '|{cmd}<û�£�лл/@exit>');
end;

procedure _newskill21;
begin
  if This_Player.GetBagItemCount('�ż���Ƭ(С)') >= 10 then
  begin
    This_Player.Take('�ż���Ƭ(С)',10);
    This_Player.Give('�ż���Ƭ(��)',1);
    This_Npc.NpcDialog(This_Player,
    '������귨�紫�Ĺ�ս���ؼ��԰ɣ��ţ������������˼��\'+
    '���߽������꣬���ڹ��ؼ�Ҳ�������ţ��������ܹ����㡣\'+
    '10���ż���Ƭ(С)���Խ����1���ż���Ƭ(��)��\'+
    '5���ż���Ƭ(��)����ƴ�ӳ�1���ż���Ƭ(��)��\ \'+
    '|{cmd}<����ż���Ƭ(С)/@newskill21>                 ^<ƴ�ӹż���Ƭ(��) /@newskill22>\ \'+
    '|{cmd}<û�£�лл/@exit>');
  end else
  begin
    This_Npc.NpcDialog(This_Player,
    '��û���㹻�Ĳ�Ƭ����'
    );
  end;
end;

procedure _newskill22;
begin
  if This_Player.GetBagItemCount('�ż���Ƭ(��)') >= 5 then
  begin
    This_Player.Take('�ż���Ƭ(��)',5);
    This_Player.Give('�ż���Ƭ(��)',1);
    This_Npc.NpcDialog(This_Player,
    '������귨�紫�Ĺ�ս���ؼ��԰ɣ��ţ������������˼��\'+
    '���߽������꣬���ڹ��ؼ�Ҳ�������ţ��������ܹ����㡣\'+
    '10���ż���Ƭ(С)���Խ����1���ż���Ƭ(��)��\'+
    '5���ż���Ƭ(��)����ƴ�ӳ�1���ż���Ƭ(��)��\ \'+
    '|{cmd}<����ż���Ƭ(С)/@newskill21>                 ^<ƴ�ӹż���Ƭ(��) /@newskill22>\ \'+
    '|{cmd}<û�£�лл/@exit>');
  end else
  begin
    This_Npc.NpcDialog(This_Player,
    '��û���㹻�Ĳ�Ƭ����'
    );
  end;
end;

procedure _golone;
var
LY : integer;                         
begin
   if compareText(This_Player.MapName,'HL002') = 0 then
   begin
      LY := random(6)+1;
      if LY = 6 then
      begin
         This_Player.Flyto('HL001',24,221);
      end else if LY = 5 then
      begin
         This_Player.Flyto('HL001',23,222);
      end else if LY = 4 then
      begin
         This_Player.Flyto('HL001',21,224);
      end else if LY = 3 then
      begin
         This_Player.Flyto('HL001',19,225);
      end else if LY = 2 then
      begin
         This_Player.Flyto('HL001',20,223);
      end else if LY = 1 then
      begin
         This_Player.Flyto('HL001',20,226);
      end; 
   end;
end;

Begin
   This_Npc.NpcDialog(This_Player,
   '���ﴦ������Σ�գ���λ����һ��ҪС�ġ�\ \'+
  
   '|{cmd}<ǰ�����׶�Ѩһ��/@golone>');
end.