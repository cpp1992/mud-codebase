program mir2;

var
  iCount : Integer;

begin
  if This_Player.GetV(19,1)=6 then //�ж��Ƿ���ȡ���� 
  begin
    iCount := This_Player.GetV(19,2);  //��ּ������ 
    if iCount = -1 then
    begin
      iCount := 0; 
  	end   
    else if iCount =24 then
	  begin
  	  iCount := iCount + 1;
  	  This_Player.SetV(19,2,iCount);
      This_Player.SetV(19,1,8); // ��������� 
      This_Player.PlayerNotice('�������Ѿ�ɱ����ѩ����ǣ�'+inttostr(iCount)+'/25', 2);
      This_Player.PlayerNotice('�Ͽ��ȥ�ҹؿ�����ʹ�߰ɣ�', 2);
    end
    else if iCount <24 then
    begin
  	  iCount := iCount + 1;
  	  This_Player.SetV(19,2, iCount);
      This_Player.PlayerNotice('�������Ѿ�ɱ����ѩ����ǣ�'+Inttostr(iCount)+'/25', 2);
    end;
  end; 
end.