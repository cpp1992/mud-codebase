program mir2;
//{$I BOSS.pas}   //�ýű���д��cxjsjl�ĺ��� 
var
  iCount : Integer;
  begin
    iCount := GetG(71,11);  //��ּ������ 
    if iCount  <> 1  then
	  begin
      iCount := 0;  
      This_Player.PlayerNotice(This_Player.name +'��ȫ����һ��ɱ����BOSS������������,�ؽ���Ԫ��100��', 2);
      This_Player.ScriptRequestAddYBNum(100);
      SetG(71,11,iCount+1) ;
	  This_Player.setv(72,11,10);
      //This_Player.PlayerDialog(cxjsjl);
	  end;
    
end.