program mir2;
var
  iCount : Integer;
  begin
    iCount := This_Player.GetV(71,8);  //��ּ������ 
    if iCount  <> 0  then
    begin
      iCount := 0; 
      This_Player.PlayerNotice('��ɱ�����س�̫ξ,Ԫ��+100��', 2);
      This_Player.ScriptRequestAddYBNum(100);
     end 
	else 
	  begin
	  This_Player.PlayerNotice('��ɱ�����س�̫ξ,Ԫ��+100��', 2);
      This_Player.ScriptRequestAddYBNum(100);
	  end;
    
end.