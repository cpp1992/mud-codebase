program mir2;

var
  iCount : Integer;
  begin
    iCount := GetG(71,14);  //��ּ������ 
    if iCount  <> 1  then
	  begin
      iCount := 0;  
      This_Player.PlayerNotice(This_Player.name +'��ȫ����һ��ɱ����BOSS��֮ţħ�������,�ؽ���Ԫ��100��', 2);
      This_Player.ScriptRequestAddYBNum(100);
      SetG(71,14,iCount+1) ;
	  This_Player.setv(72,14,10);
	  end;
    
end.