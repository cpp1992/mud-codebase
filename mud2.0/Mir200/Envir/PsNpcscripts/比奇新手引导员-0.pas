{
*******************************************************************}

Program Mir2;



Procedure _doexit;
begin
   This_NPC.CloseDialog(This_Player);
end;

Procedure _shuoming;
begin
   This_NPC.NpcDialog(This_Player,
   '|{cmd}<����ʹ���̳�Ԫ��/@yuanbao>\'+
   '|{cmd}<����ǰ�����/@tianguan>\'+
   '|{cmd}<����/@main>');
end;

Procedure _yuanbao;
begin
   This_NPC.NpcDialog(This_Player,
   '�����������ġ����̡���ť�����Խ��봫�����̡�\'+
   '��ֵ�����Ԫ���������������й�������������̳ǵ��ߡ�\'+
   '|{cmd}<����/@shuoming>');
end;

Procedure _tianguan;
begin
   This_NPC.NpcDialog(This_Player,
   'ͨ���귨��½���ص��ϱ�����ǰ����ͥ��\'+
   '����ͥ�����Ի�������ʹ����ʿ����������ǰ����ء�\'+
   '����һ�Σ���ʿ���е������Ӧ�Ŀ۳�һ�š�\'+
   '|{cmd}<����/@shuoming>');
end;

Procedure _howuse;
begin
   This_NPC.NpcDialog(This_Player,
   '����һ������Ŀ�Ƭ����ר��Ϊ��������������׼���ġ�\'+
   '��22��֮ǰ���԰����㾡��ĳɳ�����Ҳ�������귨�˵���Ը��\'+
   '��ʿ������һЩ��Ӳӵġ�Ԫ�����������ڴ��������й�����Ʒ��\'+
   '���Ƕ�����ȫ��ѵģ��ܿ����֪�����ǵĴ���;�ˣ�\'+
   '���õ������Ǻܿ���ù⣬��Ϊÿ����ĵȼ�������һ���׶Σ�\'+
   '��ʿ���ڵ�Ԫ���������᲻�����ӡ�\'+
   '���ڻ�����һЩ�������������ֵķ��䣬�귨�˽������������\'+
   'ʹ���������Σ�����صġ���ء��������㾭��ĥ���ĵ�һ����\'+
   '|{cmd}<����/@shuoming>');
end;

Procedure _guize;
begin
   This_NPC.NpcDialog(This_Player,
   '1) Ŀǰ����ʿ��ֻ����1-21��ʹ�á�\'+
   '�ﵽ22��֮����ʿ��������ʾ������Ԫ�����������ҲͬʱʧЧ��\'+
   '2) ��ʿ����Ԫ���������������ض����̳ǵ��ߡ�\'+
   '��������������½ǵġ��̡���ť���ɽ������̹�����Ӧ���ߡ�\'+
   '3) ��ʿ���е�Ԫ��ֻ�ܱ���ʹ�ã����޷����ס�\ \'+
   '|{cmd}<��һҳ/@nextpage>                               ^<����/@shuoming>');
end;

Procedure _nextpage;
begin
   This_NPC.NpcDialog(This_Player,
   '4) ������ȼ�����������ʿ���е�Ԫ�����Ҳ����֮���ӡ�\'+
   '����ʿ����Ԫ���Ķ�ȿ����ۻ���\'+
   '��һ����ȵ�Ԫ�����������ۼƵ���һ����ȣ�ֱ����ﵽ22����\'+
   '5) ����ͬʱӵ����ʿ����Ԫ���ͳ�ֵԪ��������£�\'+
   '�����̳ǵ��߽�����ʹ����ʿ����Ԫ����\ \'+
   '|{cmd}<��һҳ/@nextpage2>                              ^<��һҳ/@guize>');
end;

Procedure _nextpage2;
begin
   This_NPC.NpcDialog(This_Player,
   '6) ��ʿ����Ԫ����ֻ�ܹ�������ָ�����̳ǵ��ߣ�\'+
   '��Ѫʯ(��)    ��ħʯ(��)    ˫���ؼ�\'+
   '��Ѫʯ(��)    ��ħʯ(��)    ˫������\'+
   '��Ѫʯ(С)    ��ħʯ(С)    ˫������\'+
   'ħѪʯ(��)    �޸���ˮ        ����س�ʯ\'+
   '7) ��ʿ�������������������أ�����ͥ�ڵ���ͥ�����Ի���\'+
   '���ɽ��롣\ \'+
   '|{cmd}<������һҳ/@nextpage>');
end;

