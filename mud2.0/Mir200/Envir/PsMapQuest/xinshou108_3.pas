{********************************************************************
* ��Ŀ���ƣ�
* ��Ԫ���ƣ� 
* ��Ԫ���ߣ�
* ժ    Ҫ��
* ��    ע��ʯĹһ����Ұ����� 

*******************************************************************}

Program Mir2;
var
  iCount : integer;
begin
   if This_Player.GetV(108,1) = 4 then
   begin
      iCount := This_Player.GetV(108,3);
      if iCount = -1 then
        Exit;
      else if iCount = 4 then
      begin
         iCount := iCount + 1;
         This_Player.SetV(108,1,5);
         This_Player.SetV(108,3,iCount);
         This_Player.PlayerNotice('�������Ѿ�ɱ����Ұ��5/5', 2);
         This_Player.PlayerNotice('�Ͽ��ȥ�����˺��ɣ�', 2);
         This_Player.UpdateTaskDetail(108,1);
         This_Player.UpdateTaskProgress(108,0);
      end else if iCount < 4 then
      begin
         iCount := iCount + 1;
         This_Player.SetV(108,3,iCount);
         This_Player.PlayerNotice('�������Ѿ�ɱ����Ұ��'+inttostr(iCount)+'/5', 2);
         This_Player.UpdateTaskProgress(108,0);
      end;
   end;
end.

 