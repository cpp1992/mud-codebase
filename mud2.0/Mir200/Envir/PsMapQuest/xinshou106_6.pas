program mir2;

var
  iCount : Integer;

begin
  if This_Player.GetV(106,1)= 14 then //�ж��Ƿ���ȡ���� 
  begin
    iCount := This_Player.GetV(106,6);  //��ּ������ 
    if iCount = -1 then
    begin
      iCount := 0; 
  	end   
    else if iCount = 4 then
	  begin
  	  iCount := iCount + 1;
  	  This_Player.SetV(106,6,iCount);
      This_Player.SetV(106,1,15); // ��������� 
      This_Player.PlayerNotice('�������Ѿ�ɱ����ɫ��������ö�����ĩ��'+inttostr(iCount)+'/5', 2);
      This_Player.PlayerNotice('�Ͽ��ȥ�Ұ��������ϰ�ɣ�', 2);
      This_Player.UpdateTaskDetail(106,1);
      This_Player.UpdateTaskProgress(106,0);
      This_Player.Flyto('1',314,79);
    end
    else if iCount < 4 then
    begin
  	  iCount := iCount + 1;
  	  This_Player.SetV(106,6,iCount);
      This_Player.PlayerNotice('�������Ѿ�ɱ����ɫ��������ö�����ĩ��'+Inttostr(iCount)+'/5', 2);
      This_Player.UpdateTaskProgress(106,0);
    end;
  end; 
end.