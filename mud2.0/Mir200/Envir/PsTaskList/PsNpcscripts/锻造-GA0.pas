{********************************************************************

*******************************************************************}

program Mir2;



procedure _DoExit;
begin
  This_Npc.CloseDialog(This_Player);
end;

procedure _Exit;
begin
  This_Npc.CloseDialog(This_Player);
end;

//*******************������ʯ*********************** 
procedure _ForgeDiamond;
begin
  This_Npc.NpcDialog(This_Player,
  '������ʯ��Ҫ��ǿ�����־�������ҵȼ��ﵽ15����һ����ʼ\'+
  '�Ͳ����Ƿ����߶�����������1��Сʱ���ڼ䲻�ܱ���ֹ������1\'+ 
  'Сʱ�����ȡ����Ľ��ʯ�������м��ʻ�ö��⽱����\ \'+
  '|{cmd}<��Ҫ��ʼ���ʯ����/@ForgeDiamondStart>\'+
  '|{cmd}<��ȡ������ɵĽ��ʯ/@ForgeDiamondGet>\' +
  '|{cmd}<��ѯ���ʯ�������/@ForgeDiamondRule>'
  );
end;

procedure _ForgeDiamondRule;
begin
  This_Npc.NpcDialog(This_Player,
  '1.��ʼ����1Сʱ��ſ���ȡ������ɵĽ��ʯ��\'+
  '2.��ǰ����δ��ɲ��������´ζ��졣\'+
  '3.ÿ��ֻ��ѡ��1�ַ�ʽ����1�ζ��졣\'+
  '4.ÿ����ȡ������ɵĽ��ʯʱ���ɻ�ö��⽱����\'+
  '5.ֻ��15�����ϵ���ʿ�ſɽ��ж��졣\ \'+
  '|{cmd}<���˽���ʯ������򣬷���/@ForgeDiamond>'
  );
end;

procedure _ForgeDiamondStart;
begin
  if This_Player.Level < 15 then
  begin
  This_Npc.NpcDialog(This_Player,
  '��ĵȼ�����15�������ɶ�����ʯ��'
  ); 
  end else
  This_Npc.NpcDialog(This_Player,
  'һ����ʼ���죬�����Ƿ����߶�������1Сʱ���Ҳ��ɱ���ֹ��\'+
  'ʹ��100Ԫ���ɶ���5�Ž��ʯ��ʹ��500Ԫ���ɶ���25�Ž��ʯ��\'+
  'ʹ��1000Ԫ���ɶ���50�Ž��ʯ��ʹ��3000Ԫ���ɶ���150�Ž��ʯ��\'+
  'ÿ��ֻ��ѡ��1�ַ�ʽ����1�ζ��죬ÿ�ζ��춼�ɻ�ö��⽱����\ \'+
  '|{cmd}<ʹ��100Ԫ������5�Ž��ʯ/@ForgeDiamondStart_YB1>\'+
  '|{cmd}<ʹ��500Ԫ������25�Ž��ʯ/@ForgeDiamondStart_YB2>\'+
  '|{cmd}<ʹ��1000Ԫ������50�Ž��ʯ/@ForgeDiamondStart_YB3>\'+
  '|{cmd}<ʹ��3000Ԫ������150�Ž��ʯ/@ForgeDiamondStart_YB4>\'
  );
end;

function ForgeDiaYB(price, num: Integer):boolean;
begin
  This_Player.SetS(73,45,GetDateNum(GetNow));
  This_Player.SetS(73,46,ConvertDateTimeToDB(GetNow));
  This_Player.SetS(73,47,price div 100);
  This_Npc.NpcDialog(This_Player,
  '���Ѿ��ɹ���ʼ���ʯ���죬��1Сʱ����ȡ������ɵĽ��ʯ��'
  );
  result := true;
end;

