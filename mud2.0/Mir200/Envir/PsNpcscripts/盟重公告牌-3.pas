{
*******************************************************************}

program Mir2;

{$I WarehouseAndMbind.pas} 
{$I ActiveValidateCom.pas}

procedure _Exit;
begin
  This_Npc.CloseDialog(This_Player);
end; 

procedure _DoExit;
begin
  This_Npc.CloseDialog(This_Player);
end;
var
goldPigId : integer;

procedure _move;
begin
   This_NPC.NpcDialog(This_Player,
   '�����ƶ�������ȥ�أ�\'+
   '|{cmd}<��������ƶ�/@move1>                       \'+
   '|{cmd}<����ɽ���ƶ�/@move2>                     \'+
   '|{cmd}<��ȥ���µ�/@move4>\'+
   '|{cmd}<��ȥħ����/@move6>\'+
   '|{cmd}<��ս��֮�������/@zuma>\'+
   '|{cmd}<����/@main>');
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

procedure _zuma;
begin
   if AutoOpen(2) then
   begin
   This_NPC.NpcDialog(This_Player,
   '�ҿ�������ǰ����������������������ȸ���10���ҡ�\'+
   'Ŀǰ�귨��½ħ��ɧ�ң�ħ���ɳ������µľ�Ӣ����ռ����<�������/c=red>\'+
   '<�߲����/c=red>���˵�ͼ�����쳣���գ����û���㹻�Ĵ������÷����ǲ�\'+
   '������ȥ�����ġ�\'+
   '�㵱ǰ�Ĵ������÷�Ϊ<' + getXYstr(0) + '/c=red>�֣�������ʱ���÷�Ϊ<' + getXYstr(2) + '/c=red>�֣�\'+
   '����˵�ͼ��Ҫ�ﵽ<30/c=red>�֡�\ \'+     
   '|{cmd}<ǰ���������/@dating>             ^<ǰ����������߲�1/@goToMonMap_1>\'
   +ActiveValidateStr
   );
   end else
   This_NPC.NpcDialog(This_Player,
   '�ҿ�������ǰ����������������������ȸ���1���ҡ�\'+
   'Ŀǰ�귨��½ħ��ɧ�ң�ħ���ɳ������µľ�Ӣ����ռ����<�������/c=red>\'+
   '<�߲����/c=red>���˵�ͼ�����쳣���գ����û���㹻�Ĵ������÷����ǲ�\'+
   '������ȥ�����ġ�\'+
   '�㵱ǰ�Ĵ������÷�Ϊ<' + getXYstr(0) + '/c=red>�֣�������ʱ���÷�Ϊ<' + getXYstr(2) + '/c=red>�֣�\'+
   '����˵�ͼ��Ҫ�ﵽ<30/c=red>�֡�<����ǰ��ֱ�ӽ��룬'+inttostr(AutoOpenDay(2))+'�������֤��/c=red>\ \'+     
   '|{cmd}<ǰ���������/@dating>             ^<ǰ����������߲�1/@goToMonMap_1>\'
   +ActiveValidateStr
   );
end;

procedure _goToMonMap_1;  
begin  
    if This_Player.MapName = '3' then  
    This_Player.FlyTo('D5072' , 10 , 55);  
end;                      

procedure _dating;
begin
   if This_Player.GoldNum >= 100000 then
   begin
      if compareText(This_Player.MapName,'3') = 0 then
      begin
         if This_Player.GetActivePoint + This_Player.GetTmpActivePoint >= 30 then
         This_Player.DecGold(100000);
         
         This_Player.Flyto('D5071',9,11);
      end;
   end else
   begin 
      This_NPC.NpcDialog(This_Player,
      '�������ȥ���ͱ������ȸ���10���ң��Ͽ���Ұɣ�\ \'+ 
      '|{cmd}<����/@main>');
   end;
end;

procedure _move6;
begin
   if compareText(This_Player.MapName,'3') = 0 then
      This_Player.Flyto('6',121,154);
end;

