{
*******************************************************************}


PROGRAM Mir2;

Procedure _doexit;
begin
   This_Npc.CloseDialog(This_Player);
end;

procedure _RuleXY;
begin
   This_Npc.NpcDialog(This_Player,
   '1���귨Ѳ�ε������<ׯ԰������귨���м�/c=red>��\'+
   '2��������������мҵ�����<����/c=red>��������\'+
   '3��������Ѳ�Σ�������ö��⽱���������顢Ѳ���ּ�\'+
   '4����Щ���мһ���Щ����Ҫ�����Ҫ���ܹ���ö���Ľ���\'+
   '5��Ѳ�ν����󣬿��Ե�ׯ԰���귨���мҴ�<���¿�ʼ/c=red>\'+
   '6��ÿλ���мҶ�׫д���Լ���<Ѳ���ּ�/c=red>������ܹ��ռ��룬\   ���Ե�����һ��Ѳ���ߴ��һ�һ������Ľ�����\'+
   '7��ÿ���0�㡢12�㡢20�㡢22�㣬������������չ��<Ѳ�ξ���/@XunYouCP>��\'+
   '|{cmd}<���ռ����귨Ѳ���ּ���/@RuleXY_01>                    ^<����/@main>\'
   ); 
end;

procedure _RuleXY_01;
begin
   if (This_Player.GetBagItemCount('Ѳ���ּǵ�һ��') > 0) and (This_Player.GetBagItemCount('Ѳ���ּǵڶ���') > 0) and (This_Player.GetBagItemCount('Ѳ���ּǵ�����') > 0) 
      and (This_Player.GetBagItemCount('Ѳ���ּǵ�����') > 0) and (This_Player.GetBagItemCount('Ѳ���ּǵ�����') > 0) and (This_Player.GetBagItemCount('Ѳ���ּǵ�����') > 0) 
      and (This_Player.GetBagItemCount('Ѳ���ּǵ�����') > 0) and (This_Player.GetBagItemCount('Ѳ���ּǵڰ���') > 0) and (This_Player.GetBagItemCount('Ѳ���ּǵھ���') > 0) then
   begin
      This_Player.Take('Ѳ���ּǵ�һ��',1); 
      This_Player.Take('Ѳ���ּǵڶ���',1);
      This_Player.Take('Ѳ���ּǵ�����',1);
      This_Player.Take('Ѳ���ּǵ�����',1);
      This_Player.Take('Ѳ���ּǵ�����',1);
      This_Player.Take('Ѳ���ּǵ�����',1);
      This_Player.Take('Ѳ���ּǵ�����',1);
      This_Player.Take('Ѳ���ּǵڰ���',1);
      This_Player.Take('Ѳ���ּǵھ���',1);
      This_Player.Give('����',500000);
      //This_Player.Give('����',500000);
      This_Npc.NpcDialog(This_Player,
      '��ϲ���ռ������е��귨Ѳ���ּǣ�Ϊ�귨����ʷ������������һ�ʡ�');
      This_NPC.NpcNotice('��ϲ��' + This_Player.Name + '�ռ������е��귨Ѳ���ּǣ�Ϊ�귨����ʷ������������һ�ʡ�')
      //This_Player.AddspMakedrugenergy(10000);  
   end else
   begin
      This_Npc.NpcDialog(This_Player,
      '��û���ռ������е��귨Ѳ���ּǣ������Ŭ����'); 
   end;
end;

procedure _next_step;
begin
   This_Npc.NpcDialog(This_Player,
   '���Ѿ��˽��˴˴���ʤ�����Կ���ȥ�Ժ���ͷ�����ˡ�\�ѵ�������Ȥ��������ô����߶����㶫������һ�������ˡ�\ \'
   +'|{cmd}<���������Ʒ/@give_present>\ \'
   //+'|{cmd}<ǰ����һλ���мҴ�/@give_pretNo4>\ \'
   +'|{cmd}<�ر�/@doexit>'); 
