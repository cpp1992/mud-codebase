program mir2;

var
  iCount : Integer;

begin
  if This_Player.GetV(103,1) = 3 then //�ж��Ƿ���ȡ���� 
  begin
    iCount := This_Player.GetV(103,2);  //��ּ������ 
    if iCount < 0 then
    begin
      Exit; 
  	end   
    else if iCount = 9 then
	  begin
  	  iCount := iCount + 1;
  	  This_Player.SetV(103,2,iCount);
      This_Player.SetV(103,1,4); // ��������� 
      This_Player.PlayerNotice('�������Ѿ�ɱ�������ã�'+inttostr(iCount)+'/10', 2);
      This_Player.PlayerNotice('�Ͽ��ȥ��ʰ���߰ɣ�', 2);
      This_Player.UpdateTaskDetail(103,1);
      This_Player.UpdateTaskProgress(103,0);
    end
    else if iCount < 9 then
    begin
  	  iCount := iCount + 1;
  	  This_Player.SetV(103,2,iCount);
      This_Player.PlayerNotice('�������Ѿ�ɱ�������ã�'+Inttostr(iCount)+'/10', 2);
      This_Player.UpdateTaskProgress(103,0);
    end;
  end; 
end.