program mir2;

var
  iCount : Integer;

begin
  if This_Player.GetV(102,1)=11 then      //�ж��Ƿ���ȡ���� 
  begin
    iCount := This_Player.GetV(102,3);    //��ּ������ 
    if iCount < 0 then
    begin
      Exit; 
  	end   
    else if iCount = 14 then
	  begin
  	  iCount := iCount + 1;
  	  This_Player.SetV(102,3,iCount);
      This_Player.SetV(102,1,12);           // �����ɱ�� 
      This_Player.PlayerNotice('�������Ѿ�ɱ���˰����ˣ�'+inttostr(iCount)+'/15', 2);
      This_Player.PlayerNotice('�Ͽ��ȥ�ҲֿⱣ��Ա�ɣ�', 2);
      This_Player.UpdateTaskDetail(102,1);
      This_Player.UpdateTaskProgress(102,0);
    end
    else if iCount < 14 then
    begin
  	  iCount := iCount + 1;
  	  This_Player.SetV(102,3, iCount);
      This_Player.PlayerNotice('�������Ѿ�ɱ���˰����ˣ�'+Inttostr(iCount)+'/15', 2);
      This_Player.UpdateTaskProgress(102,0);
    end;
  end; 
end.