function UseItem: Boolean;
var str : string; 
begin
  if This_Player.Level >= 11 then
  begin
    if This_Player.FreeBagNum > 5 then
    begin
      This_Player.Give('15�����',1);
      case This_Player.Job of
        0: 
        begin
          This_Player.Give('��ҩ�а�(��)',3);
          
          if This_Player.Gender = 0 then
          begin
            This_Player.SysGiveGift('���Ϳ���(��)',1,true);
            This_Player.PlayerDialog(
            '�����ˣ���ҩ�а�*3�����Ϳ���(��)��15����С�'
            );
          end else
          begin
            This_Player.SysGiveGift('���Ϳ���(Ů)',1,true);
            This_Player.PlayerDialog(
            '�����ˣ���ҩ�а�*3�����Ϳ���(Ů)��15����С�'
            );
          end;
            
        end;
        1: 
        begin
          This_Player.Give('��ҩ�а�(��)',1);
          This_Player.Give('ħ��ҩ�а�(��)',2);
          if This_Player.Gender = 0 then
          begin
            This_Player.SysGiveGift('���Ϳ���(��)',1,true);
            This_Player.PlayerDialog(
            '�����ˣ���ҩ�а�*3�����Ϳ���(��)��15����С�'
            );
          end else
          begin
            This_Player.SysGiveGift('���Ϳ���(Ů)',1,true);
            This_Player.PlayerDialog(
            '�����ˣ���ҩ�а�*1��ħ��ҩ�а�*2�����Ϳ���(Ů)��15����С�'
            );
          end;
            
        end;
        2: 
        begin
          This_Player.Give('��ҩ�а�(��)',2);
          This_Player.Give('ħ��ҩ�а�(��)',1);
          if This_Player.Gender = 0 then
          begin
            This_Player.SysGiveGift('���Ϳ���(��)',1,true);
            This_Player.PlayerDialog(
            '�����ˣ���ҩ�а�*3�����Ϳ���(��)��15����С�'
            );
          end else
          begin
            This_Player.SysGiveGift('���Ϳ���(Ů)',1,true);
            This_Player.PlayerDialog(
            '�����ˣ���ҩ�а�*2��ħ��ҩ�а�*1�����Ϳ���(Ů)��15����С�'
            );
          end;
           
        end;
      end; 
      Result := true;
    end 
    else
    begin
      This_Player.PlayerDialog(
      '�Բ��𣬰����ռ䲻�㣬��Ԥ��5�������ٴο�����'
      ); 
      Result := false; 
    end; 
  end
  else
  begin
    This_Player.PlayerDialog(
    '�Բ������ĵȼ���δ�ﵽ11�������ܿ���������У�\'
    ); 
    Result := false; 
  end;
end;

begin
end.