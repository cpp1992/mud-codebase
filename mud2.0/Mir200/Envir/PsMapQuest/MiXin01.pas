{********************************************************************

* ��Ŀ���ƣ�
* ��Ԫ���ƣ�MiXin01
* ��Ԫ���ߣ�
* ժ    Ҫ��ÿ������������Ұ������� 
* ��    ע��

*******************************************************************}

PROGRAM Mir2;

var
  iCount , day, temMX : Integer;
  td : double;
begin
   td := GetNow;
   day := GetDateNum(td);    
   if ( day <> This_Player.GetS(21,2) ) or ( day = This_Player.GetS(21,3) ) or ( This_Player.GetV(16,98) <> 1 ) then
   begin
      Exit;
   end else
   begin
      temMX := random(20)+1;
      if temMX = 10 then
      begin
         This_Player.SetV(16,98,100);
         This_Player.PlayerNotice('��̽���ű����֣��Ͻ�ȥ�Ұ���������ʹ�ɣ�', 2);
      end;
   end;
end.  