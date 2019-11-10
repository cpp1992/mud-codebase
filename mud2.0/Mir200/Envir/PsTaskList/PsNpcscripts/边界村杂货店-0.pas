{
*******************************************************************}


program mir2;

{$I common.pas}

procedure _DoExit;
begin
  This_Npc.CloseDialog(This_Player);
end;

//==============================================================��������
procedure dorenwu5;
begin
   This_Npc.NpcDialog(This_Player,
   '����������������˰ɣ�'+ This_Player.Name + '���������⣬\'+
   '�Լ���Ҫ��ע�ⰲȫ��Ϊ�˰�����������Ϥ����Ļ���\'+
   '����������ʶ��ʶ�����������ǣ���ȥ����<��װ��/c=red>����к���\'+
   '��Щװ��������Ϊ�����͸���ģ�\ \ \'+
   '|{cmd}<�ҽ���(����)/@renwu6>');
end;

procedure dorenwu6;
begin
   This_Npc.NpcDialog(This_Player,
   '��ȥ���ڷ�װ�����к��ɣ�\ \ \'+
   '|{cmd}<�����ȥ(����)/@doexit>\');
end;


procedure _renwu6;
begin
   if This_Player.GetV(102,1) = 2 then
   begin
     This_Npc.NpcDialog(This_Player,
    '��ȥ���ڷ�װ�����к��ɣ�\ \ \'+
    '|{cmd}<�����ȥ(����)/@doexit>\');
   end else
   begin
      if This_Player.FreeBagNum < 5 then
      begin
         This_Npc.NpcDialog(This_Player,
         '��İ���̫���������������5������λ֮���������ҡ�');
      end else
      begin
         This_Player.SetV(102,1,2);        //������
         This_Player.UpdateTaskDetail(102,1);
         This_Player.Give('����',800);
         //This_Player.Give('����',1);
         This_Player.Give('��������',1);
         This_Player.Give('��������',2);
         This_Player.Give('���ֽ�ָ',2);
         This_Player.PlayerNotice('��ȥ�ҷ�װ���ϰ壡', 2);
         This_Npc.CloseDialog(This_Player);
      end;
   end;  
end;

//==============================================================��������
procedure domain;
var
  ZHRW102 : integer;
begin
   ZHRW102 := This_Player.GetV(102,1);
   if (ZHRW102 = 2) or (ZHRW102 = 1) then
   begin
      This_Npc.NpcDialog(This_Player,
      '��л���ҿ���Ϊ����ʲô��\ \'
      +'|{cmd}<������Ʒ/@buy>  \'
      +'|{cmd}<������Ʒ/@sell>  \'
      +'|{cmd}<ѯ����Ʒ��ϸ���/@questionprize>            \'//^<�ɳ�������γ�Ϊ�귨��ʿ/@RWZHExtra>\'
      +'|{cmd}<�˳�/@doexit>');
   end else 
   begin
      This_Npc.NpcDialog(This_Player,
      '��л�� �ҿ���Ϊ����ʲô��\ \'
      +'|{cmd}<������Ʒ/@buy>  \'
      +'|{cmd}<������Ʒ/@sell>  \'
      +'|{cmd}<ѯ����Ʒ��ϸ���/@questionprize>  \'
      +'|{cmd}<�˳�/@doexit>');
   end;
end;

procedure _RWZHExtra;
var
  ZHRW102 : integer;
begin
   ZHRW102 := This_Player.GetV(102,1);
   if ZHRW102 = 2 then
   begin
      dorenwu6;
   end else if ZHRW102 = 1 then
   begin
      dorenwu5;
   end;
end;

procedure _buy;
begin
  This_Npc.NpcDialog(This_Player, 
    '������ʲô��\ \ \|{cmd}<����/@main>'
  );
  This_Npc.Click_Buy(This_Player);
end;

procedure _Sell;
begin
  This_Npc.NpcDialog(This_Player, 
    '������ʲô������\ \ \|{cmd}<����/@main>'
  );
  This_Npc.Click_Sell(This_Player);
end;

procedure _questionprize;
begin
  This_Npc.NpcDialog(This_Player,
  '���ǵ���<�������Ѿ�/@teleport>��\|{cmd}<������;�/@teleport2>��<�޸���/@repairoil> �ȵȡ�\��˵���д����������õ���<�سǾ�/@steleport>��\ \|{cmd}<����/@main>'
  );
end;

procedure _steleport;
begin
  This_Npc.NpcDialog(This_Player,
  '�سǾ��˵����Զ�ŵ�һ��������ᡣ\'+
  '�����ҵ��ǣ������Ѿ���ʧ�ˡ�\'+
  '��������˵��Щ���ﻹ�����־��ᣬ\'+
  '���ʹ������������̷��ش�ׯ��\ \'+
  '|{cmd}<����/@questionprize>'
  );
end;

procedure _teleport;
begin
  This_Npc.NpcDialog(This_Player,
  '�������Ѿ��ǽ��Լ�˲���ƶ�����󾭹��Ĵ�ׯ�������飬\��Ȼ����ȣ�����������������\���Ǿ��Լ�һ�������Ѿ��㹻�ˡ�\ \ |{cmd}<����/@main>'
  );
end;

procedure _teleport2;
begin
  This_Npc.NpcDialog(This_Player,
  '������;����Լ�Ŀǰ���ڵĵ�ͼ��Ҳ�����ڻ��ڵ����棬\�����ƶ����κεط��������顣\���ܱȽ�Σ�գ����ǻ�ʣ�ܶ�ҩ�Ļ���\ʹ����������������а����ġ�\ \ |{cmd}<����/@main>'
  );
end;

procedure _repairoil;
begin
  This_Npc.NpcDialog(This_Player,
  '�޸���������Լ����ŵ��������;������͡�\������Ϊû�����������Ч����\��������������������;�����Խ��Խ�  �\������Ǻܹ������������һ������������\����㳤��ʱ������а�����\ \ |{cmd}<����/@main>'
  );
end; 

//��ʼ������
procedure OnInitialize;
begin
  This_Npc.AddStdMode(3);
  This_Npc.AddStdMode(25);
  This_Npc.AddStdMode(30);
  This_Npc.FillGoods('�������Ѿ�',100,1);
  This_Npc.FillGoods('������;�',100,1);
  This_Npc.FillGoods('�����',100,1); 
  This_Npc.FillGoods('�޸���',50,17);
  This_Npc.FillGoods('�������Ѿ��',100,1);
  This_Npc.FillGoods('������;��',100,1);
  This_Npc.FillGoods('�����(��)',50,1);
  This_Npc.FillGoods('���������',10,1);
  This_Npc.SetRebate(100);
end;

//�ű�ִ�е����
begin
  domain;
end.