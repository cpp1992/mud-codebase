program mir2;

var
  iCount : Integer;

begin
  if This_Player.GetV(106,1)= 12 then //�ж��Ƿ���ȡ���� 
  begin
    iCount := This_Player.GetV(106,5);  //��ּ������ 
    if iCount = -1 then
    begin
      iCount := 0; 
  	end   
    else if iCount = 4 then
	  begin
  	  iCount := iCount + 1;
  	  This_Player.SetV(106,5,iCount);
      This_Player.SetV(106,1,13); // ��������� 
      This_Player.PlayerNotice('�������Ѿ�ɱ��ǯ�棬���ǯ�����ǣ�'+inttostr(iCount)+'/5', 2);
      This_Player.PlayerNotice('�Ͽ��ȥ�������������ϰ�ɣ�', 2);
      This_Player.UpdateTaskDetail(106,1);
      This_Player.UpdateTaskProgress(106,0);
    end
    else if iCount < 4 then
    begin
  	  iCount := iCount + 1;
  	  This_Player.SetV(106,5,iCount);
      This_Player.PlayerNotice('�������Ѿ�ɱ��ǯ�棬���ǯ�����ǣ�'+Inttostr(iCount)+'/5', 2);
      This_Player.UpdateTaskProgress(106,0);
    end;
  end; 
end.