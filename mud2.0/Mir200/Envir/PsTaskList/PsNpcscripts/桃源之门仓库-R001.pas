{
/************************************************************************}



PROGRAM Mir2;

{$I common.pas}

Procedure _doexit;
begin
   This_Npc.CloseDialog(This_Player);
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
  'Ŀǰ�ҵļ���������ֻ����ҩˮ�;��ᡣ\'+
  '�������ü���֮���ٸ���������Ķ�����\'+
  '�뿴���������ļ�������������Ҫ100��ҡ�\ \'+
  '|{cmd}<��ҩˮ/@P_bind>'+addspace(' ',20)+'|{cmd}<������/@Z_bind> \ \'+
  '|{cmd}<����/@main>');
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

Procedure _ma_bind3;
begin
  if This_Player.GetBagItemCount('ħ��ҩ(С��)') >= 6 then
  begin
     if (This_Player.GoldNum >=100) and  (This_Player.GetBagItemCount('ħ��ҩ(С��)') >= 6) then
     begin
        This_Player.DecGold(100);
        This_Player.Take('ħ��ҩ(С��)',6);
        This_Player.Give('ħ��ҩ(С)��',1);
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


Procedure _ch_bind3;
begin
  if This_Player.GetBagItemCount('��ҩ(С��)') >= 6 then
  begin
     if (This_Player.GoldNum >=100) and  (This_Player.GetBagItemCount('��ҩ(С��)') >= 6) then
     begin
        This_Player.DecGold(100);
        This_Player.Take('��ҩ(С��)',6);
        This_Player.Give('��ҩ(С)��',1);
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


Procedure _ma_bind2;
begin
  if This_Player.GetBagItemCount('ħ��ҩ(����)') >= 6 then
  begin
     if (This_Player.GoldNum >=100) and  (This_Player.GetBagItemCount('ħ��ҩ(����)') >= 6) then
     begin
        This_Player.DecGold(100);
        This_Player.Take('ħ��ҩ(����)',6);
        This_Player.Give('ħ��ҩ(��)��',1);
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



Procedure _ch_bind2;
begin
  if This_Player.GetBagItemCount('��ҩ(����)') >= 6 then
  begin
     if (This_Player.GoldNum >=100) and  (This_Player.GetBagItemCount('��ҩ(����)') >= 6) then
     begin
        This_Player.DecGold(100);
        This_Player.Take('��ҩ(����)',6);
        This_Player.Give('��ҩ(��)��',1);
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



Procedure _ma_bind1;
begin
  if This_Player.GetBagItemCount('ǿЧħ��ҩ') >= 6 then
  begin
     if (This_Player.GoldNum >=100) and  (This_Player.GetBagItemCount('ǿЧħ��ҩ') >= 6) then
     begin
        This_Player.DecGold(100);
        This_Player.Take('ǿЧħ��ҩ',6);
        This_Player.Give('����ħ��ҩ',1);
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


Procedure _ch_bind1;
begin
  if This_Player.GetBagItemCount('ǿЧ��ҩ') >= 6 then
  begin
     if (This_Player.GoldNum >=100) and  (This_Player.GetBagItemCount('ǿЧ��ҩ') >= 6) then
     begin
        This_Player.DecGold(100);
        This_Player.Take('ǿЧ��ҩ',6);
        This_Player.Give('������ҩ',1);
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



Procedure _Z_bind;
begin
  This_Npc.NpcDialog(This_Player,
  '|{cmd}<���������Ѿ�/@zum_bind1> \' +
  '|{cmd}<��������;�/@zum_bind2> \' +
  '|{cmd}<���سǾ�/@zum_bind3>  \' +
  '|{cmd}<���л�سǾ�/@zum_bind4>  \' +
  '|{cmd}<����/@bind>');
end;

Procedure _zum_bind4;
begin
  if This_Player.GetBagItemCount('�л�سǾ�') >= 6 then
  begin
     if (This_Player.GoldNum >=100) and  (This_Player.GetBagItemCount('�л�سǾ�') >= 6) then
     begin
        This_Player.DecGold(100);
        This_Player.Take('�л�سǾ�',6);
        This_Player.Give('�л�سǾ��',1);
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

Procedure _zum_bind3;
begin
  if This_Player.GetBagItemCount('�سǾ�') >= 6 then
  begin
     if (This_Player.GoldNum >=100) and  (This_Player.GetBagItemCount('�سǾ�') >= 6) then
     begin
        This_Player.DecGold(100);
        This_Player.Take('�سǾ�',6);
        This_Player.Give('�سǾ��',1);
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

Procedure _zum_bind2;
begin
  if This_Player.GetBagItemCount('������;�') >= 6 then
  begin
     if (This_Player.GoldNum >=100) and  (This_Player.GetBagItemCount('������;�') >= 6) then
     begin
        This_Player.DecGold(100);
        This_Player.Take('������;�',6);
        This_Player.Give('������;��',1);
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

Procedure _zum_bind1;
begin
  if This_Player.GetBagItemCount('�������Ѿ�') >= 6 then
  begin
     if (This_Player.GoldNum >=100) and  (This_Player.GetBagItemCount('�������Ѿ�') >= 6) then
     begin
        This_Player.DecGold(100);
        This_Player.Take('�������Ѿ�',6);
        This_Player.Give('�������Ѿ��',1);
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

Procedure _getback;
Begin
   This_Npc.NpcDialog(This_Player,
   '����б���ѡ����Ҫȡ�ص���Ʒ��\ \ \'+
   '|{cmd}<����/@main>');
   This_Npc.Click_GetBack(This_Player);
end;


Procedure _storage;
begin
   This_Npc.NpcDialog(This_Player,
   '���봢��������Ʒ�أ�\ \ \'+
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
  '��֪������ʲô����������������������... \'+ 
  '��Ҫ��һ������ʲôҪ���еľ�˵�ɡ�\ \' +
  '|{cmd}<��һ�����./@chgtobar>'+addspace(' ',20)+'|{cmd}<���������./@bartogold>\' +
  '|{cmd}<��ҩƿ�;���/@bind>\'+ 
  '|{cmd}<����/@main>');
end;


procedure _cangku;
Begin
   This_Npc.NpcDialog(This_Player,
   '���죬�����ħ�ȵĲֿ����Ա�Է���������Ѳ����ļ���\'+
   '�������ң�������Ҳ���Ա�����Ʒ�ˣ���ʲôҪ��ͺ���˵�ɡ�\ \'+
   //'|{cmd}<�����ֿ�/@DoInputDialog1>\'+
   '|{cmd}<������Ʒ/@storage>                           ^<ȡ����Ʒ/@getback>\'+
   '|{cmd}<�����־����ҩˮ/@mbind>\'+
   '|{cmd}<�˳�/@doexit>');
end;

procedure _back;
Begin
   if compareText(This_Player.MapName, 'R001') = 0 then
   begin
      This_Player.RandomFlyTo('3');
   end;
end;


Begin
   This_Npc.NpcDialog(This_Player,
   'ǰ����һ��Σ�յ�δ֪���磬�������ڵ�ʵ��������ȥ���\'+
   '���Ժ������ɣ��ҿ��԰����ͻ���ԭ�������硣\ \'+
   '|{cmd}<ʹ�òֿ�/@cangku>                           ^<�ص�����/@back>\'+
   '|{cmd}<������������/@doexit>');
end.