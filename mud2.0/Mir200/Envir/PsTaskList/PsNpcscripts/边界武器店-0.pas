{
/*******************************************************************************
}

program mir2;

{$I common.pas}

procedure _DoExit;
begin
  This_Npc.CloseDialog(This_Player);
end;

//==============================================================�������� 

procedure dorenwu7;
begin
 This_Npc.NpcDialog(This_Player,
 '��ҪһЩ�룿 û���⣡�����ҵĻ���ڶ�������ʱ�����ˣ�\'+
 '���ܲ��ܰ���ȥ��һ��<ҩ���ϰ�/c=red>����������������ҵĻ�ƿ����ˡ�\'+
 '��Ѹն���������������Ǹ���ı����˰ɣ�\ \'+ 
 '|{cmd}<�õ� �����ȥ(����)/@renwu8>'
 );
end;

procedure dorenwu8;
begin
 This_Npc.NpcDialog(This_Player,
 '���ܲ��ܰ���ȥ��һ��ҩ���ϰ壬��������������ҵĻ�ƿ����ˡ�\ \ \'+
 '|{cmd}<�����ȥ(����)/@doexit>\'
 );
end;

procedure _renwu8;
begin
if (This_Player.GetV(102,1)=4) then
 begin
  This_Npc.NpcDialog(This_Player,
 '���ܲ��ܰ���ȥ��һ��ҩ���ϰ壬��������������ҵĻ�ƿ����ˡ�\ \ \'+
 '|{cmd}<�����ȥ(����)/@doexit>\'
 );
 end
 else if This_Player.FreeBagNum >3 then
 begin
  This_Player.SetV(102,1,4);        //������
  This_Player.UpdateTaskDetail(102,1);
  This_Player.Give('����',800);
  This_Npc.CloseDialog(This_Player);
  //This_player.AutoGotoMap('0108',7,6);//�Զ�Ѱ·ҩ��
  if This_Player.Job =0 then
   begin
   This_Player.Give('��������',1);
   end else
    if This_Player.Job =1 then
    begin
    This_Player.Give('���ֺ���',1);
    end else
    begin
    This_Player.Give('���ְ���',1);
   end; 
 end else
 begin 
 This_NPC.NpcDialog(This_Player,
 '��������������ı����������ң�\ \'+
 '|{cmd}<�õ�/@doexit>\'
 );
 end;  
end; 
//==============================================================�������� 

procedure domain;
var 
  BWRW102 : integer;
begin
   BWRW102 := This_Player.GetV(102,1);
   if (BWRW102 = 4) or (BWRW102 = 3) then
   begin
      This_Npc.NpcDialog(This_Player,
      '��л�������\ \'
      +'|{cmd}<������/@buy>  \'
      +'|{cmd}<������/@sell>  \'
      +'|{cmd}<��������/@repair> \'
      +'|{cmd}<ѯ������/@qweapon>\'
      +'|{cmd}<��������/@s_repair>                  \'//^<�ɳ�������γ�Ϊ�귨��ʿ/@ExtraBQSD>\'
      +'|{cmd}<�˳�/@doexit>');
   end
   else
   begin
      This_Npc.NpcDialog(This_Player,
      '��л�������\ \'
      +'|{cmd}<������/@buy>  \'
      +'|{cmd}<������/@sell>  \'
      +'|{cmd}<��������/@repair> \'
      +'|{cmd}<ѯ������/@qweapon>\'
      +'|{cmd}<��������/@s_repair>\'
      +'|{cmd}<�˳�/@doexit>');
   end;
end;

procedure _ExtraBQSD;
var 
  BWRW102 : integer;
begin
   BWRW102 := This_Player.GetV(102,1);
   if BWRW102 = 4 then
   begin
      dorenwu8;
   end
   else if BWRW102 = 3 then
   begin
      dorenwu7;
   end;
end;

procedure _buy;
begin
  This_Npc.NpcDialog(This_Player, 
    '������Щʲô������\ \ \|{cmd}<����/@main>'
  );
  This_Npc.Click_Buy(This_Player);
end;

procedure _Sell;
begin
  This_Npc.NpcDialog(This_Player, 
    '������Ҫ����������\ \ \|{cmd}<����/@main>'
  );
  This_Npc.Click_Sell(This_Player);
end;

procedure _Repair;
begin
  This_Npc.NpcDialog(This_Player,
    '��Ҫ����������\������Ҫ�����������\ \|{cmd}<����/@main>'
  );
  This_Npc.Click_Repair(This_Player);
end;

procedure RepairDone;
begin
  This_Npc.NpcDialog(This_Player,
    '�������޺��ˣ���л�´�������\ \|{cmd}<����/@main>'
  );
end;

procedure _S_Repair;
begin
  This_Npc.NpcDialog(This_Player,
    '����һ���̫�����ˣ��������в����������޲�\����������ͨ��3����'
  );
  This_Npc.Click_SRepair(This_Player);
end;

procedure SRepairDone;
begin
  This_Npc.NpcDialog(This_Player,
    '����ȥ���Ѿ��޺���...\��úõ�ʹ����.\ \' +
    '|{cmd}<����/@main>'
  );
end;

procedure _qweapon;
begin
  This_Npc.NpcDialog(This_Player,
  '������������������ֵ�Ƕ�ֵ��\������ħ���ϵ���������ʱ���ݲ�ͬ�����\�������⹦�ܡ�\���������õ��������������ü�Ǯ��\���ˣ������ļ۸����಻ͬ����۸�Ҳ��ͬ��\���Ǵ����ϣ�����Խ��Խ����\ \'
  );
end;

//��ʼ������
procedure OnInitialize;
begin
  This_Npc.AddStdMode(5);
  This_Npc.AddStdMode(6);
  This_Npc.AddStdMode(43);
  This_Npc.FillGoods('ľ��',50,1);
  This_Npc.FillGoods('��ͭ��',50,1);
  This_Npc.FillGoods('����',50,1); 
  This_Npc.FillGoods('ذ��',50,1);
  This_Npc.FillGoods('�̽�',50,1);
  This_Npc.SetRebate(100);
end;

//�ű�ִ�е����
begin
  domain;
end.