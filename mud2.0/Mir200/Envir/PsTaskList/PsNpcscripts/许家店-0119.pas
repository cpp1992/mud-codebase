{********************************************************************

*******************************************************************}

program mir2;

{$I common.pas}

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
    This_Npc.NpcDialog(This_Player,
    '��ӭ���٣���ʲô������Ҫ�Ұ�æ��\ \'
    +'|{cmd}<��ҩ/@buy>\'
    +'|{cmd}<��ҩ/@sell>\'
   +'|{cmd}<���жԻ�/@talkwith>\'
   +'|{cmd}<�ر�/@exit>'
   );
end;


procedure _buy;
begin
  This_Npc.NpcDialog(This_Player, 
    '��Ҫʲô������\ \ \|{cmd}<����/@main>'
  );
  This_Npc.Click_Buy(This_Player);
end;

procedure _Sell;
begin
  This_Npc.NpcDialog(This_Player, 
    '�����Ҫ���Ķ������һ���ü�Ǯ�ġ�\ \ \|{cmd}<����/@main>'
  );
  This_Npc.Click_Sell(This_Player);
end;



procedure _talkwith;
begin
    if This_Player.GetS(80,12) <= 1 then
    begin
       This_NPC.NpcDialog(This_Player,
       '...����˵������Ҹ��׵��ż���\'
       +'��Ϊʲô�������д�ŵ��أ�\'
       +'����Ž����ҡ�\ \'
       +'|{cmd}<�����ż�/@give_letter>\'
       +'|{cmd}<�ż�����/@no_give_letter>\' 
       );  
    end else
    if This_Player.GetS(80,12) = 2 then
    begin
    This_NPC.NpcDialog(This_Player,
       'лл�����������ˡ�\'
       +'��̫лл�ˣ��ܸ���������\'
       +'��������ҽ��\'
       +'���ʲô��\ \'
       +'|{cmd}<��������/@say_my_name>\'
       ) 
    end else
    if This_Player.GetS(80,12) = 3 then
    begin
       This_NPC.NpcDialog(This_Player,
       '�� ' + This_Player.Name + ', ��ӭ���� \'
       +'����Ļ�����\'
       +'��������Ҫʳ�����Ĺ�ʵ\'
       +'��������Ū���������һ����ü�Ǯ�ġ�\'
       +'����һ�����ҡ�\'
       +'���Ҿ͵���ĺ���Ϣ�ˡ�\'
       );
       This_Player.SetS(80,12,4);
    end else
    if This_Player.GetS(80,12) = 4 then
    begin
        IF This_Player.GetBagItemCount('ʳ�����Ĺ�ʵ') >= 1 then
        begin
           This_NPC.NpcDialog(This_Player,
           '������ã�û�����ǡ�\'
           +'�����Ļ�����һ��һ�����ɡ�\ \'
           +'|{cmd}<��/@give_sg_1>\'
           );
        
        end else
        begin
           This_NPC.NpcDialog(This_Player,
           '�� ' + This_Player.Name + ', ��ӭ���� \'
           +'����Ļ�����\'
           +'��������Ҫʳ�����Ĺ�ʵ\'
           +'��������Ū���������һ����ü�Ǯ�ġ�\'
           +'����һ�����ҡ�\'
           +'���Ҿ͵���ĺ���Ϣ�ˡ�\'
           );
        end;
    end else
    if This_Player.GetS(80,12) = 5 then
    begin
       This_NPC.NpcDialog(This_Player,
       '' + This_Player.Name + ', ҩ���Ѿ�������,\'
       +'���ǻ�û��û�н���Ĳ��֣�\'
       +'��Ҫ��ʦ����̡�\'
       +'�м������������æ�����Ӧ��\ \'
       +'|{cmd}<��������/@ok_h_order>\'
       );
    
    end else
    if This_Player.GetS(80,12) = 13 then
    begin
       This_NPC.NpcDialog(This_Player,
       '������ˣ�û�ҵ�ʦ��Ҳû��ϵ���Ͼ����Ѿ��ܾ�û�������ˡ�\'
       +'��֪�������ڹ�����ô����\ \'
       +'|{cmd}<��ҩ������/@DoDrug_4>\'
       +'|{cmd}<�뿪/@doexit>\' 
       );  
    end else
    if This_Player.GetS(80,12) = 14 then
    begin
     This_NPC.NpcDialog(This_Player,
     '���ǣ�û�뵽������ҵ�ʦ���ˣ������û�������ζҩ��������\'
     +'�Ƴɹ��ˣ��治֪����ô��л�㣬����������ҩ��ļ�������ҩ��\'
     +'�䷽����<ǿЧ̫��ˮ�ط�/c=red>��<����ѩ˪�ط�/c=red>��<����ҩ�ط�/c=red>������һ��\'
     +'�͸��㣬����������ڰ����ŵ������Ѱ���������Щ�����ҩ�\'
     +'��Ҳ�ǿ�ҩ��ģ���ֻ��Ҫ�ṩ��һЩ���������Ѿͺá�ϣ������\'
     +'�л����ټ���\ \'
     +'|{cmd}<�����һ�������������˵�(����ط�)/@DoDrug_5>\'
     +'|{cmd}<�˳�/@doexit>' 
     );
    end else
    This_NPC.NpcDialog(This_Player,
    '�Բ���������̫æ��\'
    +'�ɲ������´�����?\'
    +'�ܱ�Ǹ��\'
    );
