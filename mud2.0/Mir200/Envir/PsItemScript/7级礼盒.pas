function UseItem: Boolean;
var
str:string;
begin
  if This_Player.Level >= 7 then
  begin
    if This_Player.FreeBagNum > 6 then
    begin
      This_Player.Give('11�����',1);
      This_Player.Give('��ҩ�а�(��)',1);
      This_Player.SysGiveGift('��ľ��',1,True);
    
      case This_Player.Job of
        0:
        begin
          This_Player.SysGiveGift('ţ�ǽ�ָ',2,True);
          This_Player.SysGiveGift('��������',1,True);
          str:='��������*1��ţ�ǽ�ָ*2';
        end;
        1:
        begin
          This_Player.SysGiveGift('���ǽ�ָ',2,True);
          This_Player.SysGiveGift('������',1,True);
          str:='������*1�����ǽ�ָ*2';
        end;
        2:
        begin
          This_Player.SysGiveGift('������ָ',2,True);
          This_Player.SysGiveGift('������ս��',1,True);
          This_Player.SysGiveGift('������',1,True);
          str:='������*1��������ս��*1��������ָ*2';
        end;
      end;
      
      This_Player.PlayerDialog(
      '�����ˣ���ľ������ҩ�а���'+str+'��11����С�'
      );
      Result := true;
    end 
    else
    begin
      This_Player.PlayerDialog(
      '�Բ��𣬰����ռ䲻�㣬��Ԥ��6�������ٴο�����'
      ); 
      Result := false; 
    end; 
  end
  else
  begin
    This_Player.PlayerDialog(
    '�Բ������ĵȼ���δ�ﵽ7�������ܿ���������У�\'
    ); 
    Result := false; 
  end;
end;

begin
end.