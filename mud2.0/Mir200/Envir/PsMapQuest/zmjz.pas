program mir2;

var
  iCount : Integer;
  begin
    iCount := GetG(71,12);  //��ּ������ 
    if iCount  <> 1  then
	  begin
      iCount := 0;  
      This_Player.PlayerNotice(This_Player.name +'��ȫ����һ��ɱ����BOSS������������,�ؽ���Ԫ��100��', 2);
      This_Player.ScriptRequestAddYBNum(100);
      SetG(71,12,iCount+1) ;
	  This_Player.setv(72,12,10);
	  end;
    
end.