end;

procedure _give_pretNo4;
var
  data1, iRan, iTemnum, iTemn02, iTemExp: integer;
begin
  data1 := GetDateNum(GetNow);
  if (GetHour = 12) and (GetMin <= 30) then
  begin
     if (data1 <> This_Player.GetS(17,16)) and (data1 = This_Player.GetS(17,10)) then
     begin
        This_Npc.NpcDialog(This_Player,
        '�����ڲμ�Ѳ�ξ����������ʹ��ֱ�Ӵ��͵���һλ���мҴ���\ \'
        +'|{cmd}<����/@main>');
        Exit;
     end;
  end else if (GetHour = 20) and (GetMin <= 30) then
  begin
     if (data1 <> This_Player.GetS(17,17)) and (data1 = This_Player.GetS(17,11)) then
     begin
        This_Npc.NpcDialog(This_Player,
        '�����ڲμ�Ѳ�ξ����������ʹ��ֱ�Ӵ��͵���һλ���мҴ���\ \'
        +'|{cmd}<����/@main>');
        Exit;
     end;
  end else if (GetHour = 22) and (GetMin <= 30) then
  begin
     if (data1 <> This_Player.GetS(17,18)) and (data1 = This_Player.GetS(17,12)) then
     begin
        This_Npc.NpcDialog(This_Player,
        '�����ڲμ�Ѳ�ξ����������ʹ��ֱ�Ӵ��͵���һλ���мҴ���\ \'
        +'|{cmd}<����/@main>');
        Exit;
     end;
  end else if (GetHour = 0) and (GetMin <= 30) then
  begin
     if (data1 <> This_Player.GetS(17,19)) and (data1 = This_Player.GetS(17,13)) then
     begin
        This_Npc.NpcDialog(This_Player,
        '�����ڲμ�Ѳ�ξ����������ʹ��ֱ�Ӵ��͵���һλ���мҴ���\ \'
        +'|{cmd}<����/@main>');
        Exit;
     end;
  end;
  

    if This_Player.GetS(17,5) <> data1 then
    begin                 
       if This_Player.FreeBagNum > 0 then
       begin   
          This_Player.SetS(17,5,data1);    //�������ǵ���ĵ�һ���ܻ���ʼ�����¼��������ڣ�
          This_Player.SetS(17,6,1);        //��¼����׶Ρ�����һ���� 
          This_Player.SetS(17,7,0);        //�������ǵ���ĵ�һ���ܻ���ʼ�������Ĵ�����Ϊ0�� 
          iRan := Random(10000) + 1;
          iTemn02 := 0;
          iTemnum := 0;
          if This_Player.IsTeamMember then
          begin
             iTemnum := This_Player.MemberCount;                               //�Ƿ�Ϊ-1��0
             iTemnum := iTemnum - 1;
             iTemn02 := iTemnum * 100; 
             if iTemnum >= 11 then
             begin
                iTemn02 := 900;
             end;
          end;
      
          if iRan <= 9999 then
          begin
             iTemExp := iTemnum * 4000;
             iTemExp := iTemExp + 40000;
             
             //{$IFDEF Q106_tehui}
             //iTemExp := iTemExp div 5;
             //{$ELSE}
             iTemExp := Round(iTemExp * 0.05);
             //{$ENDIF}
             
             This_Player.Give('����',iTemExp);
          end else
          begin
             This_Player.Give('Ѳ���ּǵ�һ��',1);
          end;
          This_Player.CallOut(This_NPC,1,'RightFly01');
          //This_Player.Flyto('5',106,342);
          This_Npc.CloseDialog(This_Player);
       end;
    end else if This_Player.GetS(17,6) = 1 then
    begin
       This_Npc.NpcDialog(This_Player,
       '���Ѿ��˽��˴˴���ʤ�����Կ���ȥ�Ժ���ͷ�����ˡ�');
    end else
    begin
       This_Npc.NpcDialog(This_Player,
       '���Ѿ��˽��˴˴���ʤ�����Կ���ȥ�����ط������ˡ�');
    end; 
