{
*******************************************************************}

program Mir2;

 

procedure _DoExit;
begin
  This_Npc.CloseDialog(This_Player);
end;

procedure _qianming;
begin
  This_Npc.NpcDialog(This_Player,
   'Ϊ����ף����ĵ���������������������ʿǰ���귨����Ѳ�飬\'+
   '�Ա�֤����İ�ȫ������ֻҪ���귨��½���Ĵ�Ѳ������Сʱ��\'+
   '�Ϳ��Եõ������ľ��������ÿ��22���Ժ󣬲����Խ���Ѳ��\'+
   '������ʿ����Ը��������Ѳ������ô��\ \'+
   '|{cmd}<�ǵģ���Ը��/@qianming_1>\ \'+
   '|{cmd}<���ٿ���һ��/@doexit>');
end;

procedure _qianming_1;
var
d1 , d2 , d3 : integer;
s1 , td : double;
begin
   td := GetNow;
   d1 := GetDateNum(td);
   if d1 = This_Player.GetS(15,4) then
   begin
      This_Npc.NpcDialog(This_Player,
      '���Ѿ��μӹ�������귨Ѳ�������ˣ������������ɣ�');
      Exit; 
   end;
   
   if d1 = This_Player.GetS(15,2) then
   begin
      This_Npc.NpcDialog(This_Player,
      '���Ѿ���ȡ�����ˣ���������������Сʱ��\'+
      '��������������콱�ɡ�\');
      Exit;
   end;
  
   if (GetHour >= 22) or (GetHour >= 23) then
   begin
      This_Npc.NpcDialog(This_Player,
      '�����Ѿ���22��֮�����ҹ�ˣ�\'+
      '��ʿ���������Ѿ����ٽ���Ѳ�������ˣ����������ɣ�\');
   end else
   begin
      s1 := GetNow;
      d2 := GetDateNum(s1);
      //��getnow�ĸ�����ת��Ϊ���ͽ��б��棻 
      d3 := ConvertDateTimeToDB(s1);
      This_Npc.NpcDialog(This_Player,
      '�Ҽ�����������ˣ���Сʱ��ȥ�ұ�������ɣ�');
      This_Player.SetS(15,2,d2);
      This_Player.SetS(15,3,d3);
   end;
end;

procedure _ChuMoRDM;
begin
   if This_Player.Level < 36 then
   begin
      This_Npc.NpcDialog(This_Player,
      '��ĵȼ�û��36����Ϊ����İ�ȫ���Ҳ�������ȥð�գ�\ \|{cmd}<����/@main>');
   end else
   begin
      This_Npc.NpcDialog(This_Player,
      '���������������ȡ��ħ������ɺ���Ի�ø߶����\'+
      '��һ�ֳ�ħ�������5�������У�ÿ����������Ľ�����\'+
      'Խ��Խ�á�\'+
      '����������ȡ������̫�ѣ���Ҳ���Ի���50000���������ȡ����\'+
      '������ÿ��ֻ�����һ�ֵĳ�ħ���񡭡�\ \'+
      '|{cmd}<��ȡ����/@GetCMShaG>             ^<������ȡ����/@ChgCMShaG>            ^<��ȡ����/@DoneCMShaG>\ \'+
      '|{cmd}<����/@main>');
   end;
end;

Procedure Clear;
var
  iGetSG: integer;
begin
   for iGetSG := 1 to 22 do
   begin
      This_Player.SetV(23,iGetSG,0);
   end;
end;

Procedure _DoneCMShaG;
var
  tFin, iGetSG, iTod: integer;
  sTod : double;
begin
   sTod := GetNow();
   iTod := GetDateNum(sTod);
   if iTod = This_Player.GetV(23,25) then
   begin
      This_Npc.NpcDialog(This_Player,
      '������Ѿ������һ�ֳ�ħ���������������ɣ�');
      Exit;
   end;
   
   if iTod <> This_Player.GetV(23,24) then
   begin
      This_Npc.NpcDialog(This_Player,
      '����컹û����ȡ�����Ҳ��ܸ����κν�����');
      Exit;
   end;
   
   if This_Player.Level < 36 then
   begin
      This_Npc.NpcDialog(This_Player,
      '��ĵȼ�û��36����Ϊ����İ�ȫ���Ҳ�������ȥð�գ�\ \|{cmd}<����/@main>');
      Exit;
   end;
   
   tFin := This_Player.GetV(23,23);                               //��¼�ۻ���ɵĴ���1-5
   if (This_Player.GetV(23,11) = 5) or (This_Player.GetV(23,10) = 5) or (This_Player.GetV(23,9) = 5) or (This_Player.GetV(23,8) = 5) 
      or (This_Player.GetV(23,7) = 5) or (This_Player.GetV(23,6) = 5) or (This_Player.GetV(23,5) = 5) or (This_Player.GetV(23,4) = 5) 
      or (This_Player.GetV(23,3) = 5) or (This_Player.GetV(23,2) = 5) or (This_Player.GetV(23,1) = 5) then
   begin
      This_NPC.NpcDialog(This_Player,
      '�㻹û������ҽ������������ô����ȡ�����أ�');
   end else if (This_Player.GetV(23,11) <= 0) and (This_Player.GetV(23,10) <= 0) and (This_Player.GetV(23,9) <= 0) and (This_Player.GetV(23,8) <= 0) 
      and (This_Player.GetV(23,7) <= 0) and (This_Player.GetV(23,6) <= 0) and (This_Player.GetV(23,5) <= 0) and (This_Player.GetV(23,4) <= 0) 
      and (This_Player.GetV(23,3) <= 0) and (This_Player.GetV(23,2) <= 0) and (This_Player.GetV(23,1) <= 0) then 
   begin
      This_NPC.NpcDialog(This_Player,
      '�㻹û����ȡ�����أ��Ҳ��ܸ����κν�����');
   end else
   begin 
      tFin := This_Player.GetV(23,23);                               //��¼�ۻ���ɵĴ���1-5  
      for iGetSG := 1 to 11 do
      begin
         if This_Player.GetV(23,iGetSG) = 10 then
         begin
            if This_Player.FreeBagNum < 1 then
            begin
               This_NPC.NpcDialog(This_Player,
               '��İ���̫����������֮��������');
               Exit;
            end else
            begin
               if tFin > 4 then
               begin
                  Exit;
               end else if (tFin <= 4) and (tFin > 0) then
               begin
                  case tFin of 
                    4 :
                    begin
                       if This_Player.SetV(23,25,iTod) then
                       begin
                          {$IFDEF Q130_zhenlong}
                          This_Player.Give('����',18000000);
                          {$ELSE}
                          This_Player.Give('����',30000000);
                          {$ENDIF}
                          This_Player.Give('����������',1);
                          This_NPC.NpcDialog(This_Player,
                          '������Ľ����������£�\��ϲ�������һ�ֳ�ħ����');
                          This_Player.SetV(23,23,0);
                       end;
                    end;
                    3 :
                    begin
                       {$IFDEF Q130_zhenlong}
                       This_Player.Give('����',7000000);
                       {$ELSE}
                       This_Player.Give('����',14000000);
                       {$ENDIF}
                       This_NPC.NpcDialog(This_Player,
                       '������Ľ����������£�\��ֻ��Ҫ�����1�����񣬾Ϳ������һ�ֵĳ�ħ�����ˣ�');
                       This_Player.SetV(23,23,4);
                    end;
                    2 :
                    begin
                       {$IFDEF Q130_zhenlong}
                       This_Player.Give('����',6000000);
                       {$ELSE}
                       This_Player.Give('����',8000000);
                       {$ENDIF}
                       This_NPC.NpcDialog(This_Player,
                       '������Ľ����������£�\��ֻ��Ҫ�����2�����񣬾Ϳ������һ�ֵĳ�ħ�����ˣ�');
                       This_Player.SetV(23,23,3);
                    end;
                    1 :
                    begin
                       This_Player.Give('����',5000000);
                       This_NPC.NpcDialog(This_Player,
                       '������Ľ����������£�\��ֻ��Ҫ�����3�����񣬾Ϳ������һ�ֵĳ�ħ�����ˣ�');
                       This_Player.SetV(23,23,2);
                    end;   
                  end;
                  Clear;
               end else
               begin
                  {$IFDEF Q130_zhenlong}
                  This_Player.Give('����',4000000);
                  {$ELSE}
                  This_Player.Give('����',3000000);
                  {$ENDIF}
                  This_NPC.NpcDialog(This_Player,
                  '������Ľ����������£�\��ֻ��Ҫ�����4�����񣬾Ϳ������һ�ֵĳ�ħ�����ˣ�');
                  This_Player.SetV(23,23,1);
                  Clear;
               end;
               Exit;
            end;  
         end;
      end;
   end; 
end;

Procedure _GetCMShaG;
var
  iCMRa, iCMRa01, iTemp01, iTemp02, iTod, fxh01, iYest: integer;
  sSGDialg: string;
  sTod : double;
begin
   sTod := GetNow();
   iTod := GetDateNum(sTod);
   if iTod = This_Player.GetV(23,25) then
   begin
      This_Npc.NpcDialog(This_Player,
      '������Ѿ������һ�ֳ�ħ���������������ɣ�');
      Exit;
   end;
   
   if This_Player.Level < 36 then
   begin
      This_Npc.NpcDialog(This_Player,
      '��ĵȼ�û��36����Ϊ����İ�ȫ���Ҳ�������ȥð�գ�\ \|{cmd}<����/@main>');
      Exit;
   end;
   
   iTemp01 := 0;                                     //��¼�Ƿ��������Ѿ�ɱ��� 
   iTemp02 := 0;
   iYest := This_Player.GetV(23,24);
   begin                                     //��¼�Ƿ��������ѽ�
      if (iYest = iTod) and (This_Player.GetV(23,11) = 10) then
      begin
         iTemp01 := 11;
      end else if This_Player.GetV(23,11) = 5 then
      begin
         iTemp02 := 11;
      end else if This_Player.GetV(23,10) = 10 then
      begin
         iTemp01 := 10;
      end else if This_Player.GetV(23,10) = 5 then
      begin
         iTemp02 := 10;
      end else if This_Player.GetV(23,9) = 10 then
      begin
         iTemp01 := 9;
      end else if This_Player.GetV(23,9) = 5 then
      begin
         iTemp02 := 9;
      end else if This_Player.GetV(23,8) = 10 then
      begin
         iTemp01 := 8;
      end else if This_Player.GetV(23,8) = 5 then
      begin
         iTemp02 := 8;
      end else if This_Player.GetV(23,7) = 10 then
      begin
         iTemp01 := 7;
      end else if This_Player.GetV(23,7) = 5 then
      begin
         iTemp02 := 7;
      end else if This_Player.GetV(23,6) = 10 then
      begin
         iTemp01 := 6;
      end else if This_Player.GetV(23,6) = 5 then
      begin
         iTemp02 := 6;
      end else if This_Player.GetV(23,5) = 10 then
      begin
         iTemp01 := 5;
      end else if This_Player.GetV(23,5) = 5 then
      begin
         iTemp02 := 5;
      end else if This_Player.GetV(23,4) = 10 then
      begin
         iTemp01 := 4;
      end else if This_Player.GetV(23,4) = 5 then
      begin
         iTemp02 := 4;
      end else if This_Player.GetV(23,3) = 10 then
      begin
         iTemp01 := 3;
      end else if This_Player.GetV(23,3) = 5 then
      begin
         iTemp02 := 3;
      end else if This_Player.GetV(23,2) = 10 then
      begin
         iTemp01 := 2;
      end else if This_Player.GetV(23,2) = 5 then
      begin
         iTemp02 := 2;
      end else if This_Player.GetV(23,1) = 10 then
      begin
         iTemp01 := 1;
      end else if This_Player.GetV(23,1) = 5 then
      begin
         iTemp02 := 1;
      end;
   end;
   
   if ((iTemp01 > 11) or (iTemp02 > 11)) then
   begin
      Exit;
   end else if (iYest = iTod) and (iTemp01 > 0) then
   begin
      case iTemp01 of
        1  :  sSGDialg := 'ǰ��ʯĹɱ��10ֻ��Ұ��';
        2  :  sSGDialg := 'ǰ����ħ��ɱ��20ֻ���ó�ǹ��';
        3  :  sSGDialg := 'ǰ�����ߴ���ɱ��3ֻ��Ұ��';
        4  :  sSGDialg := 'ǰ�����˹�Ĺɱ��15ֻ����';
        5  :  sSGDialg := 'ǰ������Ͽ��ɱ��10ֻ��ħ֩��';
        6  :  sSGDialg := 'ǰ������ɱ��15ֻ��';
        7  :  sSGDialg := 'ǰ������ɽ��ɱ��5������';
        8  :  sSGDialg := 'ǰ������ɱ��8ֻʳ�˻�';
        9  :  sSGDialg := 'ǰ�����׶�Ѩɱ��2ֻ����֩��';
        10 :  sSGDialg := 'ǰ�������ײ�ɱ��2ֻа��ǯ��';
        11 :  sSGDialg := 'ǰ��ħ������ɱ��3ֻħ������';
      end;
      This_NPC.NpcDialog(This_Player,
      '�������Ѿ������' + sSGDialg + '������\ \|{cmd}<������ȡ����/@ChuMoRDM>');
   end else if (iYest = iTod) and (iTemp02 > 0) then
   begin
      case iTemp02 of
        1  :  sSGDialg := 'ǰ��ʯĹɱ��10ֻ��Ұ��';
        2  :  sSGDialg := 'ǰ����ħ��ɱ��20ֻ���ó�ǹ��';
        3  :  sSGDialg := 'ǰ�����ߴ���ɱ��3ֻ��Ұ��';
        4  :  sSGDialg := 'ǰ�����˹�Ĺɱ��15ֻ����';
        5  :  sSGDialg := 'ǰ������Ͽ��ɱ��10ֻ��ħ֩��';
        6  :  sSGDialg := 'ǰ������ɱ��15ֻ��';
        7  :  sSGDialg := 'ǰ������ɽ��ɱ��5������';
        8  :  sSGDialg := 'ǰ������ɱ��8ֻʳ�˻�';
        9  :  sSGDialg := 'ǰ�����׶�Ѩɱ��2ֻ����֩��';
        10 :  sSGDialg := 'ǰ�������ײ�ɱ��2ֻа��ǯ��';
        11 :  sSGDialg := 'ǰ��ħ������ɱ��3ֻħ������'; 
      end;
      This_NPC.NpcDialog(This_Player,
      '���������' + sSGDialg + '���Ͽ�ȥ��ɰɡ�\ \|{cmd}<�õģ������ȥ/@DoExit>');
   end else
   begin
      if iTod <> iYest then
      begin
         This_Player.SetV(23,24,iTod);
         for fxh01 := 1 to 23 do
         begin
            This_Player.SetV(23,fxh01,0);
         end;
      end;
      
      iCMRa := Random(11) + 1;
      This_Player.SetV(23,iCMRa,5);                                  //���Ϊ�ѽӴ������ 
      iCMRa01 := iCMRa + 11;
      This_Player.SetV(23,iCMRa01,0);                                //��ּ���������ֶ����㡣 
      case iCMRa of
           1  :
           begin  
              This_NPC.NpcDialog(This_Player,
              '����ǰ��ʯĹɱ��10ֻ��Ұ�����֮����������ȡ������\ \|{cmd}<�õģ������ȥ/@DoExit>');
           end; 
           2  :
           begin
              This_NPC.NpcDialog(This_Player,
              '����ǰ����ħ��ɱ��20ֻ���ó�ǹ����\���֮����������ȡ������\ \|{cmd}<�õģ������ȥ/@DoExit>');   
           end;
           3  :
           begin
              This_NPC.NpcDialog(This_Player,
              '����ǰ�����ߴ���ɱ��3ֻ��Ұ�����֮����������ȡ������\ \|{cmd}<�õģ������ȥ/@DoExit>');   
           end;
           4  :
           begin
              This_NPC.NpcDialog(This_Player,
              '����ǰ�����˹�Ĺɱ��15ֻ���ã����֮����������ȡ������\ \|{cmd}<�õģ������ȥ/@DoExit>');   
           end;
           5  :
           begin
              This_NPC.NpcDialog(This_Player,
              '����ǰ������Ͽ��ɱ��10ֻ��ħ֩�룬\���֮����������ȡ������\ \|{cmd}<�õģ������ȥ/@DoExit>');   
           end;
           6  :
           begin
              This_NPC.NpcDialog(This_Player,
              '����ǰ������ɱ��15ֻ�������֮����������ȡ������\ \|{cmd}<�õģ������ȥ/@DoExit>');   
           end;
           7  :
           begin
              This_NPC.NpcDialog(This_Player,
              '����ǰ������ɽ��ɱ��5�����ߣ�\���֮����������ȡ������\ \|{cmd}<�õģ������ȥ/@DoExit>');   
           end;
           8  :
           begin
              This_NPC.NpcDialog(This_Player,
              '����ǰ������ɱ��8ֻʳ�˻������֮����������ȡ������\ \|{cmd}<�õģ������ȥ/@DoExit>');
              //This_NPC.NpcDialog(This_Player,
              //'����ǰ������ɱ��15ֻ�������֮����������ȡ�����ɡ�\ \|{cmd}<�õģ������ȥ/@DoExit>');  
              //This_Player.SetV(23,6,5); 
              //This_Player.SetV(23,17,0);
              //This_Player.SetV(23,8,0); 
           end;
           9  :
           begin
              //This_NPC.NpcDialog(This_Player,
              //'����ǰ�����׶�Ѩɱ��2ֻ����֩�룬���֮����������ȡ������\ \|{cmd}<�õģ������ȥ/@DoExit>');
              This_NPC.NpcDialog(This_Player,
              '����ǰ��ʯĹɱ��10ֻ��Ұ�����֮����������ȡ������\ \|{cmd}<�õģ������ȥ/@DoExit>');
              This_Player.SetV(23,1,5); 
              This_Player.SetV(23,12,0);
              This_Player.SetV(23,9,0); 
           end;
           10 :
           begin
              This_NPC.NpcDialog(This_Player,
              '����ǰ�������ײ�ɱ��2ֻа��ǯ�棬���֮����������ȡ������\ \|{cmd}<�õģ������ȥ/@DoExit>'); 
           end;
           11 :
           begin
              This_NPC.NpcDialog(This_Player,
              '����ǰ��ħ������ɱ��3ֻħ�����������֮����������ȡ������\ \|{cmd}<�õģ������ȥ/@DoExit>'); 
           end;
      end;
   end;
end; 

Procedure _ChgCMShaG;
begin
   This_NPC.NpcDialog(This_Player,
   '������ȡ����<��Ҫ����50000���/c=red>����ȷ��Ҫ������ȡ������\ \ \'+
   '|{cmd}<������ȡ����/@ChgCMShaG_01>                           ^<����/@ChuMoRDM>'); 
end;

Procedure _ChgCMShaG_01;
var
  iCMRa, iCMRa01, iGetSG, iTemp01, iTemp02, iTod, iYest: integer;
  sSGDialg: string;
  sTod : double;
begin
   sTod := GetNow();
   iTod := GetDateNum(sTod);
   iYest := This_Player.GetV(23,24);
   if iTod = This_Player.GetV(23,25) then
   begin
      This_Npc.NpcDialog(This_Player,
      '������Ѿ������һ�ֳ�ħ���������������ɣ�');
      Exit;
   end;

   if This_Player.Level < 36 then
   begin
      This_Npc.NpcDialog(This_Player,
      '��ĵȼ�û��36����Ϊ����İ�ȫ���Ҳ�������ȥð�գ�\ \|{cmd}<����/@main>');
      Exit;
   end;
   
   iTemp01 := 0;                                     //��¼�Ƿ��������Ѿ�ɱ��� 
   iTemp02 := 0;                                     //��¼�Ƿ��������ѽ�
   begin                                     //��¼�Ƿ��������ѽ�
      if This_Player.GetV(23,11) = 10 then
      begin
         iTemp01 := 11;
      end else if This_Player.GetV(23,11) = 5 then
      begin
         iTemp02 := 11;
      end else if This_Player.GetV(23,10) = 10 then
      begin
         iTemp01 := 10;
      end else if This_Player.GetV(23,10) = 5 then
      begin
         iTemp02 := 10;
      end else if This_Player.GetV(23,9) = 10 then
      begin
         iTemp01 := 9;
      end else if This_Player.GetV(23,9) = 5 then
      begin
         iTemp02 := 9;
      end else if This_Player.GetV(23,8) = 10 then
      begin
         iTemp01 := 8;
      end else if This_Player.GetV(23,8) = 5 then
      begin
         iTemp02 := 8;
      end else if This_Player.GetV(23,7) = 10 then
      begin
         iTemp01 := 7;
      end else if This_Player.GetV(23,7) = 5 then
      begin
         iTemp02 := 7;
      end else if This_Player.GetV(23,6) = 10 then
      begin
         iTemp01 := 6;
      end else if This_Player.GetV(23,6) = 5 then
      begin
         iTemp02 := 6;
      end else if This_Player.GetV(23,5) = 10 then
      begin
         iTemp01 := 5;
      end else if This_Player.GetV(23,5) = 5 then
      begin
         iTemp02 := 5;
      end else if This_Player.GetV(23,4) = 10 then
      begin
         iTemp01 := 4;
      end else if This_Player.GetV(23,4) = 5 then
      begin
         iTemp02 := 4;
      end else if This_Player.GetV(23,3) = 10 then
      begin
         iTemp01 := 3;
      end else if This_Player.GetV(23,3) = 5 then
      begin
         iTemp02 := 3;
      end else if This_Player.GetV(23,2) = 10 then
      begin
         iTemp01 := 2;
      end else if This_Player.GetV(23,2) = 5 then
      begin
         iTemp02 := 2;
      end else if This_Player.GetV(23,1) = 10 then
      begin
         iTemp01 := 1;
      end else if This_Player.GetV(23,1) = 5 then
      begin
         iTemp02 := 1;
      end;
   end;
   
   if (iTemp01 > 11) or (iTemp02 > 11) then
   begin
      Exit;
   end else if (iTod <> iYest) then
   begin
      This_NPC.NpcDialog(This_Player,
      '����컹û����ȡ�����񣬲���������ȡ�\ \|{cmd}<������ȡ����/@ChuMoRDM>'); 
   end else if (iTod = iYest) and (iTemp01 > 0) then
   begin
      This_NPC.NpcDialog(This_Player,
      '���Ѿ��������ȡ������ΪʲôҪ������ȡ�����أ�\ \|{cmd}<������ȡ����/@ChuMoRDM>');
   end else if (iTod = iYest) and (iTemp02 <= 0) then
   begin
      This_NPC.NpcDialog(This_Player,
      '����컹û����ȡ�����񣬲���������ȡ�\ \|{cmd}<������ȡ����/@ChuMoRDM>'); 
   end else
   begin
      if This_Player.GoldNum >= 50000 then
      begin
         for iGetSG := 1 to 22 do
         begin
           This_Player.SetV(23,iGetSG,0);
         end;
         if This_Player.DecGold(50000) then
         begin
            _GetCMShaG;
         end;
      end else
      begin
         This_NPC.NpcDialog(This_Player,
         '��û��50000��ң�����������ȡ.'); 
      end;
   end
end;

procedure _EverydayLilian;
begin
  This_Npc.NpcDialog(This_Player,          
  '�ڰ���������ǿ��,�������귨��һֱ���ĵ�����,\'+
  'Ϊ�����ÿ���귨�˵ֿ��ڰ�����������,\'+
  '���Ǿ�����ÿ��������ʿÿ�춼��һ�θ�ǿ����������,\'+
  '���귨��½�ĸ�������,��һ�����޿�����,\'+
  '���Ǳ������귨�Ϲ����������µ�ʹ��,\'+
  '������һ����ʧ���ǵĹ���,�ҵ���ħ������,\ '+
  '�������һ�������Ļ���,ֻҪ���������������������,\ '+
  '���ܻ�������������������������\'+
  '|{cmd}<ȥ�Ҷ��޿�����(ÿ����������)/@StartLilian>');
end;

procedure _StartLilian;
begin
  if This_Player.GetS(22,23) = GetDateNum(GetNow) then
  begin
    if This_Player.GetS(22,22) = 2009 then
    begin
      This_Npc.NpcDialog(This_Player,          
      '����������Ѿ�����,\�������ٵ���������ȡ����ɣ���');
      exit;
    end
    else
    begin
      //This_Player.UpdateTaskDetail(10008,1);
    end;
  end
  else
  begin
    This_Player.SetS(22,23,GetDateNum(GetNow));
    This_Player.SetS(22,22,0);
    This_Player.SetS(22,25,0);
    This_Player.SetS(22,26,0);
    This_Player.SetS(22,27,0);
    This_Player.SetS(22,28,0);
    This_Player.SetS(22,29,0);
    This_Player.SetS(22,30,0);
    This_Player.SetS(22,31,0);
    This_Player.SetS(22,32,0);
    //This_Player.UpdateTaskDetail(10008,1);
  end;
  
  if This_Player.Level < 25 then
  begin
    This_Npc.NpcDialog(This_Player,          
    '����25��������ȡ������񣡣�');
  end
  else if This_Player.Level < 30 then
  begin
    This_Npc.NpcDialog(This_Player,          
    '��������\'
    +'��Ҫ��ǰ��Ѱ��<��ʯĹѨ�Ķ��޿�����(37, 30)/c=red>\'
    +'������<��ʯĹѨ�Ķ��޿�����(84, 47)/c=red>\ \'
    +'|{cmd}<�����ȥ(ÿ����������)/@doexit>');
    if This_Player.GetS(22,24) < 100 then
    begin
      This_Player.SetS(22,24,100);
    end;
  end
  else if This_Player.Level < 35 then
  begin
    This_Npc.NpcDialog(This_Player,          
    '��������\'
    +'��Ҫ��ǰ��Ѱ��<������������Ķ��޿�����(46, 46)/c=red>\'
    +'������<������������Ķ��޿�����(62, 62)/c=red>\ \'
    +'|{cmd}<�����ȥ(ÿ����������)/@doexit>');
    if This_Player.GetS(22,24) < 200 then
    begin
      This_Player.SetS(22,24,200);
    end;
  end
  else if This_Player.Level < 40 then
  begin
    This_Npc.NpcDialog(This_Player,          
    '��������\'
    +'��Ҫ��ǰ��Ѱ��<����һ�㶫�Ķ��޿�����(75, 108)/c=red>\'
    +'������<����һ�㶫�Ķ��޿�����(161, 52)/c=red>\ \'
    +'|{cmd}<�����ȥ(ÿ����������)/@doexit>');
    if This_Player.GetS(22,24) < 300 then
    begin
      This_Player.SetS(22,24,300);
    end;
  end
  else if This_Player.Level < 45 then
  begin
    This_Npc.NpcDialog(This_Player,          
    '��������\'
    +'��Ҫ��ǰ��Ѱ��<ʯĹ�߲�Ķ��޿�����(30, 72)/c=red>\'
    +'������<ʯĹ�߲�Ķ��޿�����(62, 42)/c=red>\ \'
    +'|{cmd}<�����ȥ(ÿ����������)/@doexit>');
    if This_Player.GetS(22,24) < 400 then
    begin
      This_Player.SetS(22,24,400);
    end;
  end
  else if This_Player.Level < 50 then
  begin
    This_Npc.NpcDialog(This_Player,          
    '��������\'
    +'��Ҫ��ǰ��Ѱ��<��������߲�����Ķ��޿�����(11, 13)/c=red>\ \'
    +'|{cmd}<�����ȥ(ÿ����������)/@doexit>');
    if This_Player.GetS(22,24) < 500 then
    begin
      This_Player.SetS(22,24,500);
    end;
  end
  else if This_Player.Level < 55 then
  begin
    This_Npc.NpcDialog(This_Player,          
    '��������\'
    +'��Ҫ��ǰ��Ѱ��<ţħ��������Ķ��޿�����(15, 16)/c=red>\'
    +'������<ţħ��������Ķ��޿�����(67, 67)/c=red>\ \'
    +'|{cmd}<�����ȥ(ÿ����������)/@doexit>');
    if This_Player.GetS(22,24) < 600 then
    begin
      This_Player.SetS(22,24,600);
    end;
  end 
  else if This_Player.Level < 60 then
  begin
    This_Npc.NpcDialog(This_Player,          
    '��������\'
    +'��Ҫ��ǰ��Ѱ��<ħ����Ķ��޿�����(213, 117)/c=red>\'
    +'������<ħ����Ķ��޿�����(84, 353)/c=red>\ \'
    +'|{cmd}<�����ȥ(ÿ����������)/@doexit>');
    if This_Player.GetS(22,24) < 700 then
    begin
      This_Player.SetS(22,24,700);
    end;
  end
  else
  begin
    This_Npc.NpcDialog(This_Player,          
    '��������\'
    +'��Ҫ��ǰ��Ѱ��<���³��ȵĶ��޿�����(160, 172)/c=red>\'
    +'��������ħ�ؽ���ʹ�ø�����Ӿ���Ϳɵ��˻������ǰ�����³��ȡ�\ \'
    +'|{cmd}<�����ȥ(ÿ����������)/@doexit>');
    if This_Player.GetS(22,24) < 800 then
    begin
      This_Player.SetS(22,24,800);
    end;
  end; 
end;

//============================  ÿ���������  ===========================
procedure _EverydayMitan;
var
x1 , x2 , x3 , x4 :integer;
td : double;
begin
   x2 := This_Player.GetS(13,2);
   x3 := This_Player.GetS(13,3);
   td := GetNow;
   x4 := GetDateNum(td); 
   if x3 = x4 then
   begin
      This_Npc.NpcDialog(This_Player,
      '������Ѿ������Ҳ���æ�ˣ����������ɣ�');
   end else
   begin
      if x2 = x4 then
      begin
         x1 := This_Player.GetS(13,1);
         if x1 = 3 then
         begin
            This_Npc.NpcDialog(This_Player,
            '��̽�ͱ����ڵ��¹��������������ȥ�ɣ�');
         end else if x1 = 2 then
         begin
            This_Npc.NpcDialog(This_Player,
            '��Ҫ��������̽���ڰ��ߴ���������ȥ�ɣ�');
         end else if x1 = 1 then
         begin
            This_Npc.NpcDialog(This_Player,
            '���������ˮ�����Ǳߣ���Ͽ�ȥ�ɣ�');         
         end;
      end else
      begin
         if This_Player.Level >=51 then
         begin
            This_Npc.NpcDialog(This_Player,
            '��ĵȼ��Ѿ�������50��������һ��ǿ�����ʿ��\'+
            '�������и�����ֻ������������ʿ������ɣ�\'+
            '�и���̽�������¹�������룬���ܰ�æȥ���������\ \'+
            '|{cmd}<�õģ������ȥ/@doexit>');
            This_Player.SetS(13,2,x4);
            This_Player.SetS(13,1,3);
         end else if This_Player.Level >= 40 then
         begin
            This_Npc.NpcDialog(This_Player,
            '�𾴵���ʿ���и���̽�ڷ�ħ�ȵİ��ߴ��������˵����ѣ�\'+
            '��֪������ȥ�������\'+
            '�����������������һ���ܰ�������æ�ģ�\ \'+
            '|{cmd}<�õģ������ȥ/@doexit>');
            This_Player.SetS(13,2,x4);
            This_Player.SetS(13,1,2);
         end else
         begin
            This_Npc.NpcDialog(This_Player,
            '�𾴵���ʿ����ˮ���ݵ����������˵����ѣ�\'+
            '��֪������ȥ�������\'+
            '�����������������һ���ܰ�������æ�ģ�\ \'+
            '|{cmd}<�õģ������ȥ/@doexit>');
            This_Player.SetS(13,2,x4);
            This_Player.SetS(13,1,1);
         end;
      end;
   end; 
end;
//============================  ÿ���������  ===========================

procedure _mission;
begin
  This_Npc.NpcDialog(This_Player,          
   '|{cmd}<�귨Ѳ������/@qianming>\ \'+
   '|{cmd}<��ħ����/@ChuMoRDM>\ \'+
   '|{cmd}<ÿ����������/@EverydayLilian>\ \'+
   '|{cmd}<ÿ��̽������/@EverydayMitan>');
end;

procedure _activity;
begin
  This_Npc.NpcDialog(This_Player,          
   '|{cmd}<�ᱦ��ż�/@PKduobao>               ^<���ضᱦ�/@guanduobao> ');
end;

procedure _guanduobao;
begin
  This_Npc.NpcDialog(This_Player,          
  'ÿ�յĻ���Ž���ʱ��Ϊ<18��20����18��40��/c=red>��\'
  +'ÿ�ν�����Ҫ<֧��1000���/c=red>��\ \'
  +'|{cmd}<��Ҫ���ضᱦ/@guanduobao_start>'
  ); 
end;

procedure _guanduobao_start;
begin
  if This_Player.Level >= 40 then
  begin
    if (GetHour = 18) and (GetMin >= 40) then
    begin
      This_Npc.NpcDialog(This_Player,          
      '�ǳ��ı�Ǹ�����Ѿ�����˱��λ�Ľ���ʱ�䣬\ÿ�յĻ���Ž���ʱ��Ϊ<18��20����18��40��/c=red>��\��ȴ��´λ������\');
    end
    else if (GetHour = 18) and (GetMin >= 20) and (GetMin < 40) then
    begin
      This_Npc.NpcDialog(This_Player,          
      'Ŀǰ�ᱦս������ʽ����������ץ��ʱ�価�����ͣ����\�ȴ����ʼ��ÿ�ν���ͣ���ض���Ҫ<֧��1000���/c=red>��\ \'
      +'|{cmd}<����ͣ����/@GOONE>');
    end
    else
    begin
      This_Npc.NpcDialog(This_Player,          
      '�ǳ��ı�Ǹ�����Ѿ�����˱��λ�Ľ���ʱ�䣬\ÿ�յĻ���Ž���ʱ��Ϊ<18��20����18��40��/c=red>��\��ȴ��´λ������\');
    end;
  end
  else
  begin
    This_Npc.NpcDialog(This_Player,          
    '�ǳ����ź���ֻ�еȼ��ﵽ<40��/c=red>����Ҳ��ܲμӴ˻��');
  end;
end;

procedure _GOONE;
begin
  if This_Player.Level >= 40 then
  begin
    if (GetHour = 18) and (GetMin >= 20) and (GetMin < 40) then
    begin
      if This_Player.GoldNum >= 1000 then
      begin
        This_Player.DecGold(1000);
        This_Player.RandomFlyTo('0139~12');
      end
      else
      begin
        This_Npc.NpcDialog(This_Player,          
        '�����û���㹻�Ľ�Ұ�������ô���أ�');
      end;
    end
  end
  else
    exit;
end;

procedure _Alivemission;
begin
  This_Npc.NpcDialog(This_Player,          
   '�����<ÿ��/c=red>��<14��/c=red>��<17��/c=red>���ţ�\'+
   '+���Ž���ʱ��Ϊ<13��50��/c=red>��<16��50��/c=red>��\'+
   '���������ڻ�����Σ���ǲ���ģ�ԽΣ�յĵط���õ�����ҲԽ��\'+
   '�����ó����׼�����\�����׼�����˿����Ƚ�����Ϣ�ҵȴ����ʼ��\ \'+
   '|{cmd}<������Ϣ��/@gorestroom>'); 
end;

procedure _gorestroom;
var
  temp1,temp2 : integer;
begin
  if (GetHour = 14) and (GetMin < 30) then
  begin
    This_Npc.NpcDialog(This_Player,          
    '������Ѿ���ʼ�����Ž���ʱ��Ϊ<13��50��/c=red>��<16��50��/c=red>��\'
    +'��������˽���ʱ���ֻ�ܵȴ��´ο��ţ�');
  end
  else if (GetHour = 17) and (GetMin < 30) then
  begin
    This_Npc.NpcDialog(This_Player,          
    '������Ѿ���ʼ�����Ž���ʱ��Ϊ<13��50��/c=red>��<16��50��/c=red>��\'
    +'��������˽���ʱ���ֻ�ܵȴ��´ο��ţ�');
  end
  else if (GetHour = 13) and (GetMin >= 50) and (GetMin < 60) then
  begin
    if temp1 = -1 then
    begin
      temp1 := 0;
    end
    if temp1 = GetDateNum(GetNow) then
    begin
      This_Player.RandomFlyTo('EM002~001');
    end
    else
    begin
      temp1 := GetDateNum(GetNow);
      This_Player.RandomFlyTo('EM002~001');
      This_NPC.ClearMon('D2079~001');
      This_NPC.ClearMon('D2079~002');
      This_NPC.ClearMon('D2079~003');
      This_NPC.ClearMon('D2079~004');
      This_NPC.ClearMon('D2079~005');
      This_NPC.ClearMon('D2079~006');
    end;
  end
  else if (GetHour = 16) and (GetMin >= 50) and (GetMin < 60) then
  begin
    if temp2 = -1 then
    begin
      temp2 := 0;
    end
    if temp2 = GetDateNum(GetNow) then
    begin
      This_Player.RandomFlyTo('EM002~001');
    end
    else
    begin
      temp2 := GetDateNum(GetNow);
      This_Player.RandomFlyTo('EM002~001');
      This_NPC.ClearMon('D2079~001');
      This_NPC.ClearMon('D2079~002');
      This_NPC.ClearMon('D2079~003');
      This_NPC.ClearMon('D2079~004');
      This_NPC.ClearMon('D2079~005');
      This_NPC.ClearMon('D2079~006');
    end;
  end
  else
  begin
    This_Npc.NpcDialog(This_Player,          
    '���ڻ�����ʱ�򣬻����ÿ���13��50�ֺ�16��50�ֿ��Ž��룡\�����ʱ�������ɡ�\ \');
  end;
end;

procedure _PKduobao;
begin
  This_Npc.NpcDialog(This_Player,          
   '��ÿ�������<������ͱ���ż(108��96)/c=red>��\�μӵ��¶ᱦ���\ \'+
   '|�ʱ��Ϊ:10:30��11:00��13:30��14:00��\|15:30��16:00��20:30��21:00��23:00��23:30��');
end;
{
procedure _gomail;
begin
    if This_Player.GetV(90,1) <> 222 then  
    begin
    This_Player.SetV(90,1,222); 
    This_Player.NewFullMailEx('','���ֵ�¼����ѻ��1000������������ֵ�һ���������' ,1,10000,0,'1000������|1/����|1','');
    This_NPC.CloseDialog(This_Player);
    end;
end; 

procedure _goDayMail;
var nowDay : integer;
begin
   nowDay := StrToIntDef(MirDateTimeToStr('yyyyMMdd' , GetNow) ,-1);
     if This_Player.GetV(90,2) <> nowDay then
    begin
        This_Player.SetV(90,2,nowDay);
        This_Player.NewFullMailEx('','����ÿ�ո���:1000���������' ,1,0,0,'1000������|1/����|1','');
        This_NPC.CloseDialog(This_Player);
    end; 
end; 
    }
var
  JLTem, iDayWt, iChae , nowDay : integer;
  sDay : double;
  mail_str , day_Mstr : string;
Begin
  { if This_Player.GetV(90,1) <> 222 then  
   mail_str := '^<��ȡ�ʼ�����/@gomail>'
   else
   mail_str := '';
   
   nowDay := StrToIntDef(MirDateTimeToStr('yyyyMMdd' , GetNow) ,-1);
   if This_Player.GetV(90,2) <> nowDay then
   day_Mstr :=  '^<ÿ���ʼ�����/@goDayMail>'
   else
   day_Mstr := ''; 
            }
   This_Npc.NpcDialog(This_Player,
   'Ϊ�����ڶ����ʿ�Ǹ����������������������������䲼��\'+
   'һϵ�еķ���Դ���������ʿ�Ǹ��������Լ���������\ \'+
   '|{cmd}<ÿ������/@mission>\ \' +
   '|{cmd}<ÿ�ջ/@activity>\ \'
  // +mail_str
   );
end.