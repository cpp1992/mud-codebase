function UseItem: Boolean;
begin
  if This_Player.Level >= 35 then
  begin
    if This_Player.FreeBagNum > 13 then
    begin
      This_Player.Give('40�����',1);
      This_Player.SysGiveGift('����',1,true);
     // This_Player.SysGiveGift('�Ϲ�׹',2,true);
      case This_Player.Job of
        0: 
        begin
        This_Player.Give('������ҩ(��)',10);
        
        This_Player.PlayerDialog(
        '�����ˣ�������ҩ*10������*1��40����С�'
        );
        end;
        1: 
        begin
        This_Player.Give('������ҩ(��)',2);
        This_Player.Give('����ħ��ҩ(��)',8);
        
        This_Player.PlayerDialog(
        '�����ˣ�������ҩ*2������ħ��ҩ*8������*1��40����С�'
        );
        end;
        2: 
        begin
        This_Player.Give('������ҩ(��)',4);
        This_Player.Give('����ħ��ҩ(��)',6);
        
        This_Player.PlayerDialog(
        '�����ˣ�������ҩ*4������ħ��ҩ*6������*1��40����С�'
        );
        end;
      end;
      Result := true;
    end 
    else
    begin
      This_Player.PlayerDialog(
      '�Բ��𣬰����ռ䲻�㣬��Ԥ��13�������ٴο�����'
      ); 
      Result := false; 
    end; 
  end
  else
  begin
    This_Player.PlayerDialog(
    '�Բ������ĵȼ���δ�ﵽ35�������ܿ���������У�\'
    ); 
    Result := false; 
  end;
end;

begin
end.