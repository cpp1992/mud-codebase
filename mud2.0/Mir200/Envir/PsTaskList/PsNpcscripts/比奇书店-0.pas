{
*******************************************************************}

program mir2;

{$I common.pas}

procedure _DoExit;
begin
  This_Npc.CloseDialog(This_Player);
end;

//==============================================================�������� 
procedure dorenwu11;
begin
  This_Npc.NpcDialog(This_Player,
  '��Ҫ֪�������ļ��ɣ��ܼ򵥣��������ж��ֶ����ļ����鼮��\'+
  '����԰�������ȼ���ѡһ������������û�У�Ҳ����ȥ����\'+
  '(���桢���ء�������)������ϰ崦��Ѱ��������ְҵ�ļ����飬\'+
  '���������������������������������Ϊ����ȥ�������\'+
  'ɱ10�������˰ɣ�\ \'+
  '|{cmd}<�ҽ���(����)/@renwu12>'
  );
end;

procedure dorenwu12;
begin
 if (This_Player.GetV(102,1)=7) then
 begin
 This_Npc.NpcDialog(This_Player,
 '���ˣ�ȥ�������<ɱ10��������/c=red>ʱ���ס�������ˣ�\'+
 '���Ǻ���Ƿǳ�Σ�յģ�����ʱ����ҩƷ�����⣬\'+
 '�ڳ���Ĺ���ᾭ������һЩװ���������л����ã�\'+
 '���Ը������ԣ�ѡ���Լ�����������̵��ȡ��ҡ�ף����ˣ�\ \'+
 '|{cmd}<�ҽ���(����)/@renwu13>'
 );
 end else
 begin
 This_Player.Give('����',5000)
 This_Player.SetV(102,1,7);
 This_Player.UpdateTaskDetail(102,1);
 This_Npc.NpcDialog(This_Player,
 '���ˣ�ȥ�������<ɱ10��������/c=red>ʱ���ס�������ˣ�\'+
 '���Ǻ���Ƿǳ�Σ�յģ�����ʱ����ҩƷ�����⣬\'+
 '�ڳ���Ĺ���ᾭ������һЩװ���������л����ã�\'+
 '���Ը������ԣ�ѡ���Լ�����������̵��ȡ��ҡ�ף����ˣ�\ \'+
 '|{cmd}<�ҽ���(����)/@renwu13>'
 );
 end;
end;

procedure _renwu12;
begin
 if (This_Player.GetV(102,1)=7) then
 begin
 This_Npc.NpcDialog(This_Player,
 '���ˣ�ȥ�������<ɱ10��������/c=red>ʱ���ס�������ˣ�\'+
 '���Ǻ���Ƿǳ�Σ�յģ�����ʱ����ҩƷ�����⣬\'+
 '�ڳ���Ĺ���ᾭ������һЩװ���������л����ã�\'+
 '���Ը������ԣ�ѡ���Լ�����������̵��ȡ��ҡ�ף����ˣ�\ \'+
 '|{cmd}<�ҽ���(����)/@renwu13>'
 );
 end else
 begin
 This_Player.Give('����',10000)
 This_Player.SetV(102,1,7);
 This_Player.UpdateTaskDetail(102,1);
 This_Npc.NpcDialog(This_Player,
 '���ˣ�ȥ�������<ɱ10��������/c=red>ʱ���ס�������ˣ�\'+
 '���Ǻ���Ƿǳ�Σ�յģ�����ʱ����ҩƷ�����⣬\'+
 '�ڳ���Ĺ���ᾭ������һЩװ���������л����ã�\'+
 '���Ը������ԣ�ѡ���Լ�����������̵��ȡ��ҡ�ף����ˣ�\ \'+
 '|{cmd}<�ҽ���(����)/@renwu13>'
 );
 end;
end;

procedure dorenwu13;
begin
 This_Npc.NpcDialog(This_Player,
 '�����ڸϽ�ȥ��������10�������˰ɣ�\ \ \'+
 '|{cmd}<�����ȥ(����)/@doexit>\'
 );
end;


