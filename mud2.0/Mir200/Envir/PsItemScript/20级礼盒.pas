function UseItem: Boolean;
begin
  if This_Player.Level >= 20 then
  begin
    if This_Player.FreeBagNum > 8 then
    begin
      This_Player.Give('25�����',1);
      case This_Player.Job of
        0: 
        begin
          This_Player.Give('��ҩ�а�(��)',6);
          This_Player.SysGiveGift('ն��',1,true);
          
          if This_Player.Gender = 0 then
          begin             
            This_Player.SysGiveGift('�ؿ���(��)',1,true);
            This_Player.PlayerDialog(
            '�����ˣ���ҩ�а�*6���ؿ���(��)��25����С�'
            );
          end else
          begin
            This_Player.SysGiveGift('�ؿ���(Ů)',1,true);
            This_Player.PlayerDialog(
            '�����ˣ���ҩ�а�*6���ؿ���(Ů)��25����С�'
            );
          end;
            
        end;
        1: 
        begin
          This_Player.Give('��ҩ�а�(��)',1);
          This_Player.Give('ħ��ҩ�а�(��)',5);
          This_Player.SysGiveGift('����',1,true);
          
          if This_Player.Gender = 0 then
          begin
            This_Player.SysGiveGift('ħ������(��)',1,true);
            This_Player.PlayerDialog(
            '�����ˣ���ҩ�а�*1��ħ��ҩ�а�*5�����¡�ħ������(��)��25����С�'
            );
          end else
          begin
            This_Player.SysGiveGift('ħ������(Ů)',1,true);
            This_Player.PlayerDialog(
            '�����ˣ���ҩ�а�*1��ħ��ҩ�а�*5�����¡�ħ������(Ů)��25����С�'
            );
          end;
            
        end;
        2: 
        begin
          This_Player.Give('��ҩ�а�(��)',2);
          This_Player.Give('ħ��ҩ�а�(��)',4);
          This_Player.SysGiveGift('��ħ',1,true);
          if This_Player.Gender = 0 then
          begin
            This_Player.SysGiveGift('���ս��(��)',1,true);
            This_Player.PlayerDialog(
            '�����ˣ���ҩ�а�*1��ħ��ҩ�а�*5�����ս��(��)��25����С�'
            );
          end else
          begin
            This_Player.SysGiveGift('���ս��(Ů)',1,true);
            This_Player.PlayerDialog(
            '�����ˣ���ҩ�а�*1��ħ��ҩ�а�*5�����ս��(Ů)��25����С�'
            );
          end;
           
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
    '�Բ������ĵȼ���δ�ﵽ20�������ܿ���������У�\'
    ); 
    Result := false; 
  end;
end;

begin
end.