{********************************************************************
* ��Ŀ���ƣ�ÿ����������25-29�� 
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
  
  if (This_Player.GetS(22,24) = 420) and (iTod = This_Player.GetS(22,23)) then //�ж��Ƿ���ȡ���� 
  begin
    iCount := This_Player.GetS(22,28);  //��ּ������ 
    if iCount = -1 then
    begin
      iCount := 0; 
  	end   
    else if iCount = 9 then
	  begin
  	  iCount := iCount + 1;
  	  This_Player.SetS(22,28,iCount);
      This_Player.SetS(22,24,450);                                  // ��������� 
      This_Player.PlayerNotice('�������Ѿ�ɱ����ħШ�꣺'+inttostr(iCount)+'/10', 2);
      This_Player.PlayerNotice('�Ͽ��ȥ�Ҷ��޿����˰ɣ�', 2);
    end
    else if iCount < 9 then
    begin
  	  iCount := iCount + 1;
  	  This_Player.SetS(22,28,iCount);
      This_Player.PlayerNotice('�������Ѿ�ɱ����ħШ�꣺'+Inttostr(iCount)+'/10', 2);
    end;
  end; 
end.