end;

//һ����Զ����� 
procedure RightFly01; 
begin
  if CompareText(This_Player.MapName, 'GA0') = 0 then
  begin
     This_Player.Flyto('5',106,342);
  end;
end;

procedure _give_present;
var
  data1, iRan, iTemnum, iTemn02, iTemExp: integer;
begin
  data1 := GetDateNum(GetNow);
    if This_Player.GetS(17,5) <> data1 then
    begin
       if This_Player.FreeBagNum < 1 then
       begin
          This_Npc.NpcDialog(This_Player,
          '��İ����Ѿ����ˣ�����������һ���������Ұɡ�');
       end else
       begin                
          This_Player.SetS(17,5,data1);    //�������ǵ���ĵ�һ���ܻ���ʼ�����¼��������ڣ�
          This_Player.SetS(17,6,1);        //��¼����׶Ρ�����һ���� 
          This_Player.SetS(17,7,0);        //�������ǵ���ĵ�һ���ܻ���ʼ�������Ĵ�����Ϊ0�� 
          iRan := Random(10000) + 1;
          iTemn02 := 0;
          iTemnum := 0;
          if This_Player.IsTeamMember then
          begin
             iTemnum := This_Player.MemberCount;                               //�Ƿ�Ϊ-1��0
             iTemnum := iTemnum - 1;
             iTemn02 := iTemnum * 100; 
             if iTemnum >= 11 then
             begin
                iTemn02 := 900;
             end;
          end;
      
          if iRan <= 9999 then
          begin
             iTemExp := iTemnum * 4000;
             iTemExp := iTemExp + 40000;
             
             //{$IFDEF Q106_tehui}
             //iTemExp := iTemExp div 5;
             //{$ELSE}
             iTemExp := Round(iTemExp * 0.05);
             //{$ENDIF}
             
             This_Player.Give('����',iTemExp);
             This_Npc.NpcDialog(This_Player,
             '���Ѿ��˽��˴˴���ʤ�����Կ���ȥ�Ժ���ͷ�����ˡ�');
          end else
          begin
             This_Player.Give('Ѳ���ּǵ�һ��',1);
             This_Npc.NpcDialog(This_Player,
             '���Ѿ��˽��˴˴���ʤ�����Կ���ȥ�Ժ���ͷ�����ˡ�');
          end;
          //This_Npc.CloseDialog(This_Player);
       end;
    end else if This_Player.GetS(17,6) = 1 then
    begin
       This_Npc.NpcDialog(This_Player,
       '���Ѿ��˽��˴˴���ʤ�����Կ���ȥ�Ժ���ͷ�����ˡ�');
    end else
    begin
       This_Npc.NpcDialog(This_Player,
       '���Ѿ��˽��˴˴���ʤ�����Կ���ȥ�����ط������ˡ�');
    end;
end; 


//���������귨��ʤ�������������½����� 
procedure _relooktm;
var
  iDiaNum, itemp01, itemp02, icount, iTod: integer;
  sDiaNum : string;
