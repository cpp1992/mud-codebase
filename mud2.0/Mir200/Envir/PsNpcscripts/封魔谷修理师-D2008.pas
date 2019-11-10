{
/************************************************************************}

Program Mir2;


{$I common.pas}


Procedure _doexit;
Begin
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


Procedure _mbind;
begin
  This_Npc.NpcDialog(This_Player,
  '��֪������ʲô���� \'+ 
  '������������������... \'+ 
  '��Ҫ��һ������ʲôҪ���еľ�˵�� \ \' +
  '|{cmd}<��һ�����./@chgtobar>'+addspace(' ',20)+'|{cmd}<���������./@bartogold>\' +
  '|{cmd}<��ҩƿ�;���/@bind>\'+ 
  '|{cmd}<ȡ��/@doexit>');
end;

Procedure _chgtobar;
begin
   This_Npc.Click_GoldChgBar(This_Player);
end;

Procedure _bartogold;
begin
   This_Npc.Click_BartoGold(This_Player);
end;

Procedure _bind;
begin
  This_Npc.NpcDialog(This_Player,
  'Ŀǰ��������ֻ�о����ҩˮ��\'+
  '��Ҫ���� \'+ 
  'Ҫ��������Ҫ100���. \ \'+
  '|{cmd}<��ҩˮ/@P_bind>'+addspace(' ',20)+'|{cmd}<������/@Z_bind> \ \'+
  '|{cmd}<����/@main>');
end;

Procedure _Z_bind;
begin
  This_Npc.NpcDialog(This_Player,
  '|{cmd}<���������Ѿ�/@zum_bind1> \' +
  '|{cmd}<��������;�/@zum_bind2> \' +
  '|{cmd}<���سǾ�/@zum_bind3>  \' +
  '|{cmd}<���л�سǾ�/@zum_bind4>  \' +
  '|{cmd}<����/@bind>');
end;

//�����ģ��
//item_src������Ķ����� item_des����ɵĶ��� 
procedure DoBindBook(item_src, item_des: string);
begin
  if This_Player.GetBagItemCount(item_src) >= 6 then
  begin
     if (This_Player.GoldNum >=100) then
     begin
        This_Player.DecGold(100);
        This_Player.Take(item_src,6);
        This_Player.Give(item_des,1);
        This_Npc.NpcDialog(This_Player,
        '�Ѿ�������... �ҵļ��������... \'+
        '����Ҫ���ľ��ø��Ұ�.. \ \'+
        '|{cmd}<������/@Z_bind> \'+
        '|{cmd}<ȡ��/@doexit>');
     end else
     begin
        This_Npc.NpcDialog(This_Player,
        '�㶼û��Ǯ��������\'+
        '����ʲô? ���߰�... \ \'+
        '|{cmd}<ȡ��/@doexit>');
     end;
  end else
  begin
     This_Npc.NpcDialog(This_Player,
     '�㶼û�п������ľ��飬����ʲô? \'+
     '��׼����֮���������Ұ�.. \ \'+
     '|{cmd}<ȡ��/@doexit>');
  end;   
end; 

procedure _zum_bind4;
begin
  DoBindBook('�л�سǾ�', '�л�سǾ��');
end;

Procedure _zum_bind3;
begin
  DoBindBook('�سǾ�', '�سǾ��');  
end;

Procedure _zum_bind2;
begin
  DoBindBook('������;�', '������;��');  
end;

Procedure _zum_bind1;
begin
  DoBindBook('�������Ѿ�', '�������Ѿ��');  
end;


Procedure _P_bind;
begin
  This_Npc.NpcDialog(This_Player,
  '|{cmd}<ǿЧ��ҩ��/@ch_bind1>  \'+
  '|{cmd}<��ǿЧħ��ҩ/@ma_bind1> \'+ 
  '|{cmd}<����ҩ���У�/@ch_bind2> \'+
  '|{cmd}<��ħ��ҩ���У�/@ma_bind2> \'+
  '|{cmd}<����ҩ/@ch_bind3> \'+
  '|{cmd}<��ħ��ҩ/@ma_bind3> \'+
  '|{cmd}<����/@bind>');
end;

//��ҩģ��
//item_src������Ķ����� item_des����ɵĶ��� 
procedure DoBindDrug(item_src, item_des: string);
begin
  if This_Player.GetBagItemCount(item_src) >= 6 then
  begin
     if (This_Player.GoldNum >=100) then
     begin
        This_Player.DecGold(100);
        This_Player.Take(item_src,6);
        This_Player.Give(item_des,1);
        This_Npc.NpcDialog(This_Player,
        '�Ѿ�������... �ҵļ��������... \'+
        '����Ҫ���ľ��ø��Ұ�.. \ \'+
        '|{cmd}<������/@P_bind> \'+
        '|{cmd}<ȡ��/@doexit>');
     end else
     begin
        This_Npc.NpcDialog(This_Player,
        '�㶼û��Ǯ��������\'+
        '����ʲô? ���߰�... \ \'+
        '|{cmd}<ȡ��/@doexit>');
     end;
  end else
  begin
     This_Npc.NpcDialog(This_Player,
     '�㶼û��Ҫ����ҩˮ������ʲô? \'+
     '��׼����ҩˮ֮���������Ұ�.. \ \'+
     '|{cmd}<ȡ��/@doexit>');
  end;
end;

procedure _ma_bind3;
begin
  DoBindDrug('ħ��ҩ(С��)', 'ħ��ҩ(С)��');
end;

Procedure _ch_bind3;
begin
  DoBindDrug('��ҩ(С��)', '��ҩ(С)��');    
end;

Procedure _ma_bind2;
begin
  DoBindDrug('ħ��ҩ(����)', 'ħ��ҩ(��)��');  
end;

Procedure _ch_bind2;
begin
  DoBindDrug('��ҩ(����)', '��ҩ(��)��');    
end;

Procedure _ma_bind1;
begin
  DoBindDrug('ǿЧħ��ҩ', '����ħ��ҩ');     
end;

Procedure _ch_bind1;
begin
  DoBindDrug('ǿЧ��ҩ', '������ҩ');   
end;

Procedure _cangku;
Begin
   This_Npc.NpcDialog(This_Player,
   '���죬�����ħ�ȵĲֿ����Ա�Է���������Ѳ����ļ�����\'+
   '�����ҡ�������Ҳ���Ա�����Ʒ�ˣ���ʲôҪ��ͺ���˵�ɡ�\ \'+
   //'|{cmd}<�����ֿ�/@DoInputDialog1>\'+
  // '|{cmd}<������Ʒ/@storage>   
   '|{cmd}<�ֿ����/@storage>\'  +
   '|{cmd}<�����־����ҩˮ/@mbind>\'+
   '|{cmd}<�˳�/@doexit>');
end;

Procedure _repair;
Begin
   This_Npc.NpcDialog(This_Player,
   '��Ҫ������?\'+
   '�ҿ��Ǹ����ܹ���Ŷ��\ \'+
   '|{cmd}<����/@main>');
   This_Npc.Click_Repair(This_Player);
end;

procedure RepairDone;
begin
  This_Npc.NpcDialog(This_Player,
  '��ô�����޺��˰ɣ����������µĻ�ֵǮ��\ \' +
  '|{cmd}<����/@main>');
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

procedure _sell;
begin
   This_Npc.NpcDialog(This_Player,
   '������Ҫ������Ʒ.\ \ \'+
   '|{cmd}<����/@main>');
   This_Npc.Click_Sell(This_Player);
end;

Procedure _buy;
Begin
   This_Npc.NpcDialog(This_Player,
   '������Щʲô?\ \ \'+
   '|{cmd}<����/@main>');
   This_Npc.Click_Buy(This_Player);
end;

procedure OnInitialize;
var
i : integer;
begin
//  DebugOut('OnInitalize');
  This_Npc.SetRebate(100);

  //���ص���
  This_NPC.FillGoods('��ҩ(С��)', 200, 1);
  This_NPC.FillGoods('ħ��ҩ(С��)', 200, 1); 
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

  //����stdmode
  This_NPC.AddStdMode(5);
  This_NPC.AddStdMode(6);
  This_NPC.AddStdMode(43);
  This_NPC.AddStdMode(10);
  This_NPC.AddStdMode(11);
  This_NPC.AddStdMode(15);
  This_NPC.AddStdMode(0);
  This_NPC.AddStdMode(42);
  This_NPC.AddStdMode(3);
  for i := 19 to 28 do
  This_NPC.AddStdMode(i);
end;

Procedure _newskill;
Begin
   If This_Player.GetV(10,2) = GetDateNum(GetNow()) then
   Begin
      This_Npc.NpcDialog(This_Player,
      '��������ʲô����\');
   end else if This_Player.GetV(10,3) = GetDateNum(GetNow()) then
   begin
      if This_Player.GetV(10,1) = 8 then
      Begin
         This_Npc.NpcDialog(This_Player,
         '�����ŵ�����ϰ����ҵ�������\'+
         '���Ȼ���ˣ����鷳��ȥ������һ���к��ɡ�\');
      end else if This_Player.GetV(10,1) = 7 then
      begin
         This_Npc.NpcDialog(This_Player,
         '��...ԭ�����Ǹ������˰  �\'+
         '���������ֹ�����еĵط�������ʿ�ǣ�\' +
         '��ż������һЩ��������Ϣ��Ҳ�Ǻ����˸��ˡ�\'+
         '�����ŵ�����ϰ����ҵ�������\' +
         '���Ȼ���ˣ����鷳��ȥ������һ���к��ɡ�\');
         This_Player.SetV(10,1,8);      
      end;
   end else
   begin
      This_Npc.NpcDialog(This_Player,
      '�����ȥ���ؾƹ��Ҽ���ɢ����ȡ�������ţ�\');
   end;      
end;


Begin
   if This_Player.GetV(10,2) = GetDateNum(GetNow()) then
   Begin
      This_Npc.NpcDialog(This_Player,
      '�㾹Ȼ���ܵ���������\'+
      '��������ô�����ķ��ϣ��ҾͰ�����һ�¡�\ \'+
      '|{cmd}<��/@buy>                    ^<��/@sell>\'+
      '|{cmd}<����/@repair>                  ^<��������/@s_repair>\'+
      '|{cmd}<ʹ�òֿ�/@cangku>\ \');
   end else if (This_Player.GetV(10,1) = 7) or (This_Player.GetV(10,1) = 8) then
   begin
      This_Npc.NpcDialog(This_Player,
      '�㾹Ȼ���ܵ���������\'+
      '��������ô�����ķ��ϣ��ҾͰ�����һ�¡�\ \'+
      '|{cmd}<��/@buy>                    ^<��/@sell>\'+
      '|{cmd}<����/@repair>                  ^<��������/@s_repair>\'+
      '|{cmd}<ʹ�òֿ�/@cangku>\ \'+
      '|{cmd}<��һ��������ָ����İ�������ͽ���������ʺ���/@newskill>');
   end else
   begin
      This_Npc.NpcDialog(This_Player,
      '�㾹Ȼ���ܵ���������\'+
      '��������ô�����ķ��ϣ��ҾͰ�����һ�¡�\ \'+
      '|{cmd}<��/@buy>                    ^<��/@sell>\'+
      '|{cmd}<����/@repair>                  ^<��������/@s_repair>\'+
      '|{cmd}<ʹ�òֿ�/@cangku>\ \');
   end;
end.