end;

procedure _DoDrug_4;
begin
   IF (This_Player.GetS(80,12) = 13) and (This_Player.GetBagItemCount('����ҽ��ҩ1') >= 1) then
   begin 
   This_Player.SetS(80,12,14);
   This_Player.Take('����ҽ��ҩ1',1); 
   This_NPC.NpcDialog(This_Player,
   '���ǣ�û�뵽������ҵ�ʦ���ˣ������û�������ζҩ��������\'
   +'�Ƴɹ��ˣ��治֪����ô��л�㣬����������ҩ��ļ�������ҩ��\'
   +'�䷽����<ǿЧ̫��ˮ�ط�/c=red>��<����ѩ˪�ط�/c=red>��<����ҩ�ط�/c=red>������һ��\'
   +'�͸��㣬����������ڰ����ŵ������Ѱ���������Щ�����ҩ�\'
   +'��Ҳ�ǿ�ҩ��ģ���ֻ��Ҫ�ṩ��һЩ���������Ѿͺá�ϣ������\'
   +'�л����ټ���\ \'
   +'|{cmd}<�����һ�������������˵�(����ط�)/@DoDrug_5>\'
   +'|{cmd}<�˳�/@doexit>' 
   );
   end else
   This_NPC.NpcDialog(This_Player,
   'ҩ�أ��Ҿ�֪�����ǲ����ҵ����ģ�\ \'+
   +'|{cmd}<�Ұ�ҩŪ���ˣ������������¿�ʼ��/@DoDrug_4_1>'
   );
end;

procedure _DoDrug_4_1;
begin
   IF (This_Player.GetS(80,12) = 13) then
   begin 
   This_Player.SetS(80,12,0);
   This_NPC.NpcDialog(This_Player,
   '�����Ѿ����ã���ǰ������ʡҩ�����¿�ʼ�����ˮ���ϰ壩��\'
   );
   end;
end;

procedure _DoDrug_5;
begin
   IF (This_Player.GetS(80,12) = 14) and (This_Player.FreeBagNum > 0) then
   begin 
       if (This_Player.GetS(80,14) <> 1) and (This_Player.GetBagItemCount('ǿЧ̫��ˮ�ط�') < 1) and (This_Player.GetS(80,37) < 1) then
       begin
       This_Player.SetS(80,12,0);
       This_Player.SetS(80,37,1);
       This_Player.Give('ǿЧ̫��ˮ�ط�',1);
       This_NPC.NpcDialog(This_Player,
       '��������<ǿЧ̫��ˮ/c=red>���ط������պá�\'
       +'����������ڰ����ŵ������Ѱ������ƴ�ҩ��' 
       );
       end else
       if (This_Player.GetS(80,20) <> 1) and (This_Player.GetBagItemCount('����ѩ˪�ط�') < 1) and (This_Player.GetS(80,37) < 2) then
       begin
       This_Player.SetS(80,12,0);
       This_Player.SetS(80,37,2);
       This_Player.Give('����ѩ˪�ط�',1);
       This_NPC.NpcDialog(This_Player,
       '��������<����ѩ˪/c=red>���ط������պá�\'
       +'����������ڰ����ŵ������Ѱ������ƴ�ҩ��' 
       );
       end else 
       if (This_Player.GetS(80,26) <> 1) and (This_Player.GetBagItemCount('����ҩ�ط�') < 1) and (This_Player.GetS(80,37) < 3) then
       begin
       This_Player.SetS(80,12,0);
       This_Player.SetS(80,37,3);
       This_Player.Give('����ҩ�ط�',1); 
       This_NPC.NpcDialog(This_Player,
       '��������<����ҩ/c=red>���ط������պá�\'
       +'����������ڰ����ŵ������Ѱ������ƴ�ҩ��' 
       );
       end else 
       This_NPC.NpcDialog(This_Player,
       'û�뵽�������ˣ����Ѿ�û��ʲô���Ա������ˣ�\'
       +'��Щ�ط������ѡһ���ɣ�\ \'
       +'|{cmd}<ǿЧ̫��ˮ�ط�/@DoDrug_5_1~1>\' 
       +'|{cmd}<����ѩ˪�ط�/@DoDrug_5_1~2>\'
       +'|{cmd}<����ҩ�ط�/@DoDrug_5_1~3>\'
       );
   end else
   This_NPC.NpcDialog(This_Player,
   '��İ���̫���ˡ�\'
   );
