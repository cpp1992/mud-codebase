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

Procedure domain;
begin
   if This_Player.GetS(80,7) <> 2016 then
   begin
   This_NPC.NpcDialog(This_Player,
   '��ӭ��������Щ����������\ \'
   +'|{cmd}<����/@buy>                     \'   //^<�������/@NewComeBag> 
   +'|{cmd}<����/@sell>   \'
   +'|{cmd}<ѯ�ʸ����似��ϸ��/@helpbooks>  \'
   +'|{cmd}<ȡ��/@exit>'
   );
   end else
   This_NPC.NpcDialog(This_Player,
   '��ӭ��������Щ����������\ \'
   +'|{cmd}<����/@buy>                    \'
   +'|{cmd}<����/@sell>   \'
   +'|{cmd}<ѯ�ʸ����似��ϸ��/@helpbooks>  \'
   +'|{cmd}<ȡ��/@exit>'
   );
end;

procedure _NewComeBag;
begin
   This_Npc.NpcDialog(This_Player,
   '�٣������ˣ���ӭ���������档�������ǣ�����������ҡ�\'
   +'��Ϊ��׼����һ�������ֻ��Ҫ����8Ԫ���Ϳ����õ����ˡ�\'
   +'�������<�������ʯ(��)�����洫��ʯ(��)�����ش���ʯ(��)/c=red>\'
   +'<��2������ˮ��/c=red>��\'
   +'ÿ��ֻ�ɻ��һ�ݣ�������ʧ��ʧ�����������ǿ��ǰɡ� \ \' 
   +'|{cmd}<ʹ��8Ԫ������/@NewComeBag_1>\'
   +'|{cmd}<����/@main>'
   );
end;  

procedure _NewComeBag_1;
begin
   if This_Player.GetS(80,7) <> 2016 then
   begin
     if This_Player.FreeBagNum > 3 then
     begin
       This_Player.PsYBConsum(This_NPC,'YB_NewComeBag',20157,8,1);    
     end else
     begin
       This_Npc.NpcDialog(This_Player,
       '��İ������ˣ�����Ԥ��4�����ϰ����ռ��������Ұɣ�'
       ); 
     end;
   end;
end;

function YB_NewComeBag(price, num: Integer):boolean;
begin
  This_Player.SetS(80,7,2016); 
  This_Player.Give('�������ʯ(��)',1);
  This_Player.Give('���洫��ʯ(��)',1);
  This_Player.Give('���ش���ʯ(��)',1);
  This_Player.Give('����ˮ��',2);
  This_Player.IncActivePoint(8);  //���ӻ�Ծ��8��
  This_Npc.NpcDialog(This_Player,
  '�����ˣ��������ʯ(��)�����洫��ʯ(��)�����ش���ʯ(��)\'+
  '��2������ˮ����'
  ); 
end;


Procedure _sell;
begin
   This_Npc.NpcDialog(This_Player,
   '���ҿ�������顣\ \ \'+
   '|{cmd}<����/@main>');
   This_Npc.Click_Sell(This_Player);
end;



Procedure _buy;
Begin
   This_Npc.NpcDialog(This_Player,
   '��ѡ������Ҫ����顣\ \ \'+
   '|{cmd}<����/@main>');
   This_Npc.Click_Buy(This_Player);
end;


procedure _helpbooks;
begin
   This_NPC.NpcDialog(This_Player,
   '������������Ȥ��\ \'
   +'��ʿ����ѧ<��������/@help11>��<��ɱ����/@help12>\'
   +'ħ��ʦ����ѧ <������/@help21>, <�����/@help22>,\'
   +'<���ѻ���/@help23>��<�׵���/@help24>,\'
   +'��ʿ����ѧ<������/@help31>,<������ս��/@help32>,\'
   +'<ʩ����/@help33>\ \'
   +'|{cmd}<����/@main>'
   
   
   
   );

end;

procedure _help11;
begin

   This_NPC.NpcDialog(This_Player,
   '������������԰����²���������\'
   +'|Lv.1 : ������ڵ� 7 ����ʼ����\'
   +'|Lv.2 : ������ڵ� 11 ����ʼ����\'
   +'|Lv.3 : ������ڵ� 16 ����ʼ����\\'
   +'|{cmd}<����/@helpbooks>'
   
   
   
   
   
   );

end;

procedure _help12;
begin
   This_NPC.NpcDialog(This_Player,
   '��ɱ��������԰����²���������\'
   +'|Lv.1 : ������ڵ� 20 ����ʼ������\'
   +'|Lv.2 : ������ڵ� 22 ����ʼ������\'
   +'|Lv.3 : ������ڵ� 24 ����ʼ������\\'
   +'|{cmd}<����/@helpbooks>'
   
   
   
   
   
   );

end;

