program mir2;
var
  iCount : Integer;
  begin
    iCount := This_Player.GetV(71,4);  //��ּ������ 
    if iCount  <> 0  then
    begin
      iCount := 0; 
      This_Player.PlayerNotice('��ɱ�����سǷ�ʦ,Ԫ��+10��', 2);
      This_Player.ScriptRequestAddYBNum(10);
     end 
	else 
	  begin
	  This_Player.PlayerNotice('��ɱ�����س��سǷ�ʦ,Ԫ��+10��', 2);
      This_Player.ScriptRequestAddYBNum(10);
	  end;
    
end.