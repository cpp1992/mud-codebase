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
  if (This_Player.GetV(23,11) = 5) and (iTod = This_Player.GetV(23,24)) then //�ж��Ƿ���ȡ���� 
  begin
    iCount := This_Player.GetV(23,22);  //��ּ������ 
    if iCount = -1 then
    begin
      iCount := 0; 
  	end   
    else if iCount = 2 then
	  begin
  	  iCount := iCount + 1;
  	  This_Player.SetV(23,22,iCount);
      This_Player.SetV(23,11,10);                                  // ��������� 
      This_Player.PlayerNotice('�������Ѿ�ɱ��ħ��������'+inttostr(iCount)+'/3', 2);
      This_Player.PlayerNotice('�Ͽ��ȥ�һʹ�߰ɣ�', 2);
    end
    else if iCount < 2 then
    begin
  	  iCount := iCount + 1;
  	  This_Player.SetV(23,22,iCount);
      This_Player.PlayerNotice('�������Ѿ�ɱ��ħ��������'+Inttostr(iCount)+'/3', 2);
    end;
  end; 
end.