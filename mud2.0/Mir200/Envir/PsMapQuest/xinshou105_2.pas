program mir2;

var
  iCount : Integer;

begin
  if This_Player.GetV(105,1)= 6 then //�ж��Ƿ���ȡ���� 
  begin
    iCount := This_Player.GetV(105,3);  //��ּ������ 
    if iCount < 0 then
    begin
      Exit; 
  	end   
    else if iCount = 2 then
	  begin
  	  iCount := iCount + 1;
  	  This_Player.SetV(105, 3, iCount);
      This_Player.SetV(105,1,7); // ��������� 
      This_Player.PlayerNotice('�������Ѿ�ɱ��������ս����'+inttostr(iCount)+'/3', 2);
      This_Player.PlayerNotice('�Ͽ��ȥ�Ұ�������ʿ�ɣ�', 2);
      This_Player.UpdateTaskDetail(105,1);
      This_Player.UpdateTaskProgress(105,0);
    end
    else if iCount < 2 then
    begin
  	  iCount := iCount + 1;
  	  This_Player.SetV(105, 3, iCount);
      This_Player.PlayerNotice('�������Ѿ�ɱ��������ս����'+Inttostr(iCount)+'/3', 2);
      This_Player.UpdateTaskProgress(105,0);
    end;
  end; 
end.