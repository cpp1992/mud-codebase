program mir2;

var
  iCount : Integer;

begin
  if This_Player.GetV(103,1)=6 then //�ж��Ƿ���ȡ���� 
  begin
    iCount := This_Player.GetV(103,3);  //��ּ������ 
    if iCount < 0 then
    begin
      Exit; 
  	end   
    else if iCount = 9 then
	  begin
  	  iCount := iCount + 1;
  	  This_Player.SetV(103,3,iCount);
      This_Player.SetV(103,1,7); // ��������� 
      This_Player.PlayerNotice('�������Ѿ�ɱ���˽�ʬ��'+inttostr(iCount)+'/10', 2);
      This_Player.PlayerNotice('�Ͽ��ȥ�Ұ��������ϰ�ɣ�', 2);
      This_Player.UpdateTaskDetail(103,1);
      This_Player.UpdateTaskProgress(103,0);
    end
    else if iCount < 9 then
    begin
  	  iCount := iCount + 1;
  	  This_Player.SetV(103,3, iCount);
      This_Player.PlayerNotice('�������Ѿ�ɱ���˽�ʬ��'+Inttostr(iCount)+'/10', 2);
      This_Player.UpdateTaskProgress(103,0);
    end;
  end; 
end.