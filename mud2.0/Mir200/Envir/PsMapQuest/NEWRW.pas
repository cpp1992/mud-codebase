program mir2;

var
  iCount : Integer;

begin
  if This_Player.GetV(102,1)=8 then //�ж��Ƿ���ȡ���� 
  begin
    iCount := This_Player.GetV(102,2);  //��ּ������ 
    if iCount < 0 then
    begin
      Exit;                              //��Ϊ�Ѿ��ڽ������ʱ�򽫸��ֶ����㣬���Բ����ܵ���һ���� 
  	end   
    else if iCount = 9 then
	  begin
  	  iCount := iCount + 1;
  	  This_Player.SetV(102,2,iCount);
      This_Player.SetV(102,1,9);       // �����ɱ�� 
      This_Player.PlayerNotice('�������Ѿ�ɱ���˵����ˣ�'+inttostr(iCount)+'/10', 2);
      This_Player.PlayerNotice('�Ͽ��ȥ������ϰ�ɣ�', 2);
      This_Player.UpdateTaskDetail(102,1);          //����Ϊ0��ˢ��������־������Ϊ1��ʾˢ�� 
      This_Player.UpdateTaskProgress(102,0);
    end
    else if iCount < 9 then
    begin
  	  iCount := iCount + 1;
  	  This_Player.SetV(102,2, iCount);
      This_Player.PlayerNotice('�������Ѿ�ɱ���˵����ˣ�'+Inttostr(iCount)+'/10', 2);
      This_Player.UpdateTaskProgress(102,0);
    end;
  end; 
end.