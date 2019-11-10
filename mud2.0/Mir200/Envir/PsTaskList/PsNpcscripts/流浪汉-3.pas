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

procedure _Normal;
begin
  This_Npc.NpcDialog(This_Player, 
  '��ӭ���ҿ���Ϊ����ʲô��\ \'
  +'|{cmd}<������Ʒ/@buy>' + addSpace('', 24) + '^<������Ʒ/@sell>\'
  +'|{cmd}<����ף����/@zhufu_Buy>\'
  +'|{cmd}<�˳�/@doexit>'
  );
end;

procedure _zhufu_Buy;
begin
  This_Npc.NpcDialog(This_Player, 
  '�������кܶ��ף���ͣ���Ҫ����ô��\ \'
  +'|{cmd}<ʹ��1500Ԫ���һ�ף����(50ƿ)/@zhufu_BuyYB>\ \'
  //+'|{cmd}<ʹ��88�𶧶һ�һ��ף����(50ƿ)/@zhufu_BuyJD>\ \'
  +'|{cmd}<����/@Normal>'
  ); 
end;

procedure _zhufu_BuyYB;
begin
   if This_Player.FreeBagNum >= 1 then
    begin
      This_Player.PsYBConsum(This_NPC,'zhufu_YB',20154,1500,1);
    end
    else
    begin
      This_Npc.NpcDialog(This_Player, 
      '��İ����ռ䲻�㣬��������1�����ϵĿռ��������Ұɣ�');
    end; 
end;

function zhufu_YB(price, num: Integer):boolean; 
begin  
  This_Player.Give('ף����',50);
  This_Npc.NpcDialog(This_Player, 
  '��ϲ���ã�ף����x50��\ \'
  +'|{cmd}<����ʹ��1500Ԫ���һ�ף����(50ƿ)/@zhufu_BuyYB>\ \'
 // +'|{cmd}<����ʹ��88�𶧶һ�һ��ף����(50ƿ)/@zhufu_BuyJD>\ \'
  +'|{cmd}<����/@Normal>'
  ); 
  result:= true; 
end;
{
procedure _zhufu_BuyJD;
begin
  if This_Player.FreeBagNum >= 1 then
  begin
    if This_Player.GloryPoint >= 8800 then
    begin
      if This_Player.DecGloryPoint(30086,8800,1,false,'����ף���͹�') then
      begin
      zhufu_YB(88,1);
      end; 
    end else
    begin
      This_Npc.NpcDialog(This_Player, 
      '��Ľ𶧲��������ɶһ���'); 
    end; 
  end
  else
  begin
    This_Npc.NpcDialog(This_Player, 
    '��İ����ռ䲻�㣬��������1�����ϵĿռ��������Ұɣ�');
  end;
end;
       }

procedure _buy;
begin
  This_Npc.NpcDialog(This_Player, 
    '����Ҫ������Ʒ��?\ \ \|{cmd}<����/@main>'
  );
  This_Npc.Click_Buy(This_Player);
end;

procedure _Sell;
begin
  This_Npc.NpcDialog(This_Player, 
    '���ǳ������򣬻���������ᣬ�޸��͵�.\ \ \|{cmd}<����/@main>'
  );
  This_Npc.Click_Sell(This_Player);
end;

procedure _S_Repair;
begin
  This_Npc.NpcDialog(This_Player,
    '����һ� !���̫������...������������Ĳ����������޲���\���۸������ͨ����������\ \ \|{cmd}<����/@main>'
  );
  This_Npc.Click_SRepair(This_Player);
end;

procedure RepairDone;
begin
  This_Npc.NpcDialog(This_Player,
    '��ô�����޺��˰ɣ����������µĻ�ֵǮ��\ \' +
    '|{cmd}<����/@main>'
  );
end;

procedure SRepairDone;
begin
  This_Npc.NpcDialog(This_Player,
    '����ȥ���Ѿ��޺���...\��úõ�ʹ����.\ \' +
    '|{cmd}<����/@main>'
  );
end;



//��ʼ������
procedure OnInitialize;
begin
  This_Npc.AddStdMode(3);
  This_Npc.AddStdMode(25);
  This_NPC.AddStdMode(30);
  This_Npc.FillGoods('�������Ѿ�',1000,1);
  This_Npc.FillGoods('������;�',100,1);
  This_Npc.FillGoods('�л�سǾ�',100,1);
  This_NPC.FillGoods('�����', 10, 1);
  This_NPC.FillGoods('�����(��)', 10, 1);
  This_NPC.FillGoods('���������', 10, 1);
  This_NPC.FillGoods('��ɫҩ��(����)', 1, 1);
  This_NPC.FillGoods('��ɫҩ��(����)', 1, 1); 
  This_NPC.FillGoods('��ɫҩ��(����)', 1, 1);
  This_NPC.FillGoods('��ɫҩ��(����)', 1, 1);
  This_NPC.FillGoods('��ɫҩ��(����)', 10, 1);
  This_NPC.FillGoods('��ɫҩ��(����)', 10, 1);
  This_NPC.FillGoods('������ɫҩ��', 10, 1);
  This_NPC.FillGoods('������ɫҩ��', 10, 1);
  This_Npc.FillGoods('�޸���',50,1);
  This_Npc.FillGoods('�������Ѿ��',100,1);
  This_Npc.FillGoods('������;��',100,1);
  This_Npc.FillGoods('�л�سǾ��',100,1);
  This_Npc.SetRebate(100);
end;


//�ű�ִ�е����
begin
      _Normal;
end.