begin
   itemp01 := This_Player.GetS(17,7);
   iTod := GetDateNum(GetNow()); 
   if (itemp01 <= 0) or (iTod <> This_Player.GetS(17,5)) then                            //����û����ɵ�һ�Σ������� 
   begin
      This_Npc.NpcDialog(This_Player,
      '����컹û�п����귨9����ʤ.');
      Exit;
   end else if (iTod = This_Player.GetS(17,5)) and (This_Player.GetS(17,6) > 0) then     //���Ѿ���ʼ�����񣬵���û������һ�飬������
   begin
      This_Npc.NpcDialog(This_Player,
      '�㻹û�п����귨9����ʤ����ô�����¿�ʼ�أ�');
      Exit;
   end else if (itemp01 > 20) and (iTod = This_Player.GetS(17,5)) then                   //���ؽӵĴ�������10�Σ������� 
   begin
      This_Npc.NpcDialog(This_Player,
      '������Ѿ�����˺ܶ���귨��ʤ�������������.');
      Exit;
   end else
   begin
      itemp02 := 1;
      if itemp01 > 1 then                                                             //������ʱ����itemp02�ĳ�ʼֵ=1�� 
      begin 
         for icount := 2 to itemp01 do                                                //���Ѿ��ǵڶ��λ��ߵڶ������ϣ�����ȡ(����-1)*2*100�Ľ��ʯ�� 
         begin
            itemp02 := itemp02*2;
         end;  
      end;
      
      iDiaNum := itemp02*100;
      sDiaNum := IntToStr(2);                                                   //�õ����ʯ��Ŀ����ת��Ϊ�ַ����� 
   end;
   
   This_Npc.NpcDialog(This_Player,
   '���������귨��ʤ�ĸ���Ȥ�������Ҳ֪����������һ����ˣ�\'+
   'ͨ���Ǻ��۵ġ�������ܹ�����<' + sDiaNum + '/c=red>�Ž��ʯȥ���ˮ�ȣ�\'+
   '������Ը��Ϊ���ٽ���һ����Щ��ʤ��������\ \'+
   '|{cmd}<֧��'+ sDiaNum +'���ʯ�������귨��ʤ�Ĺ���/@reloktnow~' + sDiaNum + '>\|{cmd}<�Բ����Һ�æ/@doexit>'); 
end;

Procedure _reloktnow(sdianum : string);
var
  idianum ,iRan, iTemnum, iTod, iTemn02, iTemExp: integer;
