program mir2;

var
  iCount : Integer;

begin
  if This_Player.GetV(106,1)= 3 then //�ж��Ƿ���ȡ���� 
  begin
    iCount := This_Player.GetV(106,2);  //��ּ������ 
    if iCount = -1 then
    begin
      iCount := 0; 
  	end   
    else if iCount = 4 then
	  begin
  	  iCount := iCount + 1;
  	  This_Player.SetV(106,2,iCount);
      This_Player.SetV(106,1,4); // ��������� 
      This_Player.PlayerNotice('�������Ѿ�ɱ�������䣬��ô��ݵ��鱨��'+inttostr(iCount)+'/5', 2);
      This_Player.PlayerNotice('�Ͽ��ȥ����ˮ���ݷ�װ���ϰ�ɣ�', 2);
      This_Player.UpdateTaskDetail(106,1);
      This_Player.UpdateTaskProgress(106,0);
    end
    else if iCount < 4 then
    begin
  	  iCount := iCount + 1;
  	  This_Player.SetV(106,2,iCount);
      This_Player.PlayerNotice('�������Ѿ�ɱ�������䣬��ô��ݵ��鱨��'+Inttostr(iCount)+'/5', 2);
      This_Player.UpdateTaskProgress(106,0);
    end;
  end; 
end.