end;

procedure _DoDrug_5_1(str:string);
var
Drug_kind:integer;
begin
   Drug_kind := strtointdef(str,-1);
   if (Drug_kind < 1) or (Drug_kind > 3) then exit;
   IF (This_Player.GetS(80,12) = 14) and (This_Player.FreeBagNum > 0) then
   begin   
       This_Player.SetS(80,12,0);
       case Drug_kind of
       1:str:='ǿЧ̫��ˮ';
       2:str:='����ѩ˪';
       3:str:='����ҩ';
       end;   
       This_Player.Give(str+'�ط�',1);
       This_NPC.NpcDialog(This_Player,
       '��������<'+str+'/c=red>���ط������պá�\'
       +'����������ڰ����ŵ������Ѱ������ƴ�ҩ��' 
       );
   end else
   This_NPC.NpcDialog(This_Player,
   '��İ���̫���ˡ�\'
   );
end;



//;-------------------------------------------------------
//;Ϊ�����ż�����
//;-------------------------------------------------------



procedure _give_letter;
begin
    IF (This_Player.GetBagItemCount('ҩ��ʦ����') >= 1) and (This_Player.GetS(80,12) <= 1) then
    begin
       This_Player.Take('ҩ��ʦ����',1);
       This_Player.SetS(80,12,2);
       This_NPC.NpcDialog(This_Player,
       'лл�����������ˡ�\'
       +'��̫лл�ˣ��ܸ���������\'
       +'��������ҽ��\'
       +'���ʲô��\ \'
       +'|{cmd}<��������/@say_my_name>\'
       );

    end else
   This_NPC.NpcDialog(This_Player,
   '����û����?\'
   +'����˵��·�϶��ˣ��ҵ�֮�����ϸ��ҡ�\'
   
   );

end;

procedure _no_give_letter;
begin
   This_NPC.NpcDialog(This_Player,
   'ʲô�����Ŷ��ˣ�\'
   +'�Ǻǣ����ˣ���Ҳ�ò�����ô������\'
   +'����һ���Ҿͱ�ò�����˼�ˣ�\'
   +'���ˣ�û���ˣ����ȥ��\'
   );

end;

procedure _say_my_name;
begin
   This_NPC.NpcDialog(This_Player,
   '' + This_Player.Name + ' ��, ������ܸ��ˡ�\'
   +'��Ҳ��Ե�֣������Ѻ��ദ�ɡ�\'
   +'�����ҵ�һ�����⣬���°ɡ�\'
   +'�ǽ���̫����ˮ��ҩˮ���ܹ��õġ�\ \'
   +'|{cmd}<����/@ok_take_drug>'
   );

end;

procedure _ok_take_drug;
begin
    if This_Player.GetS(80,12) = 2 then
    begin
    This_Player.SetS(80,12,3);
        This_Player.Give('ǿЧ̫��ˮ',1);
       This_NPC.NpcDialog(This_Player,
       '���ˣ��´�һ��������\'
       +'�ټ�\'
       
   );
    end;

end;

//;-------------------------------------------------------
//; ������֮��������ʳ�����Ĺ�ʵ֮ǰ
//;-------------------------------------------------------



//;-------------------------------------------------------
//; Ϊ����ʳ�����Ĺ�ʵ����
//;-------------------------------------------------------



procedure _give_sg_1;
begin

    IF (This_Player.GetBagItemCount('ʳ�����Ĺ�ʵ') >= 1) and (This_Player.GetS(80,12) = 4) then
    begin
        This_Player.Take('ʳ�����Ĺ�ʵ',1);
        This_Player.AddGold(600);

        IF random(3) = 0 then
        begin
           This_Player.SetS(80,12,5);
           This_NPC.NpcDialog(This_Player,
           'лл�� ' + This_Player.Name + ' ����ʳ�����Ĺ�ʵ�Ѿ����ˡ�\'
           +'�ⶼ����Ĺ��͡�\'
           +'������Ҫ��ʼ��ҩ�ˣ�\'
           +'����Ϊ�����ɡ�\'
           +'�ټ�\'
           );
        end else
        IF This_Player.GetBagItemCount('ʳ�����Ĺ�ʵ') >= 1 then
        begin
    
            IF This_Player.GetBagItemCount('ʳ�����Ĺ�ʵ') >= 1 then
            begin
               This_NPC.NpcDialog(This_Player,
               '������ã�û�����ǡ�\'
               +'�����Ļ�����һ��һ�����ɡ�\ \'
               +'|{cmd}<��/@give_sg_1>\'
               );
            
            end else
            begin
               This_NPC.NpcDialog(This_Player,
               '�� ' + This_Player.Name + ', ��ӭ���� \'
               +'����Ļ�����\'
               +'��������Ҫʳ�����Ĺ�ʵ\'
               +'��������Ū���������һ����ü�Ǯ�ġ�\'
               +'����һ�����ҡ�\'
               +'���Ҿ͵���ĺ���Ϣ�ˡ�\'
               );
            end;
     
        end else
        This_NPC.CloseDialog(This_Player);
    end
end;

//;����Ƿ����յ�ʳ�����Ĺ�ʵ



//;-------------------------------------------------------
//;����ҽ��������һ��ҩ
//;-------------------------------------------------------


procedure _ok_h_order;
begin
   This_NPC.NpcDialog(This_Player,
   'лл�㣬������ҩ�͸���ʦ������ҽ��\'
   +'���ʦ�����ҩȱ��ʲô������\'
   +'�Ҳ��ܿ���ҩ����\'
   +'���Ծ���������һ���ˡ�\'
   +'������ʦ���þö�û�����ţ�\'
   +'�ܶԲ�������һ���������æ��\'
   +'|{cmd}<��������/@ok_h_order_now>\' 
   );
end;

procedure _ok_h_order_now;
begin
    if This_Player.GetS(80,12) = 5 then
    begin
        if This_Player.FreeBagNum > 0 then
        begin
        This_Player.SetS(80,12,6);
        This_Player.Give('����ҽ��ҩ1',1);
        This_NPC.NpcDialog(This_Player,
         '�ҹ�Ȼû�п����ˣ�\'
         +'��Ȼ�Ҳ�֪��ʦ�����������\'
         +'��������˵�����װ��İ��ϰ����������ҵ�ʦ����\'
         +'�����ȥ�������ʡ�\'
         );
        end;
    end;
end;


procedure OnInitialize;
begin
  This_Npc.AddStdMode(0);
  This_Npc.AddStdMode(42);
  This_NPC.FillGoods('��ҩ(С��)', 100, 1);
  This_NPC.FillGoods('ħ��ҩ(С��)', 100, 1); 
  This_NPC.FillGoods('��ҩ(����)', 100, 1);
  This_NPC.FillGoods('ħ��ҩ(����)', 100, 1);
  This_NPC.FillGoods('ǿЧ��ҩ', 100, 1);
  This_NPC.FillGoods('ǿЧħ��ҩ', 100, 1);
  This_NPC.FillGoods('��ҩ(С)��', 100, 1);
  This_NPC.FillGoods('ħ��ҩ(С)��', 100, 1);
  This_NPC.FillGoods('��ҩ(��)��', 100, 1);
  This_NPC.FillGoods('ħ��ҩ(��)��', 100, 1);  
  This_NPC.FillGoods('������ҩ', 100, 1);
  This_NPC.FillGoods('����ħ��ҩ', 100, 1);  
  This_Npc.SetRebate(100);
end;

//�ű�ִ�е����
begin
  domain;
end.