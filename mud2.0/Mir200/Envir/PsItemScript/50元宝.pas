const YB_NUM = 50;

function UseItem: Boolean;
var str : string; 
begin

     str := '����' + inttostr(YB_NUM) + 'Ԫ����';
     This_Player.ScriptRequestAddYBNum(YB_NUM);    
     This_Player.PlayerNotice(str,0);
     Result := true;
end;

begin
end.