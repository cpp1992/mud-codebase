function UseItem: Boolean;
begin
  if This_Player.Level >= 15 then
  begin
    if This_Player.FreeBagNum > 8 then
    begin
      This_Player.Give('20�����',1);
      case This_Player.Job of
        0: 
        begin
          This_Player.Give('��ҩ�а�(��)',6);
          This_Player.SysGiveGift('�˻�',1,true);
          This_Player.SysGiveGift('��ɱ����',1,true);
          This_Player.PlayerDialog(
          '�����ˣ���ҩ�а�*6���˻ġ���ɱ������20����С�'
          );
            
        end;
        1: 
        begin
          This_Player.Give('��ҩ�а�(��)',1);
          This_Player.Give('ħ��ҩ�а�(��)',5);
          This_Player.SysGiveGift('����',1,true);
          This_Player.SysGiveGift('�׵���',1,true);
          This_Player.PlayerDialog(
          '�����ˣ���ҩ�а�*1��ħ��ҩ�а�*5�����ꡢ�׵�����20����С�'
          );  
        end;
        2: 
        begin
          This_Player.Give('��ҩ�а�(��)',2);
          This_Player.Give('ħ��ҩ�а�(��)',4);
          This_Player.SysGiveGift('����',1,true);
          This_Player.SysGiveGift('�ٻ�����',1,true);
          This_Player.SysGiveGift('�����',1,true);
          This_Player.PlayerDialog(
          '�����ˣ���ҩ�а�*2��ħ��ҩ�а�*4�����¡��ٻ����á��������20����С�'
          );
           
        end;
      end; 
      Result := true;
    end 
    else
    begin
      This_Player.PlayerDialog(
      '�Բ��𣬰����ռ䲻�㣬��Ԥ��8�������ٴο�����'
      ); 
      Result := false; 
    end; 
  end
  else
  begin
    This_Player.PlayerDialog(
    '�Բ������ĵȼ���δ�ﵽ15�������ܿ���������У�\'
    ); 
    Result := false; 
  end;
end;

begin
end.