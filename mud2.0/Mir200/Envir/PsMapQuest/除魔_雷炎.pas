{********************************************************************
* ��Ŀ���ƣ�
* ��Ԫ���ƣ� 
* ��Ԫ���ߣ�
* ժ    Ҫ��
* ��    ע��
*******************************************************************}

program mir2;

var
  iCount, iTod: Integer;
  sTod : double;

begin
  sTod := GetNow();
  iTod := GetDateNum(sTod);
  if (This_Player.GetV(23,9) = 5) and (iTod = This_Player.GetV(23,24)) then //�ж��Ƿ���ȡ���� 
  begin
    iCount := This_Player.GetV(23,20);  //��ּ������ 
    if iCount = -1 then
    begin
      iCount := 0; 
  	end   
    else if iCount = 1 then
	  begin
  	  iCount := iCount + 1;
  	  This_Player.SetV(23,20,iCount);
      This_Player.SetV(23,9,10);                                  // ��������� 
      This_Player.PlayerNotice('�������Ѿ�ɱ������֩�룺'+inttostr(iCount)+'/2', 2);
      This_Player.PlayerNotice('�Ͽ��ȥ�һʹ�߰ɣ�', 2);
    end
    else if iCount < 1 then
    begin
  	  iCount := iCount + 1;
  	  This_Player.SetV(23,20,iCount);
      This_Player.PlayerNotice('�������Ѿ�ɱ������֩�룺'+Inttostr(iCount)+'/2', 2);
    end;
  end; 
end.