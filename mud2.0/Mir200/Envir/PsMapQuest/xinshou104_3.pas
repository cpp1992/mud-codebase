program mir2;

var
  iCount : Integer;

begin
  if This_Player.GetV(104,1)= 9 then //�ж��Ƿ���ȡ���� 
  begin
    iCount := This_Player.GetV(104,4);  //��ּ������ 
    if iCount < 0 then
    begin
      Exit; 
  	end   
    else if iCount = 2 then
	  begin
  	  iCount := iCount + 1;
  	  This_Player.SetV(104,4,iCount);
      This_Player.SetV(104,1,10); // ��������� 
      This_Player.PlayerNotice('���Ѿ��ռ�����ľ�ϣ�'+inttostr(iCount)+'/3', 2);
      This_Player.PlayerNotice('�Ͽ��ȥ�Һϼ������ϰ壡', 2);
      This_Player.UpdateTaskDetail(104,1);
      This_Player.UpdateTaskProgress(104,0);
    end
    else if iCount < 2 then
    begin
  	  iCount := iCount + 1;
  	  This_Player.SetV(104,4,iCount);
      This_Player.PlayerNotice('���Ѿ��ռ�����ľ�ϣ�'+Inttostr(iCount)+'/3', 2);
      This_Player.UpdateTaskProgress(104,0);
    end;
  end; 
end.