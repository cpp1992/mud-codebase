const JG_NUM = 50;

function UseItem: Boolean;
var str : string; 
begin

     str := '��ϲ����' + inttostr(JG_NUM) + '���ʯ��';
     This_Player.Give('���ʯ',50);
     This_Player.PlayerNotice(str,0);
     Result := true;
end;

begin
end.