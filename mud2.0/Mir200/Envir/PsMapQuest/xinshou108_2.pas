{********************************************************************

* ��Ŀ���ƣ�
* ��Ԫ���ƣ� 
* ��Ԫ���ߣ�
* ժ    Ҫ��
* ��    ע��ʯĹһ����Ұ����� 

*******************************************************************}

Program Mir2;
var
  iCount, iCount02, temp01, temp02, iTod: integer;
  sTod : double;
begin
   temp01 := This_Player.GetV(108,1);
   temp02 := This_Player.GetV(23,1);
   sTod := GetNow();
   iTod := GetDateNum(sTod);
   
   if This_Player.GetV(108,1) = 2 then
   begin
      iCount := This_Player.GetV(108,2);
      if iCount = -1 then
        Exit;
      else if iCount = 4 then
      begin
         iCount := iCount + 1;
         This_Player.SetV(108,1,3);
         This_Player.SetV(108,2,iCount);
         This_Player.PlayerNotice('�������Ѿ�ɱ����Ұ��5/5', 2);
         This_Player.PlayerNotice('�Ͽ��ȥ�����˺��ɣ�', 2);
         This_Player.UpdateTaskDetail(108,1);
         This_Player.UpdateTaskProgress(108,0);
      end else if iCount < 4 then
      begin
         iCount := iCount + 1;
         This_Player.SetV(108,2,iCount);
         This_Player.PlayerNotice('�������Ѿ�ɱ����Ұ��'+inttostr(iCount)+'/5', 2);
         This_Player.UpdateTaskProgress(108,0);
      end;
      end else if This_Player.GetV(108,1) = 8 then
      begin
         iCount := This_Player.GetV(108,5);
         if (iCount = -1) or (iCount = 5) then
         begin
                                                    //��������������ù���Ϊ�չ��� 
         end else 
         begin
            iCount := Random(10) + 1;
            if iCount = 5 then
            begin
               This_Player.SetV(108,1,9);
               This_Player.SetV(108,5,iCount);
               This_Player.PlayerNotice('���Ѿ��ں�Ұ��������ҵ������ź��������ɵ�������', 2);
               This_Player.PlayerNotice('�Ͽ��ȥ�����˺��ɣ�', 2);
               This_Player.UpdateTaskDetail(108,1);
            end;
         end;
      end; 
   
      if (This_Player.GetV(23,1) = 5) and (iTod = This_Player.GetV(23,24)) then
      begin
         iCount02 := This_Player.GetV(23,12);
         if iCount02 = 9 then
         begin
            iCount02 := iCount02 + 1;
            This_Player.SetV(23,1,10);                               //����ɴ�� 
            This_Player.SetV(23,12,iCount02);                        //��ּ��� 
            This_Player.PlayerNotice('�������Ѿ�ɱ����Ұ��10/10', 2);
            This_Player.PlayerNotice('�Ͽ��ȥ�һʹ�߰ɣ�', 2);
         end else if (iCount02 < 9) and (iCount02 >= 0) then
         begin
            iCount02 := iCount02 + 1;
            This_Player.SetV(23,12,iCount02);
            This_Player.PlayerNotice('�������Ѿ�ɱ����Ұ��'+inttostr(iCount02)+'/10', 2);
         end;
      end;
end.

 