{
*******************************************************************}
Program Mir2;

Procedure _DoExit;
begin
   This_NPC.CloseDialog(This_Player);
end;

Procedure _Buy;
begin
   This_NPC.NpcDialog(This_Player,
   '�뿴��Ҫȡ��ʲô������\ \ \'+
   '|{cmd}<����/@sell>                  ^<�ر�/@doexit> \');
   This_NPC.Click_Buy(This_Player);
end;

Procedure _sell;
begin
   This_NPC.NpcDialog(This_Player,
   '�뿴��Ҫ����ʲô������\ \ \'+
   '|{cmd}<ȡ��/@Buy>                     ^<��������Ʒ���뱳��/@StorageAllBagItems>\ \'+
   '|{cmd}<�ر�/@doexit>\');
   This_NPC.Click_Sell(This_Player);
end;

Procedure _StorageAllBagItems;
begin
   This_NPC.StorageAllBagItems(This_Player);
end;

Procedure OnInitialize;
begin
   This_NPC.AddNpcProp(9);
end;

Begin
   This_NPC.NpcDialog(This_Player,
   '��ã�����GM�ܼң�����ҪЩʲô����\ \ \'+
   '|{cmd}<ȡ��/@Buy>                        ^<����/@sell>\');
end.