procedure _help21;
begin

   This_NPC.NpcDialog(This_Player,
   '����������԰����²���������\'
   +'|Lv.1: ������ڵ� 7 ����ʼ������\'
   +'|Lv.2: ������ڵ� 11 ����ʼ������\'
   +'|Lv.3: ������ڵ� 16 ����ʼ������\\'
   +'|{cmd}<����/@helpbooks>'
   
   
   
   
   
   );

end;

procedure _help22;
begin
   This_NPC.NpcDialog(This_Player,
   '���������԰����²���������\'
   +'|Lv.1: ������ڵ� 19 ����ʼ������\'
   +'|Lv.2: ������ڵ� 23 ����ʼ������\'
   +'|Lv.3: ������ڵ� 25 ����ʼ������\\'
   +'|{cmd}<����/@helpbooks>'
   
   
   
   
   
   );

end;

procedure _help23;
begin
   This_NPC.NpcDialog(This_Player,
   '���ѻ�������԰����²���������\'
   +'|Lv.1: ������ڵ� 22 ����ʼ������\'
   +'|Lv.2: ������ڵ� 27 ����ʼ������\'
   +'|Lv.3: ������ڵ� 31 ����ʼ������\\'
   +'|{cmd}<����/@helpbooks>'
   
   
   
   
   
   );

end;

procedure _help24;
begin
   This_NPC.NpcDialog(This_Player,
   '�׵�������԰����²���������\'
   +'|Lv.1: ������ڵ� 17 ����ʼ������\'
   +'|Lv.2: ������ڵ� 20 ����ʼ������\'
   +'|Lv.3: ������ڵ� 23 ����ʼ������\\'
   +'|{cmd}<����/@helpbooks>'
   
   
   
   
   
   );

end;

procedure _help31;
begin
   This_NPC.NpcDialog(This_Player,
   '����������԰����²���������\'
   +'|Lv.1 : ������ڵ� 7 ����ʼ����.\'
   +'|Lv.2 : ������ڵ� 11 ����ʼ����.\'
   +'|Lv.3 : ������ڵ� 16 ����ʼ����. \\'
   +'|  <����/@helpbooks>'
   
   
   
   
   
   );

end;

procedure _help32;
begin
   This_NPC.NpcDialog(This_Player,
   '������ս������԰����²���������\'
   +'|Lv.1 : ������ڵ� 9 ����ʼ����.\'
   +'|Lv.2 : ������ڵ� 13 ����ʼ����.\'
   +'|Lv.3 : ������ڵ� 19 ����ʼ����.\\'
   +'|{cmd}<����/@helpbooks>'
   
   
   
   
   
   );

end;

procedure _help33;
begin
   This_NPC.NpcDialog(This_Player,
   'ʩ��������԰����²���������\'
   +'|Lv.1 : ������ڵ� 14 ����ʼ����.\'
   +'|Lv.2 : ������ڵ� 17 ����ʼ����.\'
   +'|Lv.3 : ������ڵ� 20 ����ʼ����.\\'
   +'|{cmd}<����/@helpbooks>'
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
  This_NPC.FillGoods('�����', 100, 1);
  This_NPC.FillGoods('��ɱ����', 100, 1);
  This_NPC.FillGoods('ʩ����', 100, 1);
  This_NPC.FillGoods('���ܻ�', 100, 1);
  This_NPC.FillGoods('������', 100, 1);
  This_NPC.FillGoods('�׵���', 100, 1);
  This_NPC.FillGoods('�����Ӱ', 100, 1);
  This_NPC.FillGoods('�����', 100, 1);
  This_NPC.FillGoods('�����', 100, 1);
  This_NPC.FillGoods('��ʥս����', 100, 1);
  This_NPC.FillGoods('��ɱ����', 100, 1);
  This_NPC.FillGoods('��ħ��', 100, 1);
  This_NPC.FillGoods('�ٻ�����', 100, 1);
  This_NPC.FillGoods('������', 100, 1);
  This_NPC.FillGoods('����������', 100, 1);
  This_NPC.FillGoods('�ջ�֮��', 100, 1);
  This_NPC.FillGoods('˲Ϣ�ƶ�', 100, 1);
  This_NPC.FillGoods('��ǽ', 100, 1);
  This_NPC.FillGoods('���ѻ���', 100, 1);
  This_NPC.FillGoods('�����׹�', 100, 1);
  This_NPC.FillGoods('�����䵶', 100, 1);
  This_NPC.FillGoods('Ұ����ײ', 100, 1);
  This_NPC.FillGoods('������ʾ', 100, 1);
  This_NPC.FillGoods('Ⱥ��������', 100, 1);
  This_NPC.FillGoods('ħ����', 100, 1);
  This_NPC.FillGoods('ʥ����', 100, 1);
  This_Npc.SetRebate(100);
end;

//�ű�ִ�е����
begin
  domain;
end.    