procedure _renwu13;
begin
if (This_Player.GetV(102,1)=8) then
 begin
  This_Npc.NpcDialog(This_Player,
 '�����ڸϽ�ȥ��������10�������˰ɣ�\ \ \'+
 '|{cmd}<�����ȥ(����)/@doexit>\'
 );
 end else
 begin
  This_Player.SetV(102,1,8);        //������
  This_Player.UpdateTaskDetail(102,1);
  This_Player.SetV(102,2,0);
  This_Player.Give('����',5000);
  This_Npc.CloseDialog(This_Player);
  //�Զ�Ѱ·������ 
 end;  
end;

procedure dorenwu14;
begin
 This_Npc.NpcDialog(This_Player,
 '��ô���ɱ���������ˣ�<�ֿⱣ��Ա/c=red>���������Щ�鷳�£�\'+
 '��ȥ�����ܲ��ܰ������ɡ�\ \'+
 '|{cmd}<�ҽ���(����)/@renwu15>\ \'
 );
end;

procedure _renwu15;
begin
 if (This_Player.GetV(102,1)=10) then
 begin
  This_Npc.NpcDialog(This_Player,
 '���ˣ�<�ֿⱣ��Ա/c=red>���������Щ�鷳�£�\'+
 '��ȥ�����ܲ��ܰ������ɡ�\ \ \'+
 '|{cmd}<�����ȥ(����)/@doexit>\'
 );
 end else
 begin
  This_Player.SetV(102,1,10);        //������
  This_Player.UpdateTaskDetail(102,1);
  This_Player.Give('����',10000);
  This_Npc.CloseDialog(This_Player);
  //This_player.AutoGotoMap('0',300,257);   //�Զ�Ѱ·�ֿ� 
 end;  
end; 

procedure dorenwu15;
begin
  This_Npc.NpcDialog(This_Player,
 '���ˣ�<�ֿⱣ��Ա/c=red>���������Щ�鷳�£�\'+
 '��ȥ�����ܲ��ܰ������ɡ�\ \ \'+
 '|{cmd}<�����ȥ(����)/@doexit>\'
 );
end;

//==============================================================�������� 

Procedure domain;
var
  CZRW102 : integer;
