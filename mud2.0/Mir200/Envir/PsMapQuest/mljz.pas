program mir2;

var
  iCount : Integer;
  begin
    iCount := GetG(71,17);  //��ּ������ 
    if iCount  <> 1  then
	  begin
      iCount := 0;  
      This_Player.PlayerNotice(This_Player.name +'��ȫ����һ��ɱ����BOSSħ�����������,�ؽ���Ԫ��100��', 2);
      This_Player.ScriptRequestAddYBNum(100);
      SetG(71,17,iCount+1) ;
	  This_Player.setv(72,17,10);
	  end;
    
end.