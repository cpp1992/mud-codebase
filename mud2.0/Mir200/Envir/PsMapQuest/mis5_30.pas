program mir2;

var
  iCount : Integer;
begin
  	This_Player.PlayerNotice('��һ��', 2);
  iCount := This_Player.GetV(5, 30);
  This_Player.PlayerNotice('��2��'+inttostr(iCount), 2);
  if iCount = -1 then
  	iCount := 0;
  if iCount < 5 then
  begin
     This_Player.PlayerNotice('��3��'+inttostr(iCount), 2); 	
  	iCount := iCount + 1;
     This_Player.PlayerNotice('��4��'+inttostr(iCount), 2); 
  	This_Player.SetV(5, 30, iCount);
   This_Player.PlayerNotice('��5��'+inttostr(iCount), 2); 	
  end else
  	This_Player.PlayerNotice('�������Ѿ������˰����ˣ���ȥ�������˰�', 2);
end.