procedure _ForgeDiamondStart_YB1;
var
temp:integer;
begin  
   if This_Player.Level < 15 then
   begin
   This_Npc.NpcDialog(This_Player,
   '��ĵȼ�����15�������ɶ�����ʯ��'
   ); 
   end else
   if This_Player.GetS(73,45) = GetDateNum(GetNow) then
   begin
   This_Npc.NpcDialog(This_Player,
   '������Ѿ����й����ʯ�����ˣ������������ɣ�'
   ); 
   end else
   if This_Player.GetS(73,46) > 0 then
   begin
      temp:= (ConvertDateTimeToDB(GetNow) - This_Player.GetS(73,46)) div 60;
      if temp >= 60 then
      begin
      This_Npc.NpcDialog(This_Player,
      '������δ��ȡ�Ľ��ʯ��������ȡ���������죡'
      ); 
      end else 
      This_Npc.NpcDialog(This_Player,
      '���ϴεĶ��컹δ��ɣ������ٴν��ж��졣'
      ); 
   end else
   begin
   This_Player.PsYBConsum(This_NPC,'ForgeDiaYB',20146,100,1); 
   end;  
end;

{procedure _ForgeDiamondStart_JD1;
var
temp:integer;
begin
   if This_Player.Level < 15 then
   begin
   This_Npc.NpcDialog(This_Player,
   '��ĵȼ�����15�������ɶ�����ʯ��'
   ); 
   end else
   if This_Player.GetS(73,45) = GetDateNum(GetNow) then
   begin
   This_Npc.NpcDialog(This_Player,
   '������Ѿ����й����ʯ�����ˣ������������ɣ�'
   ); 
   end else
   if This_Player.GetS(73,46) > 0 then
   begin
      temp:= (ConvertDateTimeToDB(GetNow) - This_Player.GetS(73,46)) div 60;
      if temp >= 60 then
      begin
      This_Npc.NpcDialog(This_Player,
      '������δ��ȡ�Ľ��ʯ��������ȡ���������죡'
      ); 
      end else 
      This_Npc.NpcDialog(This_Player,
      '���ϴεĶ��컹δ��ɣ������ٴν��ж��졣'
      ); 
   end else
   begin
      if This_Player.GloryPoint >= 100 then 
      begin
        if This_Player.DecGloryPoint(30078,100,1,false,'���ʯ����') then
        begin
          ForgeDiaYB(1,1);
        end; 
      end else
      begin
      This_Npc.NpcDialog(This_Player,
      '��Ľ𶧲��㣡\' );
      end;      
   end;  
end;
        }
procedure _ForgeDiamondStart_YB2;
var
temp:integer;
begin
   if This_Player.Level < 15 then
   begin
   This_Npc.NpcDialog(This_Player,
   '��ĵȼ�����15�������ɶ�����ʯ��'
   ); 
   end else
   if This_Player.GetS(73,45) = GetDateNum(GetNow) then
   begin
   This_Npc.NpcDialog(This_Player,
   '������Ѿ����й����ʯ�����ˣ������������ɣ�'
   ); 
   end else
   if This_Player.GetS(73,46) > 0 then
   begin
      temp:= (ConvertDateTimeToDB(GetNow) - This_Player.GetS(73,46)) div 60;
      if temp >= 60 then
      begin
      This_Npc.NpcDialog(This_Player,
      '������δ��ȡ�Ľ��ʯ��������ȡ���������죡'
      ); 
      end else 
      This_Npc.NpcDialog(This_Player,
      '���ϴεĶ��컹δ��ɣ������ٴν��ж��졣'
      ); 
   end else
   begin
   This_Player.PsYBConsum(This_NPC,'ForgeDiaYB',20147,500,1); 
   end;  
end;
{
procedure _ForgeDiamondStart_JD2;
var
temp:integer;
begin
   if This_Player.Level < 15 then
   begin
   This_Npc.NpcDialog(This_Player,
   '��ĵȼ�����15�������ɶ�����ʯ��'
   ); 
   end else
   if This_Player.GetS(73,45) = GetDateNum(GetNow) then
   begin
   This_Npc.NpcDialog(This_Player,
   '������Ѿ����й����ʯ�����ˣ������������ɣ�'
   ); 
   end else
   if This_Player.GetS(73,46) > 0 then
   begin
      temp:= (ConvertDateTimeToDB(GetNow) - This_Player.GetS(73,46)) div 60;
      if temp >= 60 then
      begin
      This_Npc.NpcDialog(This_Player,
      '������δ��ȡ�Ľ��ʯ��������ȡ���������죡'
      ); 
      end else 
      This_Npc.NpcDialog(This_Player,
      '���ϴεĶ��컹δ��ɣ������ٴν��ж��졣'
      ); 
   end else
   begin
      if This_Player.GloryPoint >= 500 then 
      begin
        if This_Player.DecGloryPoint(30079,500,1,false,'���ʯ����') then
        begin
          ForgeDiaYB(5,1);
        end; 
      end else
      begin
      This_Npc.NpcDialog(This_Player,
      '��Ľ𶧲��㣡\' );
      end;      
   end;  
end;
   }
procedure _ForgeDiamondStart_YB3;
var
temp:integer;
begin
   if This_Player.Level < 15 then
   begin
   This_Npc.NpcDialog(This_Player,
   '��ĵȼ�����15�������ɶ�����ʯ��'
   ); 
   end else
   if This_Player.GetS(73,45) = GetDateNum(GetNow) then
   begin
   This_Npc.NpcDialog(This_Player,
   '������Ѿ����й����ʯ�����ˣ������������ɣ�'
   ); 
   end else
   if This_Player.GetS(73,46) > 0 then
   begin
      temp:= (ConvertDateTimeToDB(GetNow) - This_Player.GetS(73,46)) div 60;
      if temp >= 60 then
      begin
      This_Npc.NpcDialog(This_Player,
      '������δ��ȡ�Ľ��ʯ��������ȡ���������죡'
      ); 
      end else 
      This_Npc.NpcDialog(This_Player,
      '���ϴεĶ��컹δ��ɣ������ٴν��ж��졣'
      ); 
   end else
   begin
   This_Player.PsYBConsum(This_NPC,'ForgeDiaYB',20148,1000,1); 
   end;  
end;
{
procedure _ForgeDiamondStart_JD3;
var
temp:integer;
begin
   if This_Player.Level < 15 then
   begin
   This_Npc.NpcDialog(This_Player,
   '��ĵȼ�����15�������ɶ�����ʯ��'
   ); 
   end else
   if This_Player.GetS(73,45) = GetDateNum(GetNow) then
   begin
   This_Npc.NpcDialog(This_Player,
   '������Ѿ����й����ʯ�����ˣ������������ɣ�'
   ); 
   end else
   if This_Player.GetS(73,46) > 0 then
   begin
      temp:= (ConvertDateTimeToDB(GetNow) - This_Player.GetS(73,46)) div 60;
      if temp >= 60 then
      begin
      This_Npc.NpcDialog(This_Player,
      '������δ��ȡ�Ľ��ʯ��������ȡ���������죡'
      ); 
      end else 
      This_Npc.NpcDialog(This_Player,
      '���ϴεĶ��컹δ��ɣ������ٴν��ж��졣'
      ); 
   end else
   begin
      if This_Player.GloryPoint >= 1000 then 
      begin
        if This_Player.DecGloryPoint(30080,1000,1,false,'���ʯ����') then
        begin
          ForgeDiaYB(10,1);
        end; 
      end else
      begin
      This_Npc.NpcDialog(This_Player,
      '��Ľ𶧲��㣡\' );
      end;      
   end;  
end;
   }
procedure _ForgeDiamondStart_YB4;
var
temp:integer;
begin
   if This_Player.Level < 15 then
   begin
   This_Npc.NpcDialog(This_Player,
   '��ĵȼ�����15�������ɶ�����ʯ��'
   ); 
   end else
   if This_Player.GetS(73,45) = GetDateNum(GetNow) then
   begin
   This_Npc.NpcDialog(This_Player,
   '������Ѿ����й����ʯ�����ˣ������������ɣ�'
   ); 
   end else
   if This_Player.GetS(73,46) > 0 then
   begin
      temp:= (ConvertDateTimeToDB(GetNow) - This_Player.GetS(73,46)) div 60;
      if temp >= 60 then
      begin
      This_Npc.NpcDialog(This_Player,
      '������δ��ȡ�Ľ��ʯ��������ȡ���������죡'
      ); 
      end else 
      This_Npc.NpcDialog(This_Player,
      '���ϴεĶ��컹δ��ɣ������ٴν��ж��졣'
      ); 
   end else
   begin
   This_Player.PsYBConsum(This_NPC,'ForgeDiaYB',20149,3000,1); 
   end;  
end;
{
procedure _ForgeDiamondStart_JD4;
var
temp:integer;
begin
   if This_Player.Level < 15 then
   begin
   This_Npc.NpcDialog(This_Player,
   '��ĵȼ�����15�������ɶ�����ʯ��'
   ); 
   end else
   if This_Player.GetS(73,45) = GetDateNum(GetNow) then
   begin
   This_Npc.NpcDialog(This_Player,
   '������Ѿ����й����ʯ�����ˣ������������ɣ�'
   ); 
   end else
   if This_Player.GetS(73,46) > 0 then
   begin
      temp:= (ConvertDateTimeToDB(GetNow) - This_Player.GetS(73,46)) div 60;
      if temp >= 60 then
      begin
      This_Npc.NpcDialog(This_Player,
      '������δ��ȡ�Ľ��ʯ��������ȡ���������죡'
      ); 
      end else 
      This_Npc.NpcDialog(This_Player,
      '���ϴεĶ��컹δ��ɣ������ٴν��ж��졣'
      ); 
   end else
   begin
      if This_Player.GloryPoint >= 3000 then 
      begin
        if This_Player.DecGloryPoint(30081,3000,1,false,'���ʯ����') then
        begin
          ForgeDiaYB(30,1);
        end; 
      end else
      begin
      This_Npc.NpcDialog(This_Player,
      '��Ľ𶧲��㣡\' );
      end;      
   end;  
end;
   }
procedure _ForgeDiamondGet;
var
temp,num,expnum:integer;
begin
   if This_Player.GetS(73,46) > 0 then
   begin
      temp:= (ConvertDateTimeToDB(GetNow) - This_Player.GetS(73,46)) div 60;
      if temp >= 60 then
      begin
        if This_Player.FreeBagNum > 0 then
        begin
          num:= This_Player.GetS(73,47);
          This_Player.SetS(73,46,0);
          This_Player.SetS(73,47,0); 
          This_Player.Give('���ʯ',num*5);
          case num of
          1:expnum:=random(40001)+10000;
          5:expnum:=random(50001)+30000;
          10:expnum:=random(50001)+50000;
          30:expnum:=random(100001)+100000;
          end;
          This_Player.Give('����',expnum);
          This_Player.Give('����',2); 
          This_Npc.NpcDialog(This_Player,
          '��ϲ�����˶�����ɵĽ�����'+inttostr(num*5)+'�Ž��ʯ��\'+
          '��ϲ�����˶���Ľ�����'+inttostr(expnum)+'�����2��������'
          );  
        end else
        This_Npc.NpcDialog(This_Player,
        '��İ���̫���ˣ�������һ�°ɡ�'
        );  
      end else 
      This_Npc.NpcDialog(This_Player,
      '���ϴζ���Ľ��ʯ��δ��ɣ�������ȡ���ʯ��\'+
      '��'+inttostr(60-temp)+'���Ӻ�������ȡ��'
      ); 
   end else
   This_Npc.NpcDialog(This_Player,
   '�㻹δ���н��ʯ���죬������ȡ���ʯ��'
   );     
end;




begin    
   
  This_Npc.NpcDialog(This_Player,
  '|{cmd}<���ʯ����/@ForgeDiamond>                    \ \' 
  );
end.  