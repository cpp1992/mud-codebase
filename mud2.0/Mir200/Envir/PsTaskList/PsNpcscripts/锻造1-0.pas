{
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
  '�Ͳ����Ƿ����߶�����������5���ӣ��ڼ䲻�ܱ���ֹ������5\'+ 
  '���Ӻ����ȡ����Ľ��ʯ�������м��ʻ�ö��⽱����\ \'+
  '|{cmd}<��Ҫ��ʼ���ʯ����/@ForgeDiamondStart>\'+
  '|{cmd}<��ȡ������ɵĽ��ʯ/@ForgeDiamondGet>\' +
  '|{cmd}<��ѯ���ʯ�������/@ForgeDiamondRule>'
  );
end;

procedure _ForgeDiamondRule;
begin
  This_Npc.NpcDialog(This_Player,
  '1.��ʼ����5���Ӻ�ſ���ȡ������ɵĽ��ʯ��\'+
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
  '|ÿ��ֻ��ѡ��1�ַ�ʽ����1�ζ��죬ÿ�ζ��춼�ɻ�ö��⽱����\ \'+
  '|{cmd}<ʹ��10Ԫ������30�Ž��ʯ/@ForgeDiamondStart_YB1>\'+
  '|{cmd}<ʹ��30Ԫ������90�Ž��ʯ/@ForgeDiamondStart_YB2>\'+
  '|{cmd}<ʹ��50Ԫ������150�Ž��ʯ/@ForgeDiamondStart_YB3>\'
  );
end;

