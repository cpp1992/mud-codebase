program mir2;

var
  iCount : Integer;

begin
  if This_Player.GetV(104,1)= 4 then //�ж��Ƿ���ȡ���� 
  begin
    iCount := This_Player.GetV(104,3);  //��ּ������ 
    if iCount < 0 then
    begin
      Exit; 
  	end   
    else if iCount = 2 then
	  begin
  	  iCount := iCount + 1;
  	  This_Player.SetV(104, 3, iCount);
      This_Player.SetV(104,1,5); // ��������� 
      This_Player.PlayerNotice('�������Ѿ�������鱨ҩˮ��'+inttostr(iCount)+'/3', 2);
      This_Player.PlayerNotice('�Ͽ��ȥ�Һϼ�ҩ���ϰ�ɣ�', 2);
      This_Player.UpdateTaskDetail(104,1);
      This_Player.UpdateTaskProgress(104,0);
    end
    else if iCount < 2 then
    begin
  	  iCount := iCount + 1;
  	  This_Player.SetV(104, 3, iCount);
      This_Player.PlayerNotice('�������Ѿ�������鱨ҩˮ��'+Inttostr(iCount)+'/3', 2);
      This_Player.UpdateTaskProgress(104,0);
    end;
  end; 
end.