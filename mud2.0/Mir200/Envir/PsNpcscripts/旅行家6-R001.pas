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
      //This_Player.Give('����',5000000);
      This_Player.Give('����',500000);
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
   if This_Player.IsTeamMember then
   begin 
      This_Npc.NpcDialog(This_Player,
      '��������������ˣ����Ѿ��˽��˴˴���ʤ��\���Կ���ȥһ���쿴���ˡ�\�ѵ�������Ȥ��������ô����߶����㶫������һ�������ˡ�\ \'
      +'|{cmd}<���������Ʒ/@give_present>\ \'
      //+'|{cmd}<ǰ����һλ�����ߴ�/@give_pretNo4>\ \'
      +'|{cmd}<�ر�/@doexit>'); 
   end else
   begin
      This_Npc.NpcDialog(This_Player,
      '���귨���мҿ��˿��㣬�ֿ��˿���յ�������ߣ�\����������һ˿��м������������ѯ�ʡ���'); 
   end;
end;

procedure _give_pretNo4;
var
  data1, iRan, iTemnum, iTemn02, iTemExp, iRan2: integer;
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
    This_Npc.NpcDialog(This_Player,
    '��ӭ�����귨��½��');
  end else if not (This_Player.IsTeamMember) then
  begin
     This_Npc.NpcDialog(This_Player,
     '���귨���мҿ��˿��㣬�ֿ��˿���յ�������ߣ�\����������һ˿��м������������ѯ�ʡ���'); 
  end else
  begin
    if This_Player.GetS(17,6) = 6 then
    begin
       This_Npc.NpcDialog(This_Player,
       '���Ѿ��˽��˴˴���ʤ�����Կ���ȥһ���쿴���ˡ�');
       Exit;
    end else if This_Player.GetS(17,6) <> 5 then
    begin
       This_Npc.NpcDialog(This_Player,
       '���Ѿ��˽��˴˴���ʤ�����Կ���ȥ�����ط������ˡ�');
    end else 
    begin
       if This_Player.FreeBagNum < 2 then
       begin
          This_Npc.NpcDialog(This_Player,
          '��İ���̫���ˣ�����������һ���������Ұɡ�');
       end else
       begin
          This_Player.SetS(17,6,6);
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
             iTemExp := iTemnum * 24000;
             iTemExp := iTemExp + 240000;
             
             //{$IFDEF Q106_tehui}
             //iTemExp := iTemExp div 5;
             //{$ELSE}
             iTemExp := Round(iTemExp * 0.05);
             //{$ENDIF}
             
             This_Player.Give('����',iTemExp);
             This_Npc.NpcDialog(This_Player,
             '���Ѿ��˽��˴˴���ʤ�����Կ���ȥһ���쿴���ˡ�');
          end else
          begin
             This_Player.Give('Ѳ���ּǵ�����',1);
             This_Npc.NpcDialog(This_Player,
             '���Ѿ��˽��˴˴���ʤ�����Կ���ȥһ���쿴���ˡ�');
          end;
          
          iRan2 := Random(2) + 1;
          if iRan2 = 1 then
          begin
             This_Player.Give('ף����',1);
          end else
          begin
             This_Player.Give('ħ��ָ����',1);
          end; 
          
          This_Player.CallOut(This_NPC,1,'RightFly06');
          //This_Player.Flyto('YXSD',46,53);
          //This_Npc.CloseDialog(This_Player);
       end;
    end;
  end;
end;

//һ����Զ����� 
procedure RightFly06; 
begin
  if CompareText(This_Player.MapName, 'R001') = 0 then
  begin
     This_Player.RandomFlyTo('D618');
  end;
end;

procedure _give_present;
var
  data1, iRan, iTemnum, iTemn02, iTemExp, iRan2: integer;
begin
  data1 := GetDateNum(GetNow);
  if This_Player.GetS(17,5) <> data1 then
  begin
    This_Npc.NpcDialog(This_Player,
    '��ӭ�����귨��½��');
  end else if not (This_Player.IsTeamMember) then
  begin
     This_Npc.NpcDialog(This_Player,
     '���귨���мҿ��˿��㣬�ֿ��˿���յ�������ߣ�\����������һ˿��м������������ѯ�ʡ���'); 
  end else
  begin
    if This_Player.GetS(17,6) = 6 then
    begin
       This_Npc.NpcDialog(This_Player,
       '���Ѿ��˽��˴˴���ʤ�����Կ���ȥһ���쿴���ˡ�');
       Exit;
    end else if This_Player.GetS(17,6) <> 5 then
    begin
       This_Npc.NpcDialog(This_Player,
       '���Ѿ��˽��˴˴���ʤ�����Կ���ȥ�����ط������ˡ�');
    end else 
    begin
       if This_Player.FreeBagNum < 2 then
       begin
          This_Npc.NpcDialog(This_Player,
          '��İ���̫���ˣ�����������һ���������Ұɡ�');
       end else
       begin
          This_Player.SetS(17,6,6);
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
             iTemExp := iTemnum * 24000;
             iTemExp := iTemExp + 240000;
             
             //{$IFDEF Q106_tehui}
             //iTemExp := iTemExp div 5;
             //{$ELSE}
             iTemExp := Round(iTemExp * 0.05);
             //{$ENDIF}
             
             This_Player.Give('����',iTemExp);
          end else
          begin
             This_Player.Give('Ѳ���ּǵ�����',1);
          end;
          
          iRan2 := Random(2) + 1;
          if iRan2 = 1 then
          begin
             This_Player.Give('ħ��ָ����',1);
          end else
          begin
             This_Player.Give('��(С)',1);
          end;
          
          This_Npc.CloseDialog(This_Player);
       end;
    end;
  end;
end; 

var
  iTod : integer;
begin
   iTod := GetDateNum(GetNow());
   if (iTod = This_Player.GetS(17,5)) and ((This_Player.GetS(17,6) = 5) or (This_Player.GetS(17,6) = 6)) then
   begin
      This_Npc.NpcDialog(This_Player,
      '��˵�У���԰֮����ͨ����԰����ڡ�\��԰��һ���������ǣ�û��������û�г�޵����õĵط���\'
      +'ֻ��û����֪������ε��û����֪��ǰ����԰�ķ�����\��԰֮�ŵ����⣬�����ڣ�ֻ�������ܹ��������ɵ����ޡ�\'
      +'���Ǿ������ܵ��ػ��ߣ��ػ�����԰֮�š�\Ҳ��ͨ����԰�����ܾ����������ϡ���Ȼ��Ҳ�������Ҹ��˵Ĳ²⡣\ \'
      +'|{cmd}<лл��Ĺ��£������귨��ʤѲ��/@next_step>\'
      +'|{cmd}<�귨Ѳ���ּǣ��������/@RuleXY>');
   end else
   begin
      This_Npc.NpcDialog(This_Player,
      '��ӭ�����귨��½��');  
   end;
end. 