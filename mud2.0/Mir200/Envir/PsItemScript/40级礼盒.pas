function UseItem: Boolean;
begin
  if This_Player.Level >= 40 then
  begin
    if This_Player.FreeBagNum > 16 then
    begin

      This_Player.SysGiveGift('����',1,true);
      //This_Player.SysGiveGift('�Ϲ�׹',5,true);
      case This_Player.Job of
        0: 
        begin
        This_Player.Give('������ҩ(��)',10);
        
        This_Player.PlayerDialog(
        '�����ˣ�������ҩ*10������*1��'
        );
        end;
        1: 
        begin
        This_Player.Give('������ҩ(��)',2);
        This_Player.Give('����ħ��ҩ(��)',8);
        
        This_Player.PlayerDialog(
        '�����ˣ�������ҩ*2������ħ��ҩ*8������*1��'
        );
        end;
        2: 
        begin
        This_Player.Give('������ҩ(��)',4);
        This_Player.Give('����ħ��ҩ(��)',6);
        
        This_Player.PlayerDialog(
        '�����ˣ�������ҩ*4������ħ��ҩ*6������*1��'
        );
        end;
      end;
      Result := true;
    end 
    else
    begin
      This_Player.PlayerDialog(
      '�Բ��𣬰����ռ䲻�㣬��Ԥ��16�������ٴο�����'
      ); 
      Result := false; 
    end; 
  end
  else
  begin
    This_Player.PlayerDialog(
    '�Բ������ĵȼ���δ�ﵽ40�������ܿ���������У�\'
    ); 
    Result := false; 
  end;
end;

begin
end.