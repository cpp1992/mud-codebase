program mir2;
var
  iCount : Integer;
  sgjl : Integer;
  begin
    iCount := This_Player.GetV(71,9); 	//��ּ������ 
	sgjl := This_Player.GetV(71,10);   //ɱ�������� 
    if iCount  <> 0  then
    begin
      iCount := 0; 
      This_Player.PlayerNotice('��ɱ�����سǹ���,Ԫ��+300��', 2);
      This_Player.ScriptRequestAddYBNum(300);
	  This_Player.SetV(71,10,10);
     end 
	else 
	  begin
	  This_Player.PlayerNotice('��ɱ�����سǹ���,Ԫ��+300��', 2);
      This_Player.ScriptRequestAddYBNum(300);
	  This_Player.SetV(71,10,10);
	  end;
    
end.