function ForgeDiaYB(price, num: Integer):boolean;
begin
  This_Player.SetS(73,45,GetDateNum(GetNow));
  This_Player.SetS(73,46,ConvertDateTimeToDB(GetNow));
  This_Player.SetS(73,47,price);
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
      temp:= (ConvertDateTimeToDB(GetNow) - This_Player.GetS(73,46)) div 5;
      if temp >= 5 then
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
   This_Player.PsYBConsum(This_NPC,'ForgeDiaYB',20146,10,1); 
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
      temp:= (ConvertDateTimeToDB(GetNow) - This_Player.GetS(73,46)) div 5;
      if temp >= 5 then
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
   This_Player.PsYBConsum(This_NPC,'ForgeDiaYB',20147,30,1); 
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
      temp:= (ConvertDateTimeToDB(GetNow) - This_Player.GetS(73,46)) div 5;
      if temp >= 5 then
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
   This_Player.PsYBConsum(This_NPC,'ForgeDiaYB',20148,50,1); 
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
    {
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
   This_Player.PsYBConsum(This_NPC,'ForgeDiaYB',20149,30,1); 
   end;  
end;

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
   
function getZDJZname():string;
begin
    result := '';
    case random(5) of
        0:result :='����Ӿ���';
        1:result :='�����Ӿ���';
        2:result :='а����Ӿ���';
        3:result :='��Ѩ��Ӿ���';
        4:result :='ʯĹ��Ӿ���';
    end;
end;

function getExpnum() : integer;
var P_LV : integer;
begin
    P_LV := This_Player.Level;
   if P_LV <  1  then result := 0
   else if (P_LV >=  1 ) and (P_LV <=  7 ) then   result  := 57000
   else if (P_LV >=  8 ) and (P_LV <=  14 ) then   result  := 75000
   else if (P_LV >=  15 ) and (P_LV <=  18 ) then   result  := 90000
   else if (P_LV >=  19 ) and (P_LV <=  21 ) then   result  := 105000
   else if (P_LV >=  22 ) and (P_LV <=  24 ) then   result  := 120000
   else if (P_LV >=  25 ) and (P_LV <=  27 ) then   result  := 135000
   else if (P_LV >=  28 ) and (P_LV <=  30 ) then   result  := 150000
   else if (P_LV >=  31 ) and (P_LV <=  34 ) then   result  := 180000
   else if (P_LV >=  35 ) and (P_LV <=  37 ) then   result  := 210000
   else if (P_LV >=  38 ) and (P_LV <=  40 ) then   result  := 240000
   else if (P_LV >=  41 ) and (P_LV <=  42 ) then   result  := 270000
   else if (P_LV >=  43 ) and (P_LV <=  44 ) then   result  := 285000
   else if (P_LV >=  45 ) and (P_LV <=  45 ) then   result  := 300000
   else if (P_LV >=  46 ) and (P_LV <=  46 ) then   result  := 330000
   else if (P_LV >=  47 ) and (P_LV <=  48 ) then   result  := 345000
   else if (P_LV >=  49 ) and (P_LV <=  50 ) then   result  := 360000
   else if (P_LV >=  51 ) and (P_LV <=  52 ) then   result  := 375000
   else if (P_LV >=  53 ) and (P_LV <=  54 ) then   result  := 390000
   else if (P_LV >=  55 ) and (P_LV <=  56 ) then   result  := 405000
   else if (P_LV >=  57 ) and (P_LV <=  58 ) then   result  := 420000
   else result := 450000;
end;

function getdZprz():string;
begin
   result := '';
   case random(20) of
      0 : result := '��ʿ����';
      1 : result := '��ɫ����';
      2 : result := '��ש';
      3 : result := '��֮����';
      4 : result := 'ף����';
      5 : result := '̩̹��ָ';
      6 : result := '�������';
      7 : result := '�ϱ���';
      8 : result := 'ף����';
      9 : result := '��ħ����';
      10 : result := '����ͷ��';
      11 : result := 'ף����';
      12 : result := '������ָ';
      13 : result := 'ף����';
      14 : result := '����ѫ��15��';
      15 : result := '����ѫ��14��';
      16 : result := '����ѫ��13��';
      17 : result := '����ѫ��25��';
      18 : result := '����ѫ��24��';
      19 : result := '����ѫ��23��';
   end;
   
   
end;
 
procedure _ForgeDiamondGet;
var
i,temp,num,expnum,FreeBagNum:integer;
JZname , JZstr , morePrz : string;
begin
   JZname := '';
   JZstr := '';
   morePrz := '';
   if This_Player.GetS(73,46) > 0 then
   begin
      temp:= (ConvertDateTimeToDB(GetNow) - This_Player.GetS(73,46)) div 5;
      if temp >= 5 then
      begin
        num:= This_Player.GetS(73,47);
        case num of
          10:FreeBagNum:=1;
          30:FreeBagNum:=3;
          50:FreeBagNum:=6;
        end; 
        if This_Player.FreeBagNum > FreeBagNum then
        begin
          
          This_Player.SetS(73,46,0);
          This_Player.SetS(73,47,0); 
          This_Player.Give('���ʯ',num*3);
          
          for i:=1 to (num div 10) do
          begin
            JZname := getZDJZname;
            This_Player.Give(JZname,1);
            JZstr := JZstr + JZname;
            if i < (num div 10) then
            JZstr := JZstr + '��';
          end;
          
          expnum := getExpnum * num; 
          expnum := expnum - Random(expnum div 5) + (expnum div 10);
          
          This_Player.Give('����',expnum);
          
          if num = 50 then
          begin
             morePrz := getdZprz();
             This_Player.Give(morePrz,1);
             
             morePrz := '|���⽱��:' + morePrz;
          end else
          morePrz := '';
          
          
          This_Npc.NpcDialog(This_Player,
          '��ϲ�����˶�����ɵĽ���:'
          +'|���ʯ:'+inttostr(num*3)+'�ţ�����:'+inttostr(expnum)+'\'+
          '|����:' + JZstr
          +morePrz 
          );  
        end else
        This_Npc.NpcDialog(This_Player,
        '��İ���̫���ˣ�������һ�°ɡ�'
        );  
      end else 
      This_Npc.NpcDialog(This_Player,
      '���ϴζ���Ľ��ʯ��δ��ɣ�������ȡ���ʯ��\'+
      '��'+inttostr(5-temp)+'���Ӻ�������ȡ�'
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