begin
   iTod := GetDateNum(GetNow());
   idianum := StrToIntDef(sdianum, -1);
   if (idianum = -1) or (This_Player.GetS(17,7) > 20) or (iTod <> This_Player.GetS(17,5)) then
   begin
      Exit;
   end else if (iTod = This_Player.GetS(17,5)) and (This_Player.GetS(17,6) > 0) then
   begin
      This_Npc.NpcDialog(This_Player,
      '�㻹û�п����귨9����ʤ����ô�����¿�ʼ�أ�');
      Exit;
   end else if This_Player.FreeBagNum < 1 then
   begin
      This_Npc.NpcDialog(This_Player,
      '��İ����Ѿ����ˣ�����������һ���������Ұɡ�');
      Exit; 
   end else if This_Player.MyDiamondnum >= idianum then
   begin
      This_Player.TakeDiamond(idianum, This_NPC);
      This_Player.SetS(17,6,1);
      iRan := Random(10000) + 1;
      iTemn02 := 0;
      iTemnum := 0;
      if This_Player.IsTeamMember then
      begin
         iTemnum := This_Player.MemberCount;                               //����ӵ�����£��õ��ö���������� 
         iTemnum := iTemnum - 1;
         iTemn02 := iTemnum * 100; 
         if iTemnum >= 11 then
         begin
            iTemn02 := 900;
         end; 
      end;
      
      if iRan <= 9999 then
      begin
         //���辭�飬������������Ķ��ٸ��轱����ͬ��������������
         iTemExp := iTemnum * 4000;
         iTemExp := iTemExp + 40000;
         
         //{$IFDEF Q106_tehui}
         //iTemExp := iTemExp div 5;
         //{$ELSE}
         iTemExp := Round(iTemExp * 0.05);
         //{$ENDIF}
         
         This_Player.Give('����',iTemExp);
      end else
      begin
         This_Player.Give('Ѳ���ּǵ�һ��',1);
      end;
      This_Npc.NpcDialog(This_Player,
      '���Ѿ��˽��˴˴���ʤ�����Կ�����ȥ�Ժ���ͷ�����ˡ�\'+
      '�ѵ�������Ȥ��������ô����߶����㶫������һ�������ˡ�\ \');
   end else
   begin
      This_Npc.NpcDialog(This_Player,
      '��û���㹻�Ľ��ʯ�����������������.');
   end;
end;

//����������� 
procedure _XunYouCP;
begin
   This_Npc.NpcDialog(This_Player,
   '1��ÿ��<0�㡢12�㡢20�㡢22��/c=red>��ʼһ��Ѳ�ξ���\'+
   '2��Ѳ�ξ�����ʼ����ҿ��Ե����ⱨ��������ʼ����\'+
   '3��Ѳ�ε�������Ѳ���귨��9����ʤ����<9���귨������/c=red>��ɶԻ�\'+
   '4��ǰʮ������ö��⽱��\'+ 
   '5���ڹ涨ʱ������ɵĶ����ܹ���ý���\'+
   '6���涨ʱ��Ϊ��<30����/c=red>\'+
   '7��ÿһ�־����κ�ʱ���ܱ��������Ǳ����߱����ͷ��ʼ��\'+
   '   ��ʹ֮ǰ�Ѿ�Ѳ���˲�����ʤ��\'+
   '|{cmd}<��������/@next_step02>          ^<���Ѳ�Σ���ȡ����/@give_present03>         ^<����/@main>');
end;

procedure _next_step02;
begin
   This_Npc.NpcDialog(This_Player,
   '���Ѿ��˽��˴˴���ʤ�����Կ���ȥ�Ժ���ͷ�����ˡ�\������Ҫ�μӾ������͵ý�����2�Ž��ʯ����ô�������������\ \'
   +'|{cmd}<����2�Ž��ʯ��������/@relooktm02>                  ^<�ر�/@doexit>'); 
end;

procedure _relooktm02;
var
  iDiaNum, itemp01, itemp02, icount, iTod, iRan, iTemn02, iTemnum, iTemExp, iHour, iSset01: integer;
  sDiaNum : string;
  dNow : double;
begin
   dNow := GetNow;
   itemp01 := This_Player.GetS(17,7);
   iTod := GetDateNum(dNow);
   if (itemp01 > 20) and (iTod = This_Player.GetS(17,5)) then
   begin
      This_Npc.NpcDialog(This_Player,
      '������Ѿ�����˺ܶ���귨��ʤ�������������.');
      Exit;
   end;
   
   if (This_Player.MyDiamondnum < 2) then
   begin
      This_Npc.NpcDialog(This_Player,
      '����ʣ�Ҫ������2�Ž��ʯ�һ�һЩȪˮ�Ⱦͺ���.');
      Exit;
   end;
   
   if This_Player.FreeBagNum < 1 then
   begin
      This_Npc.NpcDialog(This_Player,
      '��İ����Ѿ����ˣ�����������һ���������Ұɡ�');
   end;
    
   if (GetHour = 12) and (GetMin <= 30) then
   begin
      iHour := 12;
      iSset01 := 16;
      if iTod <> GetG(13,5) then
      begin 
         SetG(13,5,iTod);
         SetG(13,6,0);
      end;
   end else if (GetHour = 20) and (GetMin <= 30) then
   begin
      iHour := 20;
      iSset01 := 17;
      if iTod <> GetG(13,7) then
      begin 
         SetG(13,7,iTod);
         SetG(13,8,0);
      end;
   end else if (GetHour = 22) and (GetMin <= 30) then
   begin
      iHour := 22;
      iSset01 := 18;
      if iTod <> GetG(13,9) then
      begin 
         SetG(13,9,iTod);
         SetG(13,10,0);
      end;
   end else if (GetHour = 0) and (GetMin <= 30) then
   begin
      iHour := 0;
      iSset01 := 19;
      if iTod <> GetG(13,11) then
      begin 
         SetG(13,11,iTod);
         SetG(13,12,0);
      end;
   end else
   begin
      This_Npc.NpcDialog(This_Player,
      '�ǻʱ�䣡');
      Exit;
   end;
   
   if (GetHour = iHour) and (GetMin <= 30) then
   begin
      if iTod = This_Player.GetS(17,iSset01) then
      begin
         This_Npc.NpcDialog(This_Player,
         '�Ѿ�����˸�ʱ�ε�����');
         Exit;
      end else
      begin
         iSset01 := iSset01 - 6;
         if iTod = This_Player.GetS(17,iSset01) then
         begin
            This_Npc.NpcDialog(This_Player,
            '�Ѿ������μ��˱�������ȥ������ɣ�');
            Exit;
         end else
         begin
            This_Player.SetS(17,iSset01,iTod);                     //��XX��-XX��30֮�䱨����ǣ���ͬ 
         end;
      end;
   end else
   begin
      This_Npc.NpcDialog(This_Player,
      '�ǻʱ�䣡');
      Exit;
   end; 

      This_Player.TakeDiamond(2,This_Npc);  
      This_Player.SetS(17,6,1);
      if iTod <> This_Player.GetS(17,5) then       //�������ǵ���ĵ�һ���ܻ���ʼ��
      begin 
         This_Player.SetS(17,7,0);    
         This_Player.SetS(17,5,iTod);
      end;
        
      iRan := Random(10000) + 1;
      iTemn02 := 0;
      iTemnum := 0;
      if This_Player.IsTeamMember then
      begin
         iTemnum := This_Player.MemberCount;                               //�Ƿ�Ϊ-1��0 
         iTemnum := iTemnum - 1;
         iTemn02 := iTemnum * 100; 
         if iTemnum >= 11 then
         begin
            iTemn02 := 900;
         end;
      end;
      
     if iRan <= 9999 then
      begin
         iTemExp := iTemnum * 4000;
         iTemExp := iTemExp + 40000;
         
         //{$IFDEF Q106_tehui}
         //iTemExp := iTemExp div 5;
         //{$ELSE}
         iTemExp := Round(iTemExp * 0.05);
         //{$ENDIF}
         
         This_Player.Give('����',iTemExp);
      end else
      begin
         This_Player.Give('Ѳ���ּǵ�һ��',1);
      end;
      This_Npc.CloseDialog(This_Player); 
end;

Procedure TimePrize(Num2, iGSetg01, iGSetg02, time1: integer);
var
  iGTe ,iTod: integer;
  dNow : double;
begin
   dNow := GetNow; 
   iTod := GetDateNum(dNow);
  
   if (This_Player.GetS(17,6) <> 0) or (iTod <> This_Player.GetS(17,5)) then
   begin
      This_Npc.NpcDialog(This_Player,
      '�㻹û���˽������е��귨��ʤ��������ȡ������');
      Exit; 
   end;
   
   if (GetHour = time1) and (GetMin <= 30) then
   begin
      iGTe := GetG(13,iGSetg02);
      if iGTe >= 10 then
      begin
         //This_Player.AddspMakedrugenergy(25);
         This_Player.SetS(17,Num2,iTod);
      end else
      begin         
         if iGTe = -1 then
         begin
            iGTe := 1;
         end else
         begin
            iGTe := iGTe + 1;
         end;
         
         if iTod = GetG(13,iGSetg01) then
         begin
            SetG(13,iGSetg02,iGTe);
         end;

         This_Player.SetS(17,Num2,iTod);
      end;
      This_Npc.NpcDialog(This_Player,
      '��ϲ���ö��⽱����');     
   end else
   begin
      This_Npc.NpcDialog(This_Player,
      '�ǻʱ�䣡');
      Exit;
   end;
end;

Procedure _give_present03;
var
  iDiaNum, itemp01, itemp02, icount, iTod, iRan, iTemn02, iTemnum, iTemExp, istat: integer;
  sDiaNum : string;
  dNow : double;
begin
   dNow := GetNow;
   itemp01 := This_Player.GetS(17,7);
   iTod := GetDateNum(dNow);  
   if (GetHour = 12) and (GetMin <= 30) then
   begin
      if iTod = This_Player.GetS(17,16) then
      begin
         This_Npc.NpcDialog(This_Player,
         '���Ѿ��ڽ����12�㵽12��30�ֵ�ʱ�������������\���Ѿ���ȡ�������ˣ�');
         Exit; 
      end else if iTod = This_Player.GetS(17,10) then
      begin
         TimePrize(16,5,6,12);
      end else
      begin
         This_Npc.NpcDialog(This_Player,
         '��Ǹ����û�б����μ�12��ľ������������ȡ������');
         Exit;
      end;
   end else if (GetHour = 20) and (GetMin <= 30) then
   begin
      if iTod = This_Player.GetS(17,17) then
      begin
         This_Npc.NpcDialog(This_Player,
         '���Ѿ��ڽ����20�㵽20��30�ֵ�ʱ�������������\���Ѿ���ȡ�������ˣ�');
         Exit; 
      end else if iTod = This_Player.GetS(17,11) then
      begin
         TimePrize(17,7,8,20);
      end else
      begin
         This_Npc.NpcDialog(This_Player,
         '��Ǹ����û�б����μ�20��ľ������������ȡ������');
         Exit;
      end;
   end else if (GetHour = 22) and (GetMin <= 30) then
   begin
      if iTod = This_Player.GetS(17,18) then
      begin
         This_Npc.NpcDialog(This_Player,
         '���Ѿ��ڽ����22�㵽22��30�ֵ�ʱ�������������\���Ѿ���ȡ�������ˣ�');
         Exit;
      end else if iTod = This_Player.GetS(17,12) then
      begin
         TimePrize(18,9,10,22);
      end else
      begin
         This_Npc.NpcDialog(This_Player,
         '��Ǹ����û�б����μ�22��ľ������������ȡ������');
         Exit;
      end;
   end else if (GetHour = 0) and (GetMin <= 30) then
   begin
      if iTod = This_Player.GetS(17,19) then
      begin
         This_Npc.NpcDialog(This_Player,
         '���Ѿ��ڽ����0�㵽0��30�ֵ�ʱ�������������\���Ѿ���ȡ�������ˣ�');
         Exit; 
      end else if iTod = This_Player.GetS(17,13) then
      begin
         TimePrize(19,11,12,0);
      end else
      begin
         This_Npc.NpcDialog(This_Player,
         '��Ǹ����û�б����μ�0��ľ������������ȡ������');
         Exit;
      end;
   end else
   begin
      This_Npc.NpcDialog(This_Player,
      '�ǻʱ�䣡');
      Exit;
   end;
end; 

begin
   This_Npc.NpcDialog(This_Player,
   'ׯ԰������λ�����ص��ˣ���˵�����ڽ�ׯ԰ʱ������ѡ�����\ԭ������ſڵ����ʯ������˵���ʯ��ԭ��������һ�������ʯ��\'
   +'������֮һ·���˵أ�����������ӯ����������������\���Ƕ��ŷ���ʯ����һ�ơ���ʱʯ�����ߡ��ֳ�ʯ������������Ц\'
   +'������ȥ����˵�����Ц����ׯ����ׯ԰ʱ���Դ˵ؽ�����������\'
   +'ֻ����ׯ����ȥ���������տ����������䣬�������ʽ��ˡ�\ \'
   +'|{cmd}<лл��Ĺ��£������귨��ʤѲ��/@next_step>      ^<�귨Ѳ���ּǣ��������/@RuleXY>\'
   +'|{cmd}<���������귨��ʤ������/@relooktm>              ^<Ѳ�ξ���/@XunYouCP>'
   ); 
end. 