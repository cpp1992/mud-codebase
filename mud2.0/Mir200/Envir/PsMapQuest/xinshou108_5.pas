{********************************************************************

* ��Ŀ���ƣ�
* ��Ԫ���ƣ� 
* ��Ԫ���ߣ�
* ժ    Ҫ��
* ��    ע��ʯĹ������Ұ����� 

*******************************************************************}

Program Mir2;
var
  iCount : integer;
begin
   if This_Player.GetV(108,1) = 8 then
   begin
      iCount := This_Player.GetV(108,5);
      if (iCount = -1) or (iCount = 5) then
        Exit;
      else
      begin
         iCount := Random(5) + 1;
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
end.

 