program mir2;

var
  iCount : Integer;

begin
  if This_Player.GetV(106,1)= 9 then //�ж��Ƿ���ȡ���� 
  begin
    iCount := This_Player.GetV(106,4);  //��ּ������ 
    if iCount = -1 then
    begin
      iCount := 0; 
  	end   
    else if iCount = 2 then
	  begin
  	  iCount := iCount + 1;
  	  This_Player.SetV(106,4,iCount);
      This_Player.SetV(106,1,10); // ��������� 
      This_Player.PlayerNotice('�������Ѿ�ɱ��������棬������Ƥ��'+inttostr(iCount)+'/3', 2);
      This_Player.PlayerNotice('�Ͽ��ȥ�������·����ϰ�ɣ�', 2);
      This_Player.UpdateTaskDetail(106,1);
      This_Player.UpdateTaskProgress(106,0);
    end
    else if iCount < 2 then
    begin
  	  iCount := iCount + 1;
  	  This_Player.SetV(106,4,iCount);
      This_Player.PlayerNotice('�������Ѿ�ɱ��������棬������Ƥ����'+Inttostr(iCount)+'/3', 2);
      This_Player.UpdateTaskProgress(106,0);
    end;
  end; 
end.