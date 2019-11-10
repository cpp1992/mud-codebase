{
/***********************************************************************

/************************************************************************}


PROGRAM Mir2;

{$I common.pas}

Procedure _doexit;
begin
   This_Npc.CloseDialog(This_Player);
end;

procedure domain;
begin
  This_Npc.NpcDialog(This_Player,
   '��������Ҫ�ҵİ�����\'+
   '���������������Ʒ����ʲô��Ҫ����ľͽ����Ұɡ�\'+
   '������в�Ҫ����Ʒ����������Ի���\ \'+
   '|{cmd}<��/@buy>                  ^<������Ʒ/@DestoryItem>\'+
   '|{cmd}<��/@sell>                  \'+
   '|{cmd}<����/@repair>                \'+
   '|{cmd}<��������/@s_repair>            \'+
   '|{cmd}<�˳�/@doexit>                '
   );
end;

Procedure _DestoryItem;
begin
   This_NPC.NpcDialog(This_Player,
   '����Ҫ���ٵĶ����Ž�ȥ��������\ \'+
   '|��ע�⣬��Ʒ���ٺ�<��ʧ/c=red>���޷��һأ���<��������/c=red>��\'+
   '|������Ʒ�޷����١�'+
   '|{cmd}<��ʼ����/@DestoryItem_1>                '
   );
end; 

Procedure _DestoryItem_1;
begin
   This_NPC.Click_CommitItem(This_Player,1,'�����ٵ��ߣ�'); 
end; 

//-------------ɾ������-------------------- 

function NotDestroy(iName : string):boolean;
begin
    result := true;
    case iName of
        '����' : result := false;
    end;
end;

procedure CommitItem(AType:word);
begin
    if NotDestroy(This_Item.ItemName) then 
    begin
    This_Player.TakeByClientID(This_Item.ClientItemID);
    This_Player.NotifyClientCommitItem(1,'');
    This_Player.PlayerNotice(''+This_Item.ItemName+'�����١�',2);
    end else 
    This_Player.NotifyClientCommitItem(0,'����Ʒ�������٣���Ͷ������ٵ���Ʒ��'); ; 
         
end;
//----------------------------------------------------------- 


{procedure _xiaohui;
begin
This_NPC.NpcDialog(This_Player,
'����Ҫ���ٵĶ����Ž�ȥ��������\ \'+
'��ע�⣬��Ʒ���ٺ�<��ʧ/c=red>���޷��һأ���<��������/c=red>��\'+
'������Ʒ�޷����١�'
);
This_NPC.Click_DestroyEquip(This_Player);
end;
} 

Procedure _repair;
Begin
   This_Npc.NpcDialog(This_Player,
   '����Ҫ�������ҿ��Ǹ����ܹ���Ŷ��\ \ \'+
   '|{cmd}<����/@main>');
   This_Npc.Click_Repair(This_Player);
end;

procedure RepairDone;
begin
  This_Npc.NpcDialog(This_Player,
    '��ô�����޺��˰ɣ����������µĻ�ֵǮ��\ \' +
    '|{cmd}<����/@main>'
  );
end;

Procedure _s_repair;
Begin
   This_Npc.NpcDialog(This_Player,
   '����һ���̫�����ˣ��������в����������޲���\'+
   '����������ͨ��������\ \'+
   '|{cmd}<����/@main>');
   This_Npc.Click_SRepair(This_Player);
end;

procedure SRepairDone;
begin
   This_Npc.NpcDialog(This_Player,
   '�Ѿ�������ˣ��������ܲ����\' +
   '|{cmd}<����/@main>');
end;

Procedure _sell;
begin
   This_Npc.NpcDialog(This_Player,
   '������Ҫ������Ʒ��\ \ \'+
   '|{cmd}<����/@main>');
   This_Npc.Click_Sell(This_Player);
end;

Procedure _buy;
Begin
   This_Npc.NpcDialog(This_Player,
   '������Щʲô��\ \ \'+
   '|{cmd}<����/@main>');
   This_Npc.Click_Buy(This_Player);
end;


procedure OnInitialize;
var
  i : integer;
begin
  This_Npc.SetRebate(100);
  //���ص���
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
  This_NPC.FillGoods('�����', 10, 1);
  This_NPC.FillGoods('�����(��)', 10, 1);
  This_NPC.FillGoods('���������', 10, 1);
  //����stdmode 
  This_NPC.AddStdMode(0);
  This_NPC.AddStdMode(3); 
  This_NPC.AddStdMode(5);
  This_NPC.AddStdMode(6);
  This_NPC.AddStdMode(10);
  This_NPC.AddStdMode(11);
  This_NPC.AddStdMode(15);
  This_NPC.AddStdMode(16);
  This_NPC.AddStdMode(30);
  This_NPC.AddStdMode(42);
  This_NPC.AddStdMode(43);
  for i := 19 to 28 do
  This_NPC.AddStdMode(i);
end;

Begin
  domain;
end.