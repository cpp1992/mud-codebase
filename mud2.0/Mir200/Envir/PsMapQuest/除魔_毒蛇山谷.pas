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
  
  if (This_Player.GetV(23,7) = 5) and (iTod = This_Player.GetV(23,24)) then //�ж��Ƿ���ȡ���� 
  begin
    iCount := This_Player.GetV(23,18);  //��ּ������ 
    if iCount = -1 then
    begin
      iCount := 0; 
  	end   
    else if iCount = 4 then
	  begin
  	  iCount := iCount + 1;
  	  This_Player.SetV(23,18,iCount);
      This_Player.SetV(23,7,10);                                  // ��������� 
      This_Player.PlayerNotice('�������Ѿ�ɱ�����ߣ�'+inttostr(iCount)+'/5', 2);
      This_Player.PlayerNotice('�Ͽ��ȥ�һʹ�߰ɣ�', 2);
    end
    else if iCount < 4 then
    begin
  	  iCount := iCount + 1;
  	  This_Player.SetV(23,18,iCount);
      This_Player.PlayerNotice('�������Ѿ�ɱ�����ߣ�'+Inttostr(iCount)+'/5', 2);
    end;
  end; 
end.