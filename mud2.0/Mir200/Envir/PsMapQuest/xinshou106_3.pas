program mir2;

var
  iCount : Integer;

begin
  if This_Player.GetV(106,1)= 5 then //�ж��Ƿ���ȡ���� 
  begin
    iCount := This_Player.GetV(106,3);  //��ּ������ 
    if iCount = -1 then
    begin
      iCount := 0; 
  	end   
    else if iCount = 2 then
	  begin
  	  iCount := iCount + 1;
  	  This_Player.SetV(106,3,iCount);
      This_Player.SetV(106,1,6); // ��������� 
      This_Player.PlayerNotice('�������Ѿ�ɱ����򼣬������Ķ��ң�'+inttostr(iCount)+'/3', 2);
      This_Player.PlayerNotice('�Ͽ��ȥ������ҩ���ϰ�ɣ�', 2);
      This_Player.UpdateTaskDetail(106,1);
      This_Player.UpdateTaskProgress(106,0);
    end
    else if iCount < 2 then
    begin
  	  iCount := iCount + 1;
  	  This_Player.SetV(106,3,iCount);
      This_Player.PlayerNotice('�������Ѿ�ɱ����򼣬������Ķ��ң�'+Inttostr(iCount)+'/3', 2);
      This_Player.UpdateTaskProgress(106,0);
    end;
  end; 
end.