program mir2;
var
  iCount : Integer;
  begin
    iCount := This_Player.GetV(71,6);  //��ּ������ 
    if iCount  <> 0  then
    begin
      iCount := 0; 
      This_Player.PlayerNotice('��ɱ�����سǵ�ʿ,Ԫ��+10��', 2);
      This_Player.ScriptRequestAddYBNum(10);
     end 
	else 
	  begin
	  This_Player.PlayerNotice('��ɱ�����سǵ�ʿ,Ԫ��+10��', 2);
      This_Player.ScriptRequestAddYBNum(10);
	  end;
    
end.