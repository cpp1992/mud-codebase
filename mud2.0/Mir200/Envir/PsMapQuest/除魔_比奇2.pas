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
     
  if (This_Player.GetV(23,8) = 5) and (iTod = This_Player.GetV(23,24)) then //�ж��Ƿ���ȡ���� 
  begin
    iCount := This_Player.GetV(23,19);  //��ּ������ 
    if iCount = -1 then
    begin
      iCount := 0; 
  	end   
    else if iCount = 7 then
	  begin
  	  iCount := iCount + 1;
  	  This_Player.SetV(23,19,iCount);
      This_Player.SetV(23,8,10);                                  // ��������� 
      This_Player.PlayerNotice('�������Ѿ�ɱ��ʳ�˻���'+inttostr(iCount)+'/8', 2);
      This_Player.PlayerNotice('�Ͽ��ȥ�һʹ�߰ɣ�', 2);
    end
    else if iCount < 7 then
    begin
  	  iCount := iCount + 1;
  	  This_Player.SetV(23,19,iCount);
      This_Player.PlayerNotice('�������Ѿ�ɱ��ʳ�˻���'+Inttostr(iCount)+'/8', 2);
    end;
  end; 
end.