{
/************************************************************************}

Program Mir2;

Procedure _DoExit;
begin
  This_Npc.CloseDialog(This_Player);
end;

Procedure _getback;
Begin
   This_Npc.NpcDialog(This_Player,
   '�뿴Ŀ¼������ʲô������\ \ \'+
   '|{cmd}<����/@main>');
   This_Npc.Click_GetBack(This_Player);
end;

Procedure _storage;
begin
   This_Npc.NpcDialog(This_Player,
   '��Ҫ����ʲô������\ \ \'+
   '|{cmd}<����/@main>');
   This_Npc.Click_GetBack(This_Player);
end;

Procedure _DoInputDialog1;
begin
   This_Npc.InputDialog(This_Player,'�����룺', 0 , 100);
end;

Procedure P100;
begin
   If This_Npc.InputOK then
   begin
      This_Player.ReqOpenStorage(This_Npc.InputStr);
   end;
end;



Procedure _check465;
Begin
   If This_Player.GetV(10,2) = GetDateNum(GetNow()) then
   Begin
      This_Npc.NpcDialog(This_Player,
      '��������ʲô����\');
   end else if This_Player.GetV(10,1) = 4 then
   Begin
      This_Npc.NpcDialog(This_Player,
      '�ǡ����Ǹ��ϼһ�ƭ�ң����Ǯ������\ \'+
      '|{cmd}<��������Ҳ���ϵ���ʱ�򰡣���ȥ�����ϼһ�ȥ/@DoExit>');
   end else if This_Player.GetV(10,1) = 3 then
   begin
      if This_Player.GetBagItemCount('����') >= 1 then
      begin
      This_Npc.NpcDialog(This_Player,
      '�������£�\'+
      '����ʲô����ô���з���մ����ף�\'+
      '�����Ǹ��ϼһ�ƭ�ң����Ǯ������\ \'+
      '|{cmd}<��������Ҳ���ϵ���ʱ�򰡣���ȥ�����ϼһ�ȥ/@DoExit>');
      This_Player.SetV(10,1,4);
      This_Player.Take('����',1);
      This_Player.AddGold(6000);
      end else
      begin
         This_Npc.NpcDialog(This_Player,
         '��...�Ǹ��ϼһ��в��ٺö���...\'+
         '����ʲôҪ������ҵİ���\');
      end;
   end else
   Begin
      This_Npc.NpcDialog(This_Player,
      '��������ʲô����\');
   end;
end;
   





Procedure _newskill;
Begin
   If This_Player.GetV(10,2) = GetDateNum(GetNow()) then
   Begin
      This_Npc.NpcDialog(This_Player,
      '��������ʲô����\');
   end else if This_Player.GetV(10,3) = GetDateNum(GetNow()) then
   begin
      if This_Player.GetV(10,1) = 4 then
      Begin
         This_Npc.NpcDialog(This_Player,
         '�ǡ����Ǹ��ϼһ�ƭ�ң����Ǯ������\ \'+
         '|{cmd}<��������Ҳ���ϵ���ʱ�򰡣���ȥ�����ϼһ�ȥ/@DoExit>');
      end else if This_Player.GetV(10,1) = 3 then
      begin
         This_Npc.NpcDialog(This_Player,
         '����...�Ǹ��ϼһ��в��ٺö���...\'+
         '���ǣ��������Ҫ�����ֲ���...���ǣ��������Ҳ����\'+
         '�ҳ�6000��ң�������������\ \'+
         '|{cmd}<�ðɣ��Ҽ�����/@check465>');
      end;
   end else
   begin
      This_Npc.NpcDialog(This_Player,
      '�����ȥ���ؾƹ��Ҽ���ɢ����ȡ�������ţ�\');
   end;      
end;


Procedure Normal;
Begin
   if This_Player.GetV(10,2) = GetDateNum(GetNow()) then
   Begin
      This_Npc.NpcDialog(This_Player,
      '�����˾�Ȼ�����������ʲô������\'+
      '��֪�������ܲ��ܻص��ҡ�\ \'+
      //'|{cmd}<�����ֿ�/@DoInputDialog1>\'+
      '|{cmd}<�ֿ����/@storage>                    ');//^<ȡ����Ʒ/@getback>');
   end else if (This_Player.GetV(10,1) = 3) or (This_Player.GetV(10,1) = 4) then
   begin
      This_Npc.NpcDialog(This_Player,
      '�����˾�Ȼ�����������ʲô������\'+
      '��֪�������ܲ��ܻص��ҡ�\ \'+
      //'|{cmd}<�����ֿ�/@DoInputDialog1>\'+
      '|{cmd}<�ֿ����/@storage>                    \'+//^<ȡ����Ʒ/@getback>\ \'+
      '|{cmd}<�����Ҫ�𣿱�������ϰ���صĴ���.../@newskill>');
   end else
   begin
      This_Npc.NpcDialog(This_Player,
      '�����˾�Ȼ�����������ʲô������\'+
      '��֪�������ܲ��ܻص��ҡ�\ \'+
      //'|{cmd}<�����ֿ�/@DoInputDialog1>\'+
      '|{cmd}<�ֿ����/@storage>                    ');//^<ȡ����Ʒ/@getback>');
   end;
end;


Procedure _qf2;
Begin
   This_Npc.NpcDialog(This_Player,
   '�ҿ���������������\'+
   '������Ҫ���ṩһƿף����������������������\'+
   '�ȣ��ȡ���\ \'+
   '|{cmd}<�ṩף����/@qf3>                     ^<�뿪/@doexit>');
end;

Procedure _qf3;
Begin
   if This_Player.GetBagItemCount('ף����') >= 1 then
   begin
      This_Player.Take('ף����',1);
      This_Player.Give('������',1);
      This_Npc.NpcDialog(This_Player,
      '�Ǻǣ��벻���㶼�����ˣ�\'+ 
      '���������Ҫ�Ķ��������úã�\ \'+
      '|{cmd}<�����ṩ/@qf3>ף����                     ^<�뿪/@doexit>');
   end else
   begin
      This_Npc.NpcDialog(This_Player,
      '�ʹ�����ô�㶫���𣿿����㻹û׼���ð�������\'+
      'û��ϵ���һ�һֱ������ģ�׼��������ʱ�����Һ��ˣ�\');
   end;
end;


Procedure Abnormal;
begin
   This_Npc.NpcDialog(This_Player,
   '�������Ѿ���һλ�����ĸ����ˣ�\'+
   '���ҡ������һ������Ҹ���Ȥ�Ķ�����\'+
   '��֪�����������û����Ȥ��\ \'+
   '|{cmd}<����Ȥ/@qf2>\'+
   //'|{cmd}<�����ֿ�/@DoInputDialog1>\'+
   '|{cmd}<�ֿ����/@storage>                    \'+//^<ȡ����Ʒ/@getback>\ \'+
   '|{cmd}<�����Ҫ�𣿱�������ϰ���صĴ���.../@newskill>');
end;


begin
   if (This_Player.GetItemNameOnBody(0) = '��������') or (This_Player.GetItemNameOnBody(0) = '��������') or
      (This_Player.GetItemNameOnBody(0) = 'ʥս����') or (This_Player.GetItemNameOnBody(0) = '��ħ���') or
      (This_Player.GetItemNameOnBody(0) = '��ʦ����') or (This_Player.GetItemNameOnBody(0) = '�������') then
   begin
      if This_Player.GetBagItemCount('ף����') >= 1 then
      begin
         Abnormal;
      end else
      begin
         Normal;
      end; 
   end else
   begin
      Normal;
   end; 
end.