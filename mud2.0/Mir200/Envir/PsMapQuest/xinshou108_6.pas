{********************************************************************

* ��Ŀ���ƣ�
* ��Ԫ���ƣ� 
* ��Ԫ���ߣ�
* ժ    Ҫ��
* ��    ע��ʯĹ����Ш����� 

*******************************************************************}

Program Mir2;
var
  iCount : integer;
begin
   if This_Player.GetV(108,1) = 13 then
   begin
      iCount := This_Player.GetV(108,6);
      if iCount = -1 then
        Exit;
      else if iCount = 2 then
      begin
         iCount := iCount + 1;
         This_Player.SetV(108,1,14);
         This_Player.SetV(108,6,iCount);
         This_Player.PlayerNotice('���Ѿ���ȡ�������Ķ���', 2);
         This_Player.PlayerNotice('�Ͽ��ȥ��ʯĹ���·����ϰ�ɣ�', 2);
         This_Player.UpdateTaskDetail(108,1);
      end else if iCount < 2 then
      begin
         iCount := iCount + 1;
         This_Player.SetV(108,6,iCount);
      end;
   end;
end.

 