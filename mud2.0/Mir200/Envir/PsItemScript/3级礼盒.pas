function UseItem: Boolean;  
begin     
  if This_Player.Level >= 3 then
  begin
    if This_Player.FreeBagNum > 1 then
    begin
      This_Player.Give('7�����',1);
      This_Player.SysGiveGift('��ͳ����',1,true);
       This_Player.SysGiveGift('����',1,true);
       This_Player.SysGiveGift('����',1,true);
      case This_Player.Job of
      0: This_Player.SysGiveGift('������',2,true);
      1: This_Player.SysGiveGift('������',2,true);
      2: This_Player.SysGiveGift('������',2,true);
      
      end;
      This_Player.PlayerDialog(
      '�����ˣ���ͳ����*1��������*2��������7����С�'
      );
      Result := true;
    end 
    else
    begin
      This_Player.PlayerDialog(
      '�Բ��𣬰����ռ䲻�㣬��Ԥ��3�������ٴο�����'
      ); 
      Result := false; 
    end; 
  end
  else
  begin
    This_Player.PlayerDialog(
    '�Բ������ĵȼ���δ�ﵽ3�������ܿ���������У�\'
    ); 
    Result := false; 
  end;
end;

begin
end.