program mir2;

var
  iCount : Integer;

begin
  if This_Player.GetV(106,1)= 17 then //�ж��Ƿ���ȡ���� 
  begin
    iCount := This_Player.GetV(106,7);  //��ּ������ 
    if iCount = -1 then
    begin
      iCount := 0; 
  	end   
    else if iCount < 1 then
	  begin
  	  iCount := iCount + 1;
  	  This_Player.SetV(106,7,iCount);
      This_Player.SetV(106,1,18); // ��������� 
      This_Player.PlayerNotice('�������Ѿ�ɱ������սʿ, �Ͽ�ر�������ݽ�ͷ�ɣ�',2);
      This_Player.UpdateTaskDetail(106,1);
    end
    else
    exit; 
  end; 
end.