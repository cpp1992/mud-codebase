{
*******************************************************************}

Program Mir2;



Procedure _doexit;
begin
   This_NPC.CloseDialog(This_Player);
end;

//==============================================================�������� 
Procedure dorenwu2;
begin
   if 1 = 1 then
   begin
      This_NPC.NpcDialog(This_Player,
      '�������ʿ���ܸ��˼����㣬���Ѿ���˵��������飬����\'+
      '��Ϊ��׼����һ��<������/c=red>�����Ż��������������������ģ�\ \ \'+
      '|{cmd}<�ҽ���(����)/@renwu3>\');
   end else
   begin
      This_NPC.NpcDialog(This_Player,
      '�������ʿ���ܸ��˼����㣬���Ѿ���˵��������飬����\'+
      '��Ϊ��׼����һ��<������/c=red>�����Ż��������������������ģ�\'+
      'ͬʱ�ҿ��԰�����ѧ���ڹ�������������Ϊ�ĸ�����\'+
      '���㽫����������<��������/c=red>������ȥ<���ڹ���ʦ�����ڹ�/c=red>\'+
      '<�ĸ��־������ʽ/c=red>��\ \'+
      '|{cmd}<�ҽ���(����)/@renwu3>\');
   end;
end;

Procedure dorenwu3;
begin
 This_NPC.NpcDialog(This_Player,
 '����İ������������������Ӧ�İ����ڣ�˫���󼴿�ѧϰ��\'+
 '��ѧϰ�꼼�ܺ󣬴��������ϵļ��ܽ����趨��Ӧ�Ŀ�ݼ�\'+
 '��ɿ�����ʹ�ü��ܡ�����ȥ������ʹ�߰ɣ���������Ҫ�Ŀγ�Ҫ\'+
 '�����أ� \ \'+
 '|{cmd}<�ҽ���(����)/@renwu4>\'
 );
end;

Procedure dorenwu4;
begin
 This_NPC.NpcDialog(This_Player,
 'ȥ������ʹ�߰ɣ���������Ҫ�Ŀγ�Ҫ�����أ� \ \'+
 '|{cmd}<�����ȥ(����)/@doexit>\'
 ); 
end;

Procedure dorenwu9;
begin
 This_NPC.NpcDialog(This_Player,
 '�ղ������Ƕ�������˵������ĵİ��������ǣ��Һܸ��ˡ�\'+
 '������û�п����㣡 �귨��½������Ҫ�������������ˡ�\'+
 '������Ҫѧ�Ķ������кܶ࣡��Ը����Ž���ѧϰ��\ \'+
 '|{cmd}<�ҽ���(����)/@renwu10>\'
 );
end;

procedure dorenwu11;
begin
 This_Npc.NpcDialog(This_Player,
 'ȥ��һ��<����ϰ�/c=red>�ɣ�\'+
 '����������һЩ����������ʵ���ļ�����\ \ \'+
 '|{cmd}<�����ȥ(����)/@doexit>\'
 );
end;


Procedure _renwu4;
begin
 if (This_Player.GetV(101,1)=4) then
 begin
 This_NPC.NpcDialog(This_Player,
 'ȥ������ʹ�߰ɣ���������Ҫ�Ŀγ�Ҫ�����أ� \ \'+
 '|{cmd}<�����ȥ(����)/@doexit>\'
 ); 
 end
 else if (This_Player.GetV(101,1)=3) then
 begin
 This_NPC.CloseDialog(This_Player);
 This_Player.SetV(101,1,4);           //������
 This_Player.UpdateTaskDetail(101,1);  
 This_Player.Give('����',500);
 //This_player.AutoGotoMap('0',332,263);//����Զ�Ѱ· ����ʹ��  
 end;   
end;

Procedure _renwu3;
var
  RWTem101 : integer;
begin
   RWTem101 := This_Player.GetV(101,1);
   if RWTem101 = 3 then
   begin 
      This_NPC.NpcDialog(This_Player,
      '����İ������������������Ӧ�İ����ڣ�\'+
      '˫���󼴿�ѧϰ����ѧϰ�꼼�ܺ�,��������\'+
      '�ϵļ��ܽ����趨��Ӧ�Ŀ�ݼ���ɿ�����ʹ�ü��ܡ�\'+
      '����ȥ������ʹ�߰ɣ���������Ҫ�Ŀγ�Ҫ�����أ� \ \'+
      '|{cmd}<�ҽ���(����)/@renwu4>\');
   end else if RWTem101 = 2 then
   begin
      if This_Player.FreeBagNum < 3 then
      begin
         This_NPC.NpcDialog(This_Player,
         '��������������ı����������ң�\ \'+
         '|{cmd}<�õ�/@doexit>\');
      end else
      begin
         if 1 = 1 then
         begin
            This_Player.SetV(101,1,3);           //������ 
            This_Player.UpdateTaskDetail(101,1); 
            //This_Player.AddGold(5000);
            This_Player.Give('����',500);
            This_NPC.NpcDialog(This_Player,
            '����İ������������������Ӧ�İ����ڣ�\'+
            '˫���󼴿�ѧϰ����ѧϰ�꼼�ܺ�,��������\'+
            '�ϵļ��ܽ����趨��Ӧ�Ŀ�ݼ���ɿ�����ʹ�ü��ܡ�\'+
            '����ȥ������ʹ�߰ɣ���������Ҫ�Ŀγ�Ҫ�����أ� \ \'+
            '|{cmd}<�ҽ���(����)/@renwu4>\');
            if This_Player.Job = 0 then
            begin
               This_Player.Give('��������',1);
            end else
            if This_Player.Job = 1 then
            begin
               This_Player.Give('������',1);
            end else
            begin   
               This_Player.Give('������',1);
               This_Player.Give('������ս��',1);
            end;   
         end else
         begin
            This_Player.SetV(101,1,3);           //������ 
            This_Player.UpdateTaskDetail(101,1); 
            //This_Player.AddGold(5000);
            This_Player.Give('����',500);
            This_NPC.NpcDialog(This_Player,
            '����İ������������������Ӧ�İ����ڣ�\'+
            '˫���󼴿�ѧϰ����ѧϰ�꼼�ܺ�,��������\'+
            '�ϵļ��ܽ����趨��Ӧ�Ŀ�ݼ���ɿ�����ʹ�ü��ܡ�\'+
            '����ȥ������ʹ�߰ɣ���������Ҫ�Ŀγ�Ҫ�����أ� \ \'+
            '|{cmd}<�ҽ���(����)/@renwu4>\');
            //This_NPC.EnableForce(This_Player, True);
            if This_Player.Job = 0 then
            begin
               This_Player.Give('��������',1);
            end else
            if This_Player.Job = 1 then
            begin
               This_Player.Give('������',1);
            end else
            begin   
               This_Player.Give('������',1);
               This_Player.Give('������ս��',1);
            end;             
         end;         
      end;
   end; 
end;

Procedure _renwu10;
begin
 This_NPC.NpcDialog(This_Player,
 'Ҫ��Ϊ��������ʿ���⿿װ���ǲ��еģ�ȥ��һ������ϰ�ɣ�\'+
 '����������һЩ����������ʵ���ļ����飬����ĵȼ��ﵽ\'+
 'ѧϰ���ܵı�׼������������ϰ幺��һ��ѧϰ��\ \'+
 '|{cmd}<�ҽ���(����)/@renwu11>\'
 );
end;

procedure _renwu11;
begin
if (This_Player.GetV(102,1)=6) then
 begin
  This_Npc.NpcDialog(This_Player,
 'ȥ��һ������ϰ�ɣ�\'+
 '����������һЩ����������ʵ���ļ����顣\ \ \'+
 '|{cmd}<�����ȥ(����)/@doexit>\'
 );
 end else
 begin
  This_Player.SetV(102,1,6);        //������
  This_Player.UpdateTaskDetail(102,1);
  This_Player.Give('����',2500);
  This_Npc.CloseDialog(This_Player);
  //This_player.AutoGotoMap('0',325,249);//�Զ�Ѱ·����ϰ� 
 end;  
end; 
//======================================================================= 

Procedure _exit;
begin
   This_NPC.CloseDialog(This_Player);
end;

Procedure _goout;
begin
   if This_Player.Level >= 11 then
   begin
      This_NPC.NpcDialog(This_Player,
      '���Ѿ��ﲻ����ʲô��\'+
      '�����������Լ�ȥ̽���귨��½�������ˡ�\ \'+
      '|{cmd}<����֪���귨��½���µı仯/@change>\ \'+
      '|{cmd}<�뿪/@exit>');
   end else
   begin
      This_NPC.NpcDialog(This_Player,
      '��ȥ�����أ�\ \'+
      '|{cmd}<����/@gotob>\'+
      '|{cmd}<�����/@gotom>');
   end;
end;

Procedure _gotom;
var  
RM : integer;
begin
   if compareText(This_Player.MapName,'0') = 0 then
   begin
      RM := Random(6) + 1
      if RM = 6 then
      begin
         This_Player.Flyto('0',330,266);
      end else if RM = 5 then
      begin
         This_Player.Flyto('0',326,270);
      end else if RM = 4 then
      begin
         This_Player.Flyto('0',322,266);
      end else if RM = 3 then
      begin
         This_Player.Flyto('0',324,258);
      end else if RM = 2 then
      begin
         This_Player.Flyto('0',332,258);
      end else
      begin
         This_Player.Flyto('0',337,263);  
      end;
      This_NPC.CloseDialog(This_Player);  
   end;
end;

Procedure _gotob;
var  
RN : integer;
begin
   if compareText(This_Player.MapName,'0') = 0 then
   begin
      RN := Random(6) + 1
      if RN = 6 then
      begin
         This_Player.Flyto('0',611,586);
      end else if RN = 5 then
      begin
         This_Player.Flyto('0',608,589);
      end else if RN = 4 then
      begin
         This_Player.Flyto('0',604,593);
      end else if RN = 3 then
      begin
         This_Player.Flyto('0',607,596);
      end else if RN = 2 then
      begin
         This_Player.Flyto('0',610,593);
      end else
      begin
         This_Player.Flyto('0',615,588);
      end; 
      This_NPC.CloseDialog(This_Player); 
   end;
end;

Procedure _change;
begin
   This_NPC.NpcDialog(This_Player,
   '���ڣ�������ɽ�Ⱥͱ߽�ɽ�嶼���Խ���Ԫ�������ˣ�\'+
   '��ֻҪ����Щ�ط���<����ʦ/c=red>�Ϳ���������ж��졣\ \'+
   '|{cmd}<����/@main>');
end;

procedure _ExtraBQSD;
var
  BXS102, BXS101 : integer;
begin
   BXS102 := This_Player.GetV(102,1);
   BXS101 := This_Player.GetV(101,1);
   if BXS102 = 6 then
   begin
      dorenwu11;
   end else if BXS102 = 5 then
   begin
      dorenwu9;
   end else if BXS101 = 4 then
   begin 
      dorenwu4;
   end else if BXS101 = 3 then
   begin
      dorenwu3;
   end else if BXS101 = 2 then
   begin
      dorenwu2;
   end;
end;


Procedure _gointo;
begin
   if This_Player.Level < 46 then
   begin
      This_NPC.NpcDialog(This_Player,
      '��л��������Ը��������ʵ��ѡ���������������������\'+
      '������Ҫ�����㣬ÿ���������������㣬Σ�ճ̶�һ���\'+
      'һ��ߣ�������Я���㹻����ҩƷ����룡\ \'+
      '|{cmd}<���ù�(�ʺ�15-22��)/@gointo17>\'+
      '|{cmd}<��浺(�ʺ�23-30��)/@gointo28>\'+
      '|{cmd}<а���(�ʺ�31-39��)/@gointo35>\'+
      '|{cmd}<���ߵ���(�ʺ�40-45��)/@gointo36>\'+
      '|{cmd}<����/@main>');
   end;
   
  { if (This_Player.GetV(111,15) = 1) and (This_Player.Level < 46) then
   begin
      if This_Player.SetV(111,15,10) then
      begin
         This_Player.Give('����',10000);
         This_Player.PlayerNotice('���Ѿ�����˳ɳ�֮·�����ߵ���������',2);
         //#This_Player.DeleteTaskFromUIList(1015);
      end;
   end;   }
end;

Procedure _gointo36;
begin
   if This_Player.Level >= 46 then
   begin
      This_NPC.NpcDialog(This_Player,
      '��λ��ʿ����������Ѿ��õ���������\'+
      '������������Ѿ������ʺ��㣬\'+
      '�����ǰ���귨��½���أ������µ�������\ \'+
      '|{cmd}<����/@gointo>');
   end else if This_Player.Level >= 40 then
   begin
      if compareText(This_Player.MapName,'0') = 0 then
         This_Player.RandomFlyTo('n111');
   end else if This_Player.Level >= 15 then
   begin
      This_NPC.NpcDialog(This_Player,
      '��λ��ʿ��������������������������������˵̫Σ���ˣ�\'+
      '�����ڿ�����ȥ�ͼ��������������������\ \'+
      '|{cmd}<����/@gointo>');
   end else
   begin
      This_NPC.NpcDialog(This_Player,
      '��λ��ʿ�����������������������������˵̫Σ���ˣ�\'+
      '�����ڿ�����ȥ����ɽ�Ȼ��߽߱�ɽ�帽������������');
   end;
end;

Procedure _gointo35;
begin
   if This_Player.Level >= 40 then
   begin
      This_NPC.NpcDialog(This_Player,
      '��λ��ʿ����������Ѿ��õ���������\'+
      '�����Ѿ������ʺ��㣬�����ǰ����һ������������������\ \'+
      '|{cmd}<����/@gointo>');
   end else if This_Player.Level >= 31 then
   begin
      if compareText(This_Player.MapName,'0') = 0 then
         This_Player.RandomFlyTo('n103');
   end else if This_Player.Level >= 15 then
   begin
      This_NPC.NpcDialog(This_Player,
      '��λ��ʿ��������������������������������˵̫Σ���ˣ�\'+
      '�����ڿ�����ȥ15--22����23--30��������������������\ \'+
      '|{cmd}<����/@gointo>');
   end else
   begin
      This_NPC.NpcDialog(This_Player,
      '��λ��ʿ�����������������������������˵̫Σ���ˣ�\'+
      '�����ڿ�����ȥ����ɽ�Ȼ��߽߱�ɽ�帽������������');
   end;
end;

Procedure _gointo28;
begin
   if This_Player.Level >= 31 then
   begin
      This_NPC.NpcDialog(This_Player,
      '��λ��ʿ����������Ѿ��õ���������\'+
      '�����Ѿ������ʺ��㣬�����ǰ����һ������������������\ \'+
      '|{cmd}<����/@gointo>');
   end else if This_Player.Level >= 23 then
   begin
      if compareText(This_Player.MapName,'0') = 0 then
         This_Player.RandomFlyTo('n106');
   end else if This_Player.Level >= 15 then
   begin
      This_NPC.NpcDialog(This_Player,
      '��λ��ʿ��������������������������������˵̫Σ���ˣ�\'+
      '�����ڿ�����ȥ15--22��������������������\ \'+
      '|{cmd}<����/@gointo>');
   end else
   begin
      This_NPC.NpcDialog(This_Player,
      '��λ��ʿ�����������������������������˵̫Σ���ˣ�\'+
      '�����ڿ�����ȥ����ɽ�Ȼ��߽߱�ɽ�帽������������');
   end;
end;


Procedure _gointo17;
begin
   if This_Player.Level >= 25 then
   begin
      This_NPC.NpcDialog(This_Player,
      '��λ��ʿ�����Ѿ���ʽ��ҵ��\'+
      '��ǰ�����ǽ���������\ \'+
      '|{cmd}<����/@gointo>');
   end else if This_Player.Level >= 0 then
   begin
      if compareText(This_Player.MapName,'0') = 0 then
         This_Player.RandomFlyTo('0139~13');
   end else
   begin
      This_NPC.NpcDialog(This_Player,
      '��λ��ʿ�����������������������������˵̫Σ���ˣ�\'+
      '�����ڿ�����ȥ����ɽ�Ȼ��߽߱�ɽ�帽������������');
   end;
end;


procedure _heian;
begin
   if This_Player.MyLFnum >= 50 then
   begin
   if This_Player.Level >= 45 then
   begin
   This_Player.Flyto('f011',84 ,118);
   This_Npc.NpcNotice(This_Player.Name + 'ǰ������ս��,Ѱ�Ҵ�˵�еĻƽ�����ȥ�ˣ�');
  begin
    This_Player.DecLF(0, 50, false); 
   end;
  end 
  else  
  begin
   This_Npc.NpcDialog(This_Player,
   '��ĵȼ�����45������ǰ����'
   );   
  end;  
 end 
 else
 begin
   This_Npc.NpcDialog(This_Player,
   '������㡣'
   ); 
    end;
    end;

begin
 // This_Npc.showbook(This_Player, 1, 0, '@gowolong'); 
  This_Npc.NpcDialog(This_Player,
   '����ս����ÿ6Сʱˢ��һֻ��ħ��Ѫ��88888\ \' 
   +'��ħ70-70������100�����Ա�������ƽ�������\'
   +'|1.�ƽ�þ�-����<5-45/c=red>����Ҫ45�����.\'
   +'|2.�Ͻ��Ȼ귨��-ħ��<5-15/c=red>����Ҫ45�����.\'
   +'|3.�����ң��-����<5-15/c=red>����Ҫ45�����.\'
   +'|��Ҫ<45��/c=red>���ϲ��ܽ���,\'
   +'|��������<50���/c=red>,\'
   +'|{cmd}<��ģ���ȥ������/@heian>'
    );  
end.  








   