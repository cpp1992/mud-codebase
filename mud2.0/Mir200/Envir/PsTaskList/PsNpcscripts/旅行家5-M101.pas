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
   This_Npc.NpcDialog(This_Player,
   '���Ѿ��˽��˴˴���ʤ�����Կ���ȥ��԰֮�ſ����ˡ�\�ѵ�������Ȥ��������ô����߶����㶫������һ�������ˡ�\'+
   'Ŷ�����ˣ���ע��Ŷ����԰֮�ŵ����м�\�Ǹ��ܹ�����ˣ�ֻ��<���ǰ��/c=red>�����Ż����㡣\ \'
   +'|{cmd}<���������Ʒ/@give_present>\ \'
   +'|{cmd}<�ر�/@doexit>');
end;

procedure _give_present;
var
  data1, iRan, iTemnum, iTemn02, iTemExp: integer;
begin
  data1 := GetDateNum(GetNow);
  if This_Player.GetS(17,5) <> data1 then
  begin
    This_Npc.NpcDialog(This_Player,
    '��ӭ�����귨��½��');
  end else
  begin
    if This_Player.GetS(17,6) = 5 then
    begin
       This_Npc.NpcDialog(This_Player,
       '���Ѿ��˽��˴˴���ʤ�����Կ���ȥ��԰֮�ſ����ˡ�');
       Exit;
    end else if This_Player.GetS(17,6) <> 4 then
    begin
       This_Npc.NpcDialog(This_Player,
       '���Ѿ��˽��˴˴���ʤ�����Կ���ȥ�����ط������ˡ�');
    end else 
    begin
       if This_Player.FreeBagNum < 1 then
       begin
          This_Npc.NpcDialog(This_Player,
          '��İ����Ѿ����ˣ�����������һ���������Ұɡ�');
       end else
       begin
          This_Player.SetS(17,6,5);
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
             iTemExp := iTemnum * 20000;
             iTemExp := iTemExp + 200000;
             
             //{$IFDEF Q106_tehui}
             //iTemExp := iTemExp div 5;
             //{$ELSE}
             iTemExp := Round(iTemExp * 0.05);
             //{$ENDIF}
             
             This_Player.Give('����',iTemExp);
             This_Npc.NpcDialog(This_Player,
             '���Ѿ��˽��˴˴���ʤ�����Կ���ȥ��԰֮�ſ����ˡ�');
          end else
          begin
             This_Player.Give('Ѳ���ּǵ�����',1);
             This_Npc.NpcDialog(This_Player,
             '���Ѿ��˽��˴˴���ʤ�����Կ���ȥ��԰֮�ſ����ˡ�');
          end;
          //This_Npc.CloseDialog(This_Player);
       end;
    end;
  end;
end; 

var
  iTod : integer;
begin
   iTod := GetDateNum(GetNow());
   if (iTod = This_Player.GetS(17,5)) and ((This_Player.GetS(17,6) = 4) or (This_Player.GetS(17,6) = 5)) then
   begin 
      This_Npc.NpcDialog(This_Player,
      '���顢��������ô����Ĵ��\�����Ĵ�����ʱ��������������������֮�䴫�С�\'
      +'���������ˡ�Ů�ˡ���Ե����֤�����еİ����ʵ��\�����������飬������������ۣ�����Ц��̻�������\'
      +'���鰡��������˵���������ܰ��Ը�����������ճɾ�����\ \'
      +'|{cmd}<лл��Ĺ��£������귨��ʤѲ��/@next_step>\'
      +'|{cmd}<�귨Ѳ���ּǣ��������/@RuleXY>');
   end else
   begin
      This_Npc.NpcDialog(This_Player,
      '��ӭ�����귨��½��');  
   end;
end. 