begin
   CZRW102 := This_Player.GetV(102,1);
   if (CZRW102 >= 6) and (CZRW102 <= 10) then
   begin
      if This_Player.Level >= 22 then
      begin
         This_Npc.NpcDialog(This_Player,
         '��ӭ��������Щ����������\ \'
         +'|{cmd}<����/@buy>  \'
         +'|{cmd}<����/@sell>   \'
         +'|{cmd}<ѯ�ʸ����似��ϸ��/@helpbooks> \ \'
         //+'|{cmd}<�ɳ�������γ�Ϊ�귨��ʿ/@ExtraBQSD>'
         );
      end else
      begin
         This_Npc.NpcDialog(This_Player,
         '��ӭ��������Щ����������\ \'
         +'|{cmd}<����/@buy>  \'
         +'|{cmd}<����/@sell>  \'
         +'|{cmd}<ѯ�ʸ����似��ϸ��/@helpbooks> \ \'
         //+'|{cmd}<�ɳ�������γ�Ϊ�귨��ʿ/@ExtraBQSD>'
         );         
      end;
   end else
   begin
      if This_Player.Level >= 22 then
      begin 
         This_Npc.NpcDialog(This_Player,
         '��ӭ��������Щ����������\ \'
         +'|{cmd}<����/@buy>  \'
         +'|{cmd}<����/@sell>   \'
         +'|{cmd}<ѯ�ʸ����似��ϸ��/@helpbooks> \');
      end else 
      begin
         This_Npc.NpcDialog(This_Player,
         '��ӭ��������Щ����������\ \'
         +'|{cmd}<����/@buy>  \'
         +'|{cmd}<����/@sell>   \'
         +'|{cmd}<ѯ�ʸ����似��ϸ��/@helpbooks>         \');
      end;
   end;
end;

Procedure _FiveYBHBao;
begin
   This_Npc.NpcDialog(This_Player,
   '��������һ�λ����ó�ֵ���ִ������<˫������/c=red>��\'+
   '|{cmd}<ħѪʯ(��)�Լ�8����ʱ���/c=red>��\'+
   '�ܹ�<��ֵ38Ԫ��/c=red>�ĳ�ֵ�ػݴ���һ�����͸��㣡\'+
   '�����ֻ<�ɻ��һ��/c=red>���ȼ�����<22��/c=red>��������ȡ�\ \'+
   '|{cmd}<ʹ��5Ԫ����ȡ��ֵ���ִ����/@FiveYBHBao_01>');
   
   if This_Player.GetV(111,4) = 1 then
   begin
      if This_Player.SetV(111,4,10) then
      begin
         This_Player.Give('����',10000);
         This_Player.PlayerNotice('���Ѿ�����˳ɳ�֮·�����ִ��������',2);
         //#This_Player.DeleteTaskFromUIList(1004);
      end;
   end;   
end;

Procedure _FiveYBHBao_01;
begin
   if This_Player.GetV(16,96) = 100 then
   begin
      This_NPC.NpcDialog(This_Player,
      '��ֻ��һ�λ��������ִ�����������ظ���ȡ��');
   end else if This_Player.FreeBagNum < 5  then
   begin
      This_NPC.NpcDialog(This_Player,
      '��İ���̫���������������5������λ֮��������ȡ��');
   end else if not This_Player.NewBieGiftConsume then
   begin
      This_NPC.NpcDialog(This_Player,
      '���Ԫ������.');
   end;  
end;

Procedure NewBieGiftConsumeOK;
begin  
   //This_Player.Give('������(С)',1);
   This_Player.Give('˫������',1);
   //This_Player.Give('�������',1);
   //This_Player.Give('����Կ��',1);
   This_Player.Give('ħѪʯ(��)',1);
   This_Player.AddLimLF(0,8);
   This_Player.SetV(16,96,100);
   This_NPC.CloseDialog(This_Player);
end;

procedure _ExtraBQSD;
var
  CRW102 : integer;
begin
   CRW102 := This_Player.GetV(102,1);
   if CRW102 = 10 then
   begin
      dorenwu15;
   end
   else if CRW102 = 9 then
   begin
      dorenwu14;
   end
   else if CRW102 = 8 then
   begin
      dorenwu13;
   end
   else if CRW102 = 7 then
   begin
     dorenwu12;
   end
   else if CRW102 = 6 then
   begin
     dorenwu11;
   end;
end;

procedure _buy;
begin
  This_Npc.NpcDialog(This_Player, 
    '��ѡ������Ҫ����顣\ \ \|{cmd}<����/@main>');
  This_Npc.Click_Buy(This_Player);
end;

procedure _Sell;
begin
  This_Npc.NpcDialog(This_Player, 
    '���ҿ�������顣\ \ \|{cmd}<����/@main>'
  );
  This_Npc.Click_Sell(This_Player);
end;

procedure _drink;
begin
  This_Npc.NpcDialog(This_Player, 
    '����Ϊ�˵ֿ������˵����ԣ��귨�˴�ңԶ�Ķ���������һ����ʿ��\���Ƴ�һ�����⼼�ܣ��������⼼�ܵ��������������󽫻�������\�������һ�����Ե�����������������֮�����ڣ����������״̬\ʱ�ܹ���ǿ�������������ǿս������������ʷ�����ӣ��귨�����\�������Ȿ��������������ã������ھͿ���ȥ����������ϰ壬\�����԰���ѧϰ������ܡ�\'
    );
end;

procedure _helpbooks;
begin
  This_Npc.NpcDialog(This_Player, 
    '������������Ȥ��\ \��ʿ����ѧ<��������/@help11>��<��ɱ����/@help12>\ħ��ʦ����ѧ<������/@help21>��<�����/@help22>\��ʿ����ѧ<������/@help31>,<������ս��/@help32>��<ʩ����/@help33>\ \ |{cmd}<����/@main>'
    );
end;

procedure _help11;
begin
  This_Npc.NpcDialog(This_Player, 
    '������������԰����²���������\Lv.1 : ������ڵ� 7 ����ʼ����\Lv.2 : ������ڵ� 11 ����ʼ����\Lv.3 : ������ڵ� 16 ����ʼ����\ \ |{cmd}<����/@helpbooks>'
    );
end;

procedure _help12;
begin
  This_Npc.NpcDialog(This_Player, 
    '��ɱ��������԰����²���������\Lv.1 : ������ڵ� 19 ����ʼ������\Lv.2 : ������ڵ� 22 ����ʼ������\Lv.3 : ������ڵ� 24 ����ʼ������\ \ |{cmd}<����/@helpbooks>'
    );
end;

procedure _help21;
begin
  This_Npc.NpcDialog(This_Player, 
    '����������԰����²���������\Lv.1: ������ڵ� 7 ����ʼ������\Lv.2: ������ڵ� 11 ����ʼ������\Lv.3: ������ڵ� 16 ����ʼ������\ \ |{cmd}<����/@helpbooks>'
    );
end;

procedure _help22;
begin
  This_Npc.NpcDialog(This_Player, 
    '���������԰����²���������\Lv.1: ������ڵ� 19 ����ʼ������\Lv.2: ������ڵ� 23 ����ʼ������\Lv.3: ������ڵ� 25 ����ʼ������\ \ |{cmd}<����/@helpbooks>'
    );
end; 

procedure _help31;
begin
  This_Npc.NpcDialog(This_Player, 
    '����������԰����²���������\Lv.1 : ������ڵ� 7 ����ʼ����.\Lv.2 : ������ڵ� 11 ����ʼ����.\Lv.3 : ������ڵ� 16 ����ʼ����.\ \ |{cmd}<����/@helpbooks>'
    );
end;

procedure _help32;
begin
  This_Npc.NpcDialog(This_Player, 
    '������ս������԰����²���������\Lv.1 : ������ڵ� 9 ����ʼ����.\Lv.2 : ������ڵ� 13 ����ʼ����.\Lv.3 : ������ڵ� 19 ����ʼ����.\ \ |{cmd}<����/@helpbooks>'
    );
end;

procedure _help33;
begin
  This_Npc.NpcDialog(This_Player, 
    'ʩ��������԰����²���������\Lv.1 : ������ڵ� 14 ����ʼ����.\Lv.2 : ������ڵ� 17 ����ʼ����.\Lv.3 : ������ڵ� 20 ����ʼ����.\ \ |{cmd}<����/@helpbooks>'
    );
end;

//��ʼ������
procedure OnInitialize;
begin
  This_Npc.AddStdMode(3);
  This_Npc.AddStdMode(4);
  This_NPC.FillGoods('������', 100, 1);
  This_NPC.FillGoods('������', 100, 1); 
  This_NPC.FillGoods('��������', 100, 1);
  This_NPC.FillGoods('������ս��', 100, 1);
  This_NPC.FillGoods('ʩ����', 100, 1);
  This_NPC.FillGoods('�����', 100, 1);
  This_NPC.FillGoods('���ܻ�', 100, 1);
  This_NPC.FillGoods('�����', 100, 1);
  This_NPC.FillGoods('�׵���', 100, 1);
  This_NPC.FillGoods('��ɱ����', 100, 1);
  This_NPC.FillGoods('��ɱ����', 100, 1); 
  This_NPC.FillGoods('�����䵶', 100, 1);
  This_NPC.FillGoods('Ұ����ײ', 100, 1);
 
  This_NPC.FillGoods('�ٻ�����', 100, 1);
  This_NPC.FillGoods('������', 100, 1);
  This_NPC.FillGoods('����������', 100, 1);
  This_NPC.FillGoods('�����', 100, 1);
  This_NPC.FillGoods('��ʥս����', 100, 1);
  This_NPC.FillGoods('������ʾ', 100, 1);
  This_NPC.FillGoods('��ħ��', 100, 1); 
  This_NPC.FillGoods('Ⱥ��������', 100, 1);
 
  This_NPC.FillGoods('�ջ�֮��', 100, 1);
  This_NPC.FillGoods('������', 100, 1);
  This_NPC.FillGoods('˲Ϣ�ƶ�', 100, 1);
  This_NPC.FillGoods('���ѻ���', 100, 1);
  This_NPC.FillGoods('��ǽ', 100, 1);
  This_NPC.FillGoods('�����Ӱ', 100, 1);
  This_NPC.FillGoods('�����׹�', 100, 1);
  This_NPC.FillGoods('ħ����', 100, 1);
  This_NPC.FillGoods('ʥ����', 100, 1);

  This_Npc.SetRebate(100);
end;

//�ű�ִ�е����
begin
  domain;
end.    