procedure _move4;
begin
   if compareText(This_Player.MapName,'3') = 0 then
   begin
      This_Player.Flyto('5',140,330);
   end;
end;

procedure _move2;
begin
   This_NPC.NpcDialog(This_Player,
   '�ƶ�������ɽ����Ҫ��ҡ�\'+ 
   '�����������ʹ�ã������֧��1000��ң�\'+ 
   '���뻨���Ǯ��\ \'+  
   '|{cmd}<�ƶ�/@pay2>\'+ 
   '|{cmd}<�˳�/@talkwith>');
end;

procedure _talkwith;
begin
   This_NPC.NpcDialog(This_Player,
   '��������һ��ͨ����\'+
   'ͨ�����ͨ���� �������ϵ�������š��� \'+
   '������ٵ��������� \ \'+
   '|{cmd}<��ͨ���ƶ�/@move1>\'+
   '|{cmd}<����ɽ���ƶ�/@move2>\'+
   '|{cmd}<����/@main>');
end;

procedure _pay2;
begin
   if This_Player.GoldNum >= 1000 then
   begin
      if compareText(This_Player.MapName,'3') = 0 then
      begin
         This_Player.DecGold(1000);
         This_Player.Flyto('3',521,764);
      end;
   end else
   begin 
      This_NPC.NpcDialog(This_Player,
      '���ڿ���Ц�ɣ����ǮҲû�С����� \'+
      '�����ƶ��� �Ҳ����ټ����㡣����\ \'+ 
      '|{cmd}<����/@main>');
   end;
end;

procedure _move1;
begin
   This_NPC.NpcDialog(This_Player,
   '�ƶ���ͨ����Ҫ��ҡ�\'+ 
   '�����������ʹ�ã������֧��1000��ң�\'+ 
   '���뻨���Ǯ��\ \'+  
   '|{cmd}<�ƶ�/@pay1>\'+ 
   '|{cmd}<�˳�/@talkwith>');
end;

procedure _pay1;
begin
   if This_Player.GoldNum >= 1000 then
   begin
      if compareText(This_Player.MapName,'3') = 0 then
      begin
         This_Player.DecGold(1000);
         This_Player.Flyto('D701',108,155);
      end;
   end else
   begin 
      This_NPC.NpcDialog(This_Player,
      '���ڿ���Ц�ɣ����ǮҲû�С����� \'+
      '�����ƶ��� �Ҳ����ټ����㡣����\ \'+ 
      '|{cmd}<����/@main>');
   end;
end;

procedure _swz;
begin
  This_Npc.NpcDialog(This_Player,
  '�ҿ��԰���ʹ������ֵ������PKֵ��\ÿһ������ֵ���԰�������100��PKֵ��\ \'
  +'|{cmd}<����100��PKֵ/@decpkdecsw>\'
  +'|{cmd}<����/@main>'
  );
end;

procedure _decpkdecsw;
begin
   if This_Player.MyPkpoint >= 100 then
   begin
      if This_Player.MyShengwan >= 1 then
      begin
         This_Player.MyShengwan := This_Player.MyShengwan-1;
         This_Player.DecPkPoint(100);
      end
      else
      begin
         This_Npc.NpcDialog(This_Player,
         '�Բ�����û����������������PKֵ��'
         );
      end;
   end
   else
   begin
      This_Npc.NpcDialog(This_Player,
      '�����ڲ���Ҫ����PKֵ��' 
      );
   end;
end;

