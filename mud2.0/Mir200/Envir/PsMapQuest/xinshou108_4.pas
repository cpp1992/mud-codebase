{********************************************************************
* ��Ŀ���ƣ�
* ��Ԫ���ƣ� 
* ��Ԫ���ߣ�
* ժ    Ҫ��
* ��    ע��ʯĹ������ɫ�������� 

*******************************************************************}

Program Mir2;
var
  iCount : integer;
begin
   if This_Player.GetV(108,1) = 6 then
   begin
      iCount := This_Player.GetV(108,4);
      if (iCount = -1) or (iCount = 5) then
      begin
        Exit;
      end else
      begin
         iCount := Random(5) + 1;
         if iCount = 5 then
         begin
           This_Player.SetV(108,1,7);
           This_Player.SetV(108,4,iCount);
           This_Player.PlayerNotice('���Ѿ��ں�ɫ�����������ҵ����ź  �', 2);
           This_Player.PlayerNotice('�Ͽ��ȥ�����˺��ɣ�', 2);
           This_Player.UpdateTaskDetail(108,1);
         end;
      end;
   end;
end.

 