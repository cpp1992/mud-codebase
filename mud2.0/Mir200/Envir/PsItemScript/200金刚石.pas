const JG_NUM = 200;

function UseItem: Boolean;
var str : string; 
begin

     str := '��ϲ����' + inttostr(JG_NUM) + '���ʯ��';
     This_Player.Give('���ʯ',200);
     This_Player.PlayerNotice(str,0);
     Result := true;
end;

begin
end.