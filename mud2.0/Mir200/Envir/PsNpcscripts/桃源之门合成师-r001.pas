{
*******************************************************************}

Program Mir2;

Procedure _doexit;
begin
   This_Npc.CloseDialog(This_Player);
end;

Procedure _helpmakedrug;
Begin
   This_Npc.NpcDialog(This_Player,
   '�ҿ��԰���ϳ�����Ķ�����\ \'+
   '|{cmd}<��Ѫħ��/@make1>\'+
   '|{cmd}<ħѪ��װ/@make2>\'+
   '|{cmd}<��ħ��װ/@make3>\'+
   '|{cmd}<����/@main>');
end;

Procedure _make1;
Begin
   This_Npc.NpcDialog(This_Player,
   '��ϳɳ�Ѫħ����\'+
   '������Ҫһ����ɲ�����������ҩˮ���ٽ�100Ԫ�ֹ��Ѿ����ˡ�\'+
   '�ܲ���Ū����Щ�����Ϳ����Լ��ı����ˣ�\'+
   '�������õ���Ѫħ���ɲ�һ���Ǻ��£� \'+
   '|{cmd}<����/@main>');
end;

Procedure _make2;
Begin
   This_Npc.NpcDialog(This_Player,
   '��ҪħѪ��װ��̫���ˣ�\'+
   'ֻҪ������Ӧ�ĺ�ħ��װ�����ˡ�\'+
   '����������ԭ�е�100Ԫ�ֹ��ѣ���Ҫ����һ��������Ϊ���ꡣ\ \'+
   '|{cmd}<����/@main>');
end;

Procedure _make3;
Begin
   This_Npc.NpcDialog(This_Player,
   '��Ҫ��ħ��װ��̫���ˣ�\'+
   'ֻҪ������Ӧ��ħѪ��װ�����ˡ�\'+
   '����������ԭ�е�100Ԫ�ֹ��ѣ���Ҫ����һ��������Ϊ���ꡣ\ \'+
   '|{cmd}<����/@main>');
end;

Procedure _talkwith;
Begin
   This_Npc.NpcDialog(This_Player,
   'ð���ߣ���������һ��ͨ����һ����������Ĵ��ţ�\'+
   '������δ���������ţ���������Ȼû�в��ƣ�\'+
   'ϣ�����ܹ���������������Ը��\ \'+
   '|{cmd}<����/@main>');
end;

Procedure _makedrug;
Begin
   This_Npc.NpcDialog(This_Player,
   '��ѡ������ϳɵ���Ʒ���������Ӧ�ö������˰ɣ�\ \ |{cmd}<����/@main>');
   This_Npc.Click_Makedrug(This_Player);
end;

//��ʼ������
procedure OnInitialize;
begin
   This_Npc.AddStdMode(0);
   This_Npc.AddStdMode(3);
   This_Npc.AddStdMode(4);
   This_Npc.AddStdMode(20);
   This_Npc.AddStdMode(22);
   This_Npc.AddStdMode(26);
   This_Npc.AddStdMode(42); 
   This_Npc.AddStdMode(47);
   This_Npc.FillGoods('��Ѫħ��',1,1);
   This_Npc.FillGoods('ħѪ��ָ',1,1);
   This_Npc.FillGoods('ħѪ����',1,1);
   This_Npc.FillGoods('ħѪ����',1,1);
   This_Npc.FillGoods('��ħ��ָ',1,1);
   This_Npc.FillGoods('��ħ����',1,1);
   This_Npc.FillGoods('��ħ����',1,1);
   This_Npc.SetRebate(100);
end;

Begin
   This_Npc.NpcDialog(This_Player,
   '�Ѿ��ܶ���û�������������ˣ�\'+
   '��������������ʶ��ʶ�ҵ����հɣ�\ \'+
   '|{cmd}<�ϳ���Ʒ/@makedrug>\'+
   '|{cmd}<��κϳ���Ʒ/@helpmakedrug>\'+
   '|{cmd}<���жԻ�/@talkwith>');
end.