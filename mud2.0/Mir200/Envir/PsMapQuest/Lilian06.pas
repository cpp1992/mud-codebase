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
  
  if (This_Player.GetS(22,24) = 620) and (iTod = This_Player.GetS(22,23)) then //�ж��Ƿ���ȡ���� 
  begin
    iCount := This_Player.GetS(22,30);  //��ּ������ 
    if iCount = -1 then
    begin
      iCount := 0; 
  	end   
    else if iCount = 9 then
	  begin
  	  iCount := iCount + 1;
  	  This_Player.SetS(22,30,iCount);
      This_Player.SetS(22,24,650);                                  // ��������� 
      This_Player.PlayerNotice('�������Ѿ�ɱ����ħţħ��'+inttostr(iCount)+'/10', 2);
      This_Player.PlayerNotice('�Ͽ��ȥ�Ҷ��޿����˰ɣ�', 2);
    end
    else if iCount < 9 then
    begin
  	  iCount := iCount + 1;
  	  This_Player.SetS(22,30,iCount);
      This_Player.PlayerNotice('�������Ѿ�ɱ����ħţħ��'+Inttostr(iCount)+'/10', 2);
    end;
  end; 
end.