Procedure _shengji;
begin
   This_NPC.NpcDialog(This_Player,
   '1���� ��ʿ����Ԫ�� 2��\'+
   '17������ʿ����Ԫ�� 4��\'+
   '21������ʿ����Ԫ�� 6��        ��ʿ�������  1��\ \'+
   '|{cmd}<����/@shuoming>');
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
   end; }
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
   if This_Player.Level >= 23 then
   begin
      This_NPC.NpcDialog(This_Player,
      '��λ��ʿ����������Ѿ��õ���������\'+
      '�����Ѿ������ʺ��㣬�����ǰ����һ������������������\ \'+
      '|{cmd}<����/@gointo>');
   end else if This_Player.Level >= 15 then
   begin
      if compareText(This_Player.MapName,'0') = 0 then
         This_Player.RandomFlyTo('n102');
   end else
   begin
      This_NPC.NpcDialog(This_Player,
      '��λ��ʿ�����������������������������˵̫Σ���ˣ�\'+
      '�����ڿ�����ȥ����ɽ�Ȼ��߽߱�ɽ�帽������������');
   end;
end;

Procedure _sdhero;
begin
   This_NPC.NpcDialog(This_Player,
   'ֻҪ��ﵽ11�����Ϳ���ͨ��������е�֮��ȥ֮�أ�\'+
   '�������ҵ�ʥ��ʹ���˽��ѧϰ�ڹ���\'+
   'ͬ������Ҳ���Դ����ѧ���ڹ���\'+
   '��Ȼ����Ҳ����ͨ��ȥѰ�Ҹ߼�սʿ���߼�ħ��ʦ�Լ��߼���ʿ��\'+
   'ͨ�����ǵĿ�����ѧϰ�ڹ���\ \'+
   '|{cmd}<����/@main>');
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
      '|{cmd}<�ĸ��־������ʽ/c=red>��\ \'+
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


procedure domain;
var
  BXS102, BXS101 : integer;
begin
   BXS102 := This_Player.GetV(102,1);
   BXS101 := This_Player.GetV(101,1);
   if ((BXS102 >= 5) and (BXS102 <= 6)) or ((BXS101 >= 2) and (BXS101 <= 4)) then
   begin
      This_NPC.NpcDialog(This_Player,
      'Ϊ�˵��������˾��ŵ�Ϯ���������ر𿪱ٵ���ʿ��������\'+
      '��45��������ʿ���Դ��������������������������\'+
      'Ϊ�˴�ҵİ�ȫ��ÿ�ν�����������Ҫ��ʿ������Я��ҩƷ��\ \'+
      '|{cmd}<��Ҫ��������/@gointo>\'
      //+'|{cmd}<�ɳ�������γ�Ϊ�귨��ʿ/@ExtraBQSD>\'
      );
   end else
   begin
      if This_Player.Level >= 46 then
      begin
         This_NPC.NpcDialog(This_Player,
         '֪������µ����أ��й����ٻԻ͵���ʷ��\'+
         '��������������Ͱ���������������\'+
         '����Ҳ��Ψһû�б������˹��Ƶĳǳء�\'+
         'һ�����������������ɳ���\'+
         '��������һ�죬��Ҳ���Ϊ���е�һԱ��\');
      end else
      begin
         This_NPC.NpcDialog(This_Player,
         'Ϊ�˵��������˾��ŵ�Ϯ���������ر𿪱ٵ���ʿ��������\'+
         '��45��������ʿ���Դ��������������������������\'+
         'Ϊ�˴�ҵİ�ȫ��ÿ�ν�����������Ҫ��ʿ������Я��ҩƷ��\ \'+
         '|{cmd}<��Ҫ��������/@gointo>\');
      end;
   end;
end;

Procedure _ENSGoZY;
var
f : integer;
Begin
   if This_Player.GetBagItemCount('��ʦ��') < 1 then
   begin
     This_Npc.NpcDialog(This_Player,
     '��û�ж�ʦ�����Ҳ�������ȥׯ԰.');
   end else 
   begin
     if compareText(This_Player.MapName, '0') = 0 then
     begin
      f := random(5);
      if  f = 4 then
      begin
        This_Player.Flyto('GA0',70,71);
      end;
      if  f = 3 then
      begin
        This_Player.Flyto('GA0',73,64);
      end;
        if  f = 2 then
      begin
        This_Player.Flyto('GA0',73,69);
      end;
      if  f = 1 then
      begin
        This_Player.Flyto('GA0',62,72);
      end;  
      if  f = 0 then
      begin
        This_Player.Flyto('GA0',61,64);
      end;
     end;
   end;
end;

procedure _lingyi();
begin
  This_Npc.NpcDialog(This_Player,
  '����ǰ����ȡ��ʩ���İɣ������ϸ��㣬����\'
  +'������Ԥ���㹻�İ����ռ䣬���򣬲���������ȡ�ɲ�Ҫ����Ŷ��\ \'
  +'��ȷ�����㹻�����ռ䣬<��ȡ��ʦ��/@ReqPodPrize>\ \'
  );
end;

procedure _ReqPodPrize();
begin
  //��ȡ����� 
  This_Npc.ReqPopGift(This_Player);
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

begin
   domain;
end.