{********************************************************************

* ��Ŀ���ƣ�
* ��Ԫ���ƣ� 
* ��Ԫ���ߣ�
* ժ    Ҫ��
* ��    ע�������ײĴ�а��ǯ����� 

*******************************************************************}

program mir2;

var
  iCount, iCount02, iTod: Integer;
  sTod : double;
begin
     sTod := GetNow();
     iTod := GetDateNum(sTod);
     
  if This_Player.GetV(108,1)= 17 then //�ж��Ƿ���ȡ���� 
  begin
    iCount := This_Player.GetV(108,7);  //��ּ������ 
    if iCount = -1 then
    begin
      iCount := 0; 
  	end   
    if iCount < 1 then
	  begin
  	  iCount := iCount + 1;
  	  This_Player.SetV(108,7,iCount);
      This_Player.SetV(108,1,18); // ��������� 
      This_Player.PlayerNotice('���Ѿ�ɱ��а��ǯ�棬�����ǯ��ǡ�',2);
      This_Player.PlayerNotice('�Ͽ�ر��������˺��ɣ�', 2);
      This_Player.UpdateTaskDetail(108,1);
    end;
  end;
     
     if (This_Player.GetV(23,10) = 5) and (iTod = This_Player.GetV(23,24)) then
     begin
        iCount02 := This_Player.GetV(23,21);
        if iCount02 = -1 then
        begin
           iCount02 := 0; 
  	    end
        if iCount02 = 1 then
	      begin
  	       iCount02 := iCount02 + 1;
  	       This_Player.SetV(23,21,iCount02);
           This_Player.SetV(23,10,10);                                  // ��������� 
           This_Player.PlayerNotice('�������Ѿ�ɱ��а��ǯ�棺'+inttostr(iCount02)+'/2', 2);
           This_Player.PlayerNotice('�Ͽ��ȥ�һʹ�߰ɣ�', 2);
        end 
        else if iCount02 = 0 then
        begin
  	       iCount02 := iCount02 + 1;
  	       This_Player.SetV(23,21,iCount02);
           This_Player.PlayerNotice('�������Ѿ�ɱ��а��ǯ�棺'+Inttostr(iCount02)+'/2', 2);
        end;
     end; 
end.