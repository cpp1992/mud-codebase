{********************************************************************

*******************************************************************}
program mir2;

{$I common.pas}
{$I WarehouseAndMbind.pas} 
{$I ActiveValidateCom.pas}

procedure _DoExit;
begin
  This_Npc.CloseDialog(This_Player);
end;

procedure _Exit;
begin
  This_Npc.CloseDialog(This_Player);
end;

procedure domain;
begin
    This_NPC.NpcDialog(This_Player,
    '�귨��½�ϵĿ���ѱ����ȿ��ɣ��󲿷ֿ����Ѿ������ʽ�\'
    +'��֪���м�����δ���ɵ����ؿ󶴣�Ϊ�˱��������Դ����ÿ\'
    +'��ֻ���ض���ʱ�����������ǰ����\'
    +'|<���ؿ󶴿���ʱ�䣺9:00~9:30��15:00~15:30��20:00~20:30/c=red>\'
    +'|ע�����������и��ʱ�����ʯ��ÿ�ν�����Ҫ5���ҡ�\ \' 
    +'|{cmd}<ǰ�����ؿ�/@gotomine>\'
    +'|{cmd}<�������ؿ�/@aboutmine>\'
    );

end;

procedure _aboutmine;
begin
    This_NPC.NpcDialog(This_Player,
    '1.���ؿ�ÿ��9:00~9:30,15:00~15:30,20:00~20:30�ڼ俪�š�\'
    +'2.���ؿ󶴹ر�ʱ�����п��ڵ���ҽ��ᱻ������������ء�\'
    +'3.���ؿ����и����ڳ�ͭ���������󡢽�󡢺�����ʯ��\'
    +'4.�����ؿ��������и��ʱ��������еĿ�ʯ��\'
    +'5.ÿ�ν������ؿ���Ҫ5���ҡ�\ \' 
    +'|{cmd}<����/@main>\'
    );

end;

function getXYstr(Num:integer) : string; 
var temp_xy,temp_xy1,temp_xy2 : integer; 
begin 
    temp_xy1 := This_Player.GetActivePoint; 
    temp_xy2 := This_Player.GetTmpActivePoint;
    temp_xy :=temp_xy1+temp_xy2;
    case Num of
    0: result := inttostr(temp_xy);
    1: result := inttostr(temp_xy1);
    2: result := inttostr(temp_xy2);
    end;   
end;  

procedure _gotomine;
begin
   if AutoOpen(2) then
   begin
   This_NPC.NpcDialog(This_Player,
   '�ҿ�������ǰ�����ؿ󶴣������������ȸ���5���ҡ�\'+
   'Ŀǰ�귨��½ħ��ɧ�ң�ħ���ɳ������µľ�Ӣ����ռ����<���ؿ�/c=red>\'+
   '�˵�ͼ�����쳣���գ����û���㹻�Ĵ������÷����ǲ�������ȥ\'+
   '�����ġ�\'+
   '�㵱ǰ�Ĵ������÷�Ϊ<' + getXYstr(0) + '/c=red>�֣�������ʱ���÷�Ϊ<' + getXYstr(2) + '/c=red>�֣�\'+
   '����˵�ͼ��Ҫ�ﵽ<30/c=red>�֡�\ \'+    
   '|{cmd}<ǰ�����ؿ�/@gotomine_1>\'
   +ActiveValidateStr
   );
   end else
   This_NPC.NpcDialog(This_Player,
   '�ҿ�������ǰ�����ؿ󶴣������������ȸ���5���ҡ�\'+
   'Ŀǰ�귨��½ħ��ɧ�ң�ħ���ɳ������µľ�Ӣ����ռ����<���ؿ�/c=red>\'+
   '�˵�ͼ�����쳣���գ����û���㹻�Ĵ������÷����ǲ�������ȥ\'+
   '�����ġ�\'+
   '�㵱ǰ�Ĵ������÷�Ϊ<' + getXYstr(0) + '/c=red>�֣�������ʱ���÷�Ϊ<' + getXYstr(2) + '/c=red>�֣�\'+
   '����˵�ͼ��Ҫ�ﵽ<30/c=red>�֡�<����ǰ��ֱ�ӽ��룬'+inttostr(AutoOpenDay(2))+'�������֤��/c=red>\ \'+    
   +'|{cmd}<ǰ�����ؿ�/@gotomine_1>\'
   +ActiveValidateStr
   );
end;

procedure gotomineGetBack;
begin
  if (This_Player.MapName = 'D411~01') or (This_Player.MapName = 'D415~01') or (This_Player.MapName = 'D416~01') then
  begin
  This_Player.RandomFlyTo('0');
  end else
  exit;
end;

procedure _gotomine_1;
var
mine_temp:integer; 
mine_str:string;
begin
  if This_Player.MapName = '0' then
  begin
     if ((GetHour = 9) or (GetHour = 15) or (GetHour = 20)) and (GetMin < 30) then
     begin
       if This_Player.GoldNum >= 50000 then
       begin 
         if This_Player.GetActivePoint + This_Player.GetTmpActivePoint >= 30 then
         This_Player.DecGold(50000);
         case GetHour of
         9:mine_str:='D416~01';
         15:mine_str:='D415~01';
         20:mine_str:='D411~01';
         end; 
         mine_temp:= (30 - GetMin)*60;
         This_Player.RandomFlyTo(mine_str);
         This_Player.CallOut(This_Npc, mine_temp,'gotomineGetBack');
       end else
       This_Npc.NpcDialog(This_Player,
       '�������ؿ���Ҫ50000��ң�'
       );  
     end else
     This_NPC.NpcDialog(This_Player,
     '���ؿ�ÿ��9:00~9:30��15:00~15:30��20:00~20:30�ڼ俪�ţ�'
     ); 
  end else
  exit;   
end;

begin
 domain;
end.