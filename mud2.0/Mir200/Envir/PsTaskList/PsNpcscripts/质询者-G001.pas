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

Procedure _mengzhong;
begin
   if compareText(This_Player.MapName, 'G001') = 0 then
   begin
      This_Player.RandomFlyTo('3');
   end;
end;

Procedure _biqi;
begin
   if compareText(This_Player.MapName, 'G001') = 0 then
   begin
      This_Player.RandomFlyTo('0');
   end;
end;

procedure _lookitem;
var i : integer;
str : string;
begin
    for i := 0 to 10 do
    begin
        str := str + This_Player.GetItemNameOnBody(i) + '       ';
        if (i mod 2) = 1 then
        str := str +'\';
    end;
    This_Npc.NpcDialog(This_Player,
    str
    );
end;

Begin
   This_Npc.NpcDialog(This_Player,
   '����Ҫ�뿪��\ \'+
   '|{cmd}<������/@mengzhong>                        ^<�ر���/@biqi>\'+
   '|{cmd}<���뿪/@doexit>                        ^<��ѯ���װ��/@lookitem>');
end.