program mir2;

var
  iCount : Integer;

begin
  if This_Player.GetV(104,1)= 2 then //�ж��Ƿ���ȡ���� 
  begin
    iCount := This_Player.GetV(104,2);  //��ּ������ 
    if iCount < 0 then
    begin
      Exit; 
  	end   
    else if iCount = 1 then
	  begin
  	  iCount := iCount + 1;
  	  This_Player.SetV(104,2, iCount);
      This_Player.SetV(104,1,3); // ��������� 
      This_Player.PlayerNotice('�������Ѿ���������õ��鱨��'+inttostr(iCount)+'/2', 2);
      This_Player.PlayerNotice('�Ͽ��ȥ�Һϼ�ҩ���ϰ�ɣ�', 2);
      This_Player.UpdateTaskDetail(104,1);
      This_Player.UpdateTaskProgress(104,0);
    end
    else if iCount < 1 then
    begin
  	  iCount := iCount + 1;
  	  This_Player.SetV(104,2,iCount);
      This_Player.PlayerNotice('�������Ѿ���������õ��鱨��'+Inttostr(iCount)+'/2', 2);
      This_Player.UpdateTaskProgress(104,0);
    end;
  end; 
end.