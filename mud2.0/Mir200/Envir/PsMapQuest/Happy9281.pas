{********************************************************************
* ��Ŀ���ƣ�
* ��Ԫ���ƣ�Happy9281
* ��Ԫ���ߣ�
* ժ    Ҫ��
* ��    ע�� 
* ���¼�¼��
*******************************************************************}


PROGRAM Mir2;

var
  iCount, day, iCount02: Integer;
  td : double;
begin
   td := GetNow;
   day := GetDateNum(td);
                                                                      
      if (This_Player.GetV(23,3) = 5) and (day = This_Player.GetV(23,24)) then
      begin
         iCount02 := This_Player.GetV(23,14);
         if iCount02 = 2 then
         begin
            iCount02 := iCount02 + 1;
            This_Player.SetV(23,14,iCount02);
            This_Player.SetV(23,3,10);
            This_Player.PlayerNotice('�������Ѿ������˰�Ұ��' + IntToStr(iCount02) + '/3', 2);
            This_Player.PlayerNotice('���ȥ�һʹ�߰�', 2);
         end else if (iCount02 < 2) and (iCount02 >= 0) then
         begin
            iCount02 := iCount02 + 1;
            This_Player.SetV(23,14,iCount02);
            This_Player.PlayerNotice('�������Ѿ������˰�Ұ��' + IntToStr(iCount02) + '/3', 2);
         end;
      end;
      
      if (day = This_Player.GetS(13,2)) and (day <> This_Player.GetS(13,3)) and (This_Player.GetS(13,1) = 4) and (This_Player.Level >= 40) then                                                 
      begin
         iCount := This_Player.GetV(16, 99);
         if (iCount < 4) and (iCount >= 0) then
         begin
            iCount := iCount + 1;
            This_Player.SetV(16,99,iCount);
            This_Player.PlayerNotice('�������Ѿ������˰�Ұ��' + IntToStr(iCount) + '/5', 2);            //�����Ǥ��ͣ�
         end else if iCount = 4 then
         begin
            This_Player.PlayerNotice('�������Ѿ�������5����Ұ�����ȥ����̽��', 2);
            This_Player.SetS(13,1,5);
         end;
      end else
         Exit;
end.