procedure Execute;
var
BookCanyon_div,BookCanyon_mod,tempNow , tempTime :integer;
pigRdm ,pigX , pigY :integer;
pigStr : string;
begin
   //ս����ͼ
   tempNow := GetDateNum(GetNow) *10000 +(GetHour * 100) + (GetMin);
   tempTime := tempNow mod 10000;
   if GetG(36,36) <> tempNow then
   begin 
   
     
   
     if ((GetHour = 19) or (GetHour = 21) or (GetHour = 23) )and (GetMin = 0) then
     begin 
       if GetHour = 19 then
       begin  
       This_NPC.NpcNotice('����ĺ�Ӱ�Բ������ӣ�ţħ�����ѳ������˻���֮���ķ���--����ţħ��������ʤ���Ļ���ħ����̲�ʳ�귨��½�ϵ����顣');
       This_NPC.NpcNotice('����ţħ���Ļ������ʧȥ�˹������Լ�����˵ĸ�����ģ�����壬�ڴ����򹥻��κε��˶������ܳͷ���');
       end;
       
       if (This_NPC.CheckMapMonByName('D5071','����ţħ��') = 0) then
       begin
       This_NPC.CreateMon('D5071',20,23,10,'����ţħ��',1);

       This_NPC.NpcNotice('������֮�ء���������߲������20��23�����ֻ���ţħ����');
       end; 
       
       if (This_NPC.CheckMapMonByName('D5072','����ţħ��') = 0) then
       begin
       This_NPC.CreateMon('D5072',27,20,7,'����ţħ��',1);

       This_NPC.NpcNotice('������֮�ء���������߲㣨27��20�����ֻ���ţħ����');
       end; 
       
       if (This_NPC.CheckMapMonByName('63','����ţħ��') = 0) then
       begin
       This_NPC.CreateMon('63',126,27,10,'����ţħ��',1);
       This_NPC.CreateMon('63',126,27,10,'����ţħ��˾',5);
       This_NPC.CreateMon('63',126,27,10,'����ţħ����',5);
       This_NPC.CreateMon('63',126,27,10,'����ţħ��ʦ',5);
       This_NPC.CreateMon('63',126,27,10,'����ţħ����',5);
       This_NPC.NpcNotice('������֮�ء�ħ���루126��27�����ֻ���ţħ����');
       end; 
       
       if (This_NPC.CheckMapMonByName('6','����ţħ��') = 0) then
       begin
       This_NPC.CreateMon('6',423,65,10,'����ţħ��',1);

       This_NPC.NpcNotice('������֮�ء�ħ���ǣ�423��65�����ֻ���ţħ����');
       end; 
       
       if (This_NPC.CheckMapMonByName('5','����ţħ��') = 0) then
       begin
       This_NPC.CreateMon('5',101,267,1,'����ţħ��',1);
    
       This_NPC.NpcNotice('������֮�ء����µ���101��267�����ֻ���ţħ����');
       end; 
     end; 
     
     if (GetHour = 22) and (GetMin = 0) then
     begin     
       if (This_NPC.CheckMapMonByName('D701','����ţħ��') = 0) then
       begin
       This_NPC.CreateMon('D701',74,39,6,'����ţħ��',1);

       This_NPC.NpcNotice('������֮�ء�ɳ�Ϳ��ܵ���74��39�����ֻ���ţħ����');
       end; 
     end;  
     
     if AutoOpenDay(1) = 0 then      //�·��㿪��������ʾ 
     begin
        if (GetHour = 0) and (GetMin = 0) then
        This_NPC.NpcNotice('����ħ���١�����س�����������Ԩħ��ǯ�泲Ѩ���������桢������õ���װ��ħ�Ѿ����֣���ʿ�ǿ���ǰ��̽�գ�');
     end;
     
     if AutoOpenDay(2) = 0 then      //�������÷ֿ���������ʾ 
     begin
        if (GetHour = 0) and (GetMin = 0) then
        This_NPC.NpcNotice('���������÷֡��������÷�ϵͳ���ѿ�������ʿ�ǿ���ǰ��������ʹ�ߺͲֿ����Ա����֤�������÷֣����õ�������Ϸ���ݣ�');
     end;
     
     
     
     if AutoOpenDay(5) = 0 then      //ɳ�Ϳ˿���������ʾ 
     begin
        if (GetHour = 0) and (GetMin = 0) then
        This_NPC.NpcNotice('����սɳ�ǡ�ɳ�Ϳ��������ѿ�������ʿ�ǿ����ڱ������������ս�ۣ�Ⱥ����¹����սɳ�ǣ�');
     end;
     
      if AutoOpen(3) then
     begin
        if (GetHour = 10) and (GetMin = 25) then
        This_NPC.NpcNotice('���¶ᱦ�5���ӿ�������Ҫȥ����ҿ��Դ��������½�-��ħ�ؽ�-����칤-�����������ǰ�����¹���ڹ�������λ�õ���ͱ���żNPC���ͽ���ᱦ��ͼ���ᱦ��ż����55�ֺ�����ҵ������NPC��Χˢ��������Ʒ����Ʒ2���Ӻ����ʰȡ��');
     end;
     
     if AutoOpen(3) then
     begin
        if (GetHour = 10) and (GetMin = 30) then
        This_NPC.NpcNotice('���¶ᱦ���������Ҫȥ����ҿ��Դ��������½�-��ħ�ؽ�-����칤-�����������ǰ�����¹���ڹ�������λ�õ���ͱ���żNPC���ͽ���ᱦ��ͼ���ᱦ��ż����55�ֺ�����ҵ������NPC��Χˢ��������Ʒ����Ʒ2���Ӻ����ʰȡ��');
     end;
     
     if AutoOpen(3) then
     begin
        if (GetHour = 13) and (GetMin = 25) then
        This_NPC.NpcNotice('���¶ᱦ�5���ӿ�������Ҫȥ����ҿ��Դ��������½�-��ħ�ؽ�-����칤-�����������ǰ�����¹���ڹ�������λ�õ���ͱ���żNPC���ͽ���ᱦ��ͼ���ᱦ��ż����55�ֺ�����ҵ������NPC��Χˢ��������Ʒ����Ʒ2���Ӻ����ʰȡ��');
     end;
     
     if AutoOpen(3) then
     begin
        if (GetHour = 13) and (GetMin = 30) then
        This_NPC.NpcNotice('���¶ᱦ���������Ҫȥ����ҿ��Դ��������½�-��ħ�ؽ�-����칤-�����������ǰ�����¹���ڹ�������λ�õ���ͱ���żNPC���ͽ���ᱦ��ͼ���ᱦ��ż����55�ֺ�����ҵ������NPC��Χˢ��������Ʒ����Ʒ2���Ӻ����ʰȡ��');
     end;
  
          if AutoOpen(3) then
     begin
        if (GetHour = 15) and (GetMin = 25) then
        This_NPC.NpcNotice('���¶ᱦ�5���ӿ�������Ҫȥ����ҿ��Դ��������½�-��ħ�ؽ�-����칤-�����������ǰ�����¹���ڹ�������λ�õ���ͱ���żNPC���ͽ���ᱦ��ͼ���ᱦ��ż����55�ֺ�����ҵ������NPC��Χˢ��������Ʒ����Ʒ2���Ӻ����ʰȡ��');
     end;
     
     if AutoOpen(3) then
     begin
        if (GetHour = 15) and (GetMin = 30) then
        This_NPC.NpcNotice('���¶ᱦ���������Ҫȥ����ҿ��Դ��������½�-��ħ�ؽ�-����칤-�����������ǰ�����¹���ڹ�������λ�õ���ͱ���żNPC���ͽ���ᱦ��ͼ���ᱦ��ż����55�ֺ�����ҵ������NPC��Χˢ��������Ʒ����Ʒ2���Ӻ����ʰȡ��');
     end;
  
           if AutoOpen(3) then
     begin
        if (GetHour = 20) and (GetMin = 25) then
        This_NPC.NpcNotice('���¶ᱦ�5���ӿ�������Ҫȥ����ҿ��Դ��������½�-��ħ�ؽ�-����칤-�����������ǰ�����¹���ڹ�������λ�õ���ͱ���żNPC���ͽ���ᱦ��ͼ���ᱦ��ż����55�ֺ�����ҵ������NPC��Χˢ��������Ʒ����Ʒ2���Ӻ����ʰȡ��');
     end;
     
     if AutoOpen(3) then
     begin
        if (GetHour = 20) and (GetMin = 30) then
        This_NPC.NpcNotice('���¶ᱦ���������Ҫȥ����ҿ��Դ��������½�-��ħ�ؽ�-����칤-�����������ǰ�����¹���ڹ�������λ�õ���ͱ���żNPC���ͽ���ᱦ��ͼ���ᱦ��ż����55�ֺ�����ҵ������NPC��Χˢ��������Ʒ����Ʒ2���Ӻ����ʰȡ��');
     end;
  
          if AutoOpen(3) then
     begin
        if (GetHour = 22) and (GetMin = 55) then
        This_NPC.NpcNotice('���¶ᱦ�5���ӿ�������Ҫȥ����ҿ��Դ��������½�-��ħ�ؽ�-����칤-�����������ǰ�����¹���ڹ�������λ�õ���ͱ���żNPC���ͽ���ᱦ��ͼ���ᱦ��ż����55�ֺ�����ҵ������NPC��Χˢ��������Ʒ����Ʒ2���Ӻ����ʰȡ��');
     end;
     
     if AutoOpen(3) then
     begin
        if (GetHour = 23) and (GetMin = 00) then
        This_NPC.NpcNotice('���¶ᱦ���������Ҫȥ����ҿ��Դ��������½�-��ħ�ؽ�-����칤-�����������ǰ�����¹���ڹ�������λ�õ���ͱ���żNPC���ͽ���ᱦ��ͼ���ᱦ��ż����55�ֺ�����ҵ������NPC��Χˢ��������Ʒ����Ʒ2���Ӻ����ʰȡ��');
     end;
     
               if AutoOpen(3) then
     begin
        if (GetHour = 18) and (GetMin = 15) then
        This_NPC.NpcNotice('���ضᱦ�5���ӿ�������Ҫȥ����ҿ��Դ�����-�ʹ�ߴ����룡');
     end;
     
     if AutoOpen(3) then
     begin
        if (GetHour = 18) and (GetMin = 20) then
        This_NPC.NpcNotice('���ضᱦ���������Ҫȥ����ҿ��Դ�����-�ʹ�ߴ����룡�����20���Ӻ�ر�');
     end; 
     
     if AutoOpen(3) then
     begin
       //�ؾ�Ͽ�� 
       if ((GetHour = 15) and (GetMin = 55)) or ((GetHour = 19) and (GetMin = 25)) then
       begin
       RollMSG('��˵�еĲؾ�Ͽ��5���Ӻ�������ɱ������ܽ����Ǵ��ԭ�Σ���Ѱɢ�����ҳ���أ���ʿ�ǸϽ�ǰ����ȡ����ɣ�');
       This_NPC.ClearMon('R001~01');
       end else
       if ((GetHour = 16) and (GetMin = 25)) or ((GetHour = 19) and (GetMin = 55)) then
       begin
       RollMSG('��˵�еĲؾ�Ͽ��5���Ӻ�رգ����λ��ʿץ��ʱ����Ѱɢ�����ҳ���أ�');
       end;
       
       if ((GetHour = 16) and (GetMin < 30)) or ((GetHour = 19) and (GetMin >= 30)) then
       begin
         BookCanyon_div := GetMin div 2;
         BookCanyon_mod := GetMin mod 2;
         if (BookCanyon_mod = 0) and (GetG(35,43) <> BookCanyon_div) then
         begin
           if (GetMin = 0) or (GetMin = 30) then
           begin
           This_NPC.ClearMon('R001~01');
           SetG(35,43,BookCanyon_div);
           if (This_NPC.CheckMapMonByName('R001~01','��Ƥ��') < 400) then This_NPC.CreateMon('R001~01',100,100,100,'��Ƥ��',250);
           if (This_NPC.CheckMapMonByName('R001~01','�׹���') < 400) then This_NPC.CreateMon('R001~01',100,100,100,'�׹���',250);       
           This_NPC.NpcNotice('���ؾ�Ͽ�ȡ���˵�еĲؾ�Ͽ�ȿ���������ɱ������ܽ����Ǵ��ԭ�Σ���Ѱɢ�����ҳ���أ���ʿ�ǸϽ�ǰ����ȡ����ɣ�');
           RollMSG('��˵�еĲؾ�Ͽ�ȿ���������ɱ������ܽ����Ǵ��ԭ�Σ���Ѱɢ�����ҳ���أ���ʿ�ǸϽ�ǰ����ȡ����ɣ�');
           end else
           begin
           SetG(35,43,BookCanyon_div);
           if (This_NPC.CheckMapMonByName('R001~01','��Ƥ��') < 400) then This_NPC.CreateMon('R001~01',100,100,100,'��Ƥ��',250);
           if (This_NPC.CheckMapMonByName('R001~01','�׹���') < 400) then This_NPC.CreateMon('R001~01',100,100,100,'�׹���',250);
           end;
         end;
       end;       
     end;
     
     if (GetHour = 22) then
     begin
        if GetMin = 15 then
        begin
          if This_NPC.GetCastleGuildName <> '' then
          begin
            if (This_NPC.CheckMapMonByName('H204','ǧ������') = 0) then
            begin
            This_NPC.CreateMon('H204',50,50,50,'ǧ������',1);
            This_NPC.NpcNotice('��ɳ�Ϳˡ����ش��΢΢һ�������ص�BOSS������ɳ�Ϳ˲ر���');
            end;
          end;
        end else
        if GetMin = 30 then
        begin
          if This_NPC.GetCastleGuildName <> '' then
          begin
            if (This_NPC.CheckMapMonByName('H204','��Ȫ����16') = 0) then
            begin
            This_NPC.CreateMon('H204',50,50,50,'��Ȫ����16',1);
            This_NPC.NpcNotice('��ɳ�Ϳˡ����ش��΢΢һ�������ص�BOSS������ɳ�Ϳ˲ر���');
            end;
          end;
        end else
        if GetMin = 45 then
        begin
          if This_NPC.GetCastleGuildName <> '' then
          begin
            if (This_NPC.CheckMapMonByName('H204','�ز�ħ��16') = 0) then
            begin
            This_NPC.CreateMon('H204',50,50,50,'�ز�ħ��16',1);
            This_NPC.NpcNotice('��ɳ�Ϳˡ����ش��΢΢һ�������ص�BOSS������ɳ�Ϳ˲ر���');
            end;
          end;
        end;  
     end; 
     
     if (tempTime >=0000) and (tempTime < 2359) then
     begin
         if (tempTime mod 60) = 0 then
         begin
             pigRdm := random(6) + 1;
             while (pigRdm) = goldPigId do
             pigRdm := random(6) + 1;
             
             goldPigId := pigRdm;
             
             case pigRdm of
                 1:      //3 200,150-700,600           
                 begin
                    pigX := 200 + random(500);
                    pigY := 150 + random(450);
                    This_NPC.CreateMon('3',pigX,pigX,3,'ɢ����',1);
                    pigStr := '��λ�����ע�⣺���д����Ʊ���ɢ�����ٴν���������ʡ(' + inttostr(pigX) + '��' + inttostr(pigY) + ')������'
                 end;
                 2:      //0 100,100-600,600           
                 begin
                    pigX := 100 + random(50);
                    pigY := 100 + random(50);
                    This_NPC.CreateMon('f011',pigX,pigX,3,'������',1);
                    pigStr := '��λ�����ע�⣺���д�������ľ������ٴν����ڼ���ս��(' + inttostr(pigX) + '��' + inttostr(pigY) + ')������'
                 end;
                 3:      //0 420,300-550,500           
                 begin
                    pigX := 420 + random(130);
                    pigY := 300 + random(200);
                    This_NPC.CreateMon('5',pigX,pigX,3,'ɢ����',1);
                    pigStr := '��λ�����ע�⣺���д����Ʊ���ɢ�����ٴν����ڲ��µ�(' + inttostr(pigX) + '��' + inttostr(pigY) + ')������'
                 end;
                 
                4:      //0 420,300-550,500           
                 begin
                    pigX := 420 + random(130);
                    pigY := 300 + random(200);
                    This_NPC.CreateMon('5',pigX,pigX,3,'������',1);
                    pigStr := '��λ�����ע�⣺���д�������ľ������ٴν����ڲ��µ�(' + inttostr(pigX) + '��' + inttostr(pigY) + ')������'
                 end;
                 
                 5:      //3 200,150-700,600           
                 begin
                    pigX := 200 + random(500);
                    pigY := 150 + random(450);
                    This_NPC.CreateMon('3',pigX,pigX,3,'������',1);
                    pigStr := '��λ�����ע�⣺���д�������ľ������ٴν���������ʡ(' + inttostr(pigX) + '��' + inttostr(pigY) + ')������'
                 end;
                 6:      //0 100,100-600,600           
                 begin
                    pigX := 100 + random(50);
                    pigY := 100 + random(50);
                    This_NPC.CreateMon('f011',pigX,pigX,3,'ɢ����',1);
                    pigStr := '��λ�����ע�⣺���д����Ʊ���ɢ�����ٴν����ڼ���ս��(' + inttostr(pigX) + '��' + inttostr(pigY) + ')������'
                 end;
   
             end;
             if (tempTime = 0000) then
             begin
                 This_NPC.NpcNotice('�µ�һ�쿪ʼ������' + pigStr);
                 RollMsg('�µ�һ�쿪ʼ������' + pigStr);
             end else
             begin
                 This_NPC.NpcNotice(pigStr);
                 RollMsg(pigStr);
             end; 
         end;
     end; 

        SetG(36,36,tempNow);  
   end;
  
end;
procedure _GoTocastlewar;
begin
   if AutoOpen(5) then
   begin
     if This_Player.MapName = '3' then This_Player.Flyto('3',700,400); 
   end;
end;

var
tem : integer;
say : string;
Begin
   tem := random(5)+1;
   case tem of
     1 : say := '����ħ�ȵĽ��䱻����֮�󣬷�ħ���ֳ�������Ķ��У�\��ͨ�����µ���·;������֮���귨��½�������ַǷ���\�������ߵ��������ڱ�����е�ʱ��һ���ֱ�����ڲ�ͬ��\' ;
     2 : say := 'ħ����������������ֵ�Զ�ų��С�\�����ħ�����Ÿ��ǽ�ħӰ���˺�ħ������������\�������׺ݵĶ�ħ�������귨��½�����˳����\';
     3 : say := '��֮ħ������ʹ��а��������ӡ��ħ�����أ�\�Ӵ��Ժ���ʿ����Ҳ���ܽ���˵أ�\ԭ�����������ħ����ʿ���Ѿ�ת������ħ��Ѫ�������ħ�ϳ���\';
     4 : say := '���ħ�����ŵĽ���ʮ�����ͣ����ؿ�ν�᧿�Σ��\�����������ʿ�ۼ��ĵط������ͽ�ָʧȥ���������ã�\���ٿ������������͵����ظ��ء�\';
     5 : say := '��֮ħ������ʹ��а��������ӡ��ħ�����أ�\�Ӵ��Ժ���ʿ����Ҳ���ܽ���˵أ�\ԭ�����������ħ����ʿ���Ѿ�ת������ħ��Ѫ�������ħ�ϳ���\';
   end;
   

   if AutoOpen(5) then
   begin
     This_NPC.NpcDialog(This_Player,
     say+
     '\|{cmd}<ʹ���ƶ�/@move>                   ^<ʹ������ֵ/@swz>\ \'+
     '|{cmd}<������ɳ�Ϳ˼��ϵ�/@GoTocastlewar>\'+
     '|{cmd}<�˳�/@exit>   '); 
   end else
   This_NPC.NpcDialog(This_Player,
   say+
   '\|{cmd}<ʹ���ƶ�/@move>                   ^<ʹ������ֵ/@swz>\ \'+
   '|{cmd}<�˳�/@exit>'); 
end.