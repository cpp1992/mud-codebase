{********************************************************************

*******************************************************************}

PROGRAM Mir2;

{$I common.pas}

Procedure _doexit;
begin
   This_Npc.CloseDialog(This_Player);
end;

procedure _Exit;
begin
  This_Npc.CloseDialog(This_Player);
end;


Procedure _chgtobar;
begin
   //This_Npc.Click_GoldChgBar(This_Player);
end;

Procedure _bartogold;
begin
   This_Npc.Click_BartoGold(This_Player);
end;


Procedure _bind;
begin
  This_Npc.NpcDialog(This_Player,
  'ĿĿǰ�ҵļ���������ֻ����ҩˮ�;��ᡣ\'+
  '�������ü���֮���ٸ���������Ķ�����\'+
  '�뿴���������ļ�������������Ҫ100��ҡ�\ \'+
  '|{cmd}<��ҩˮ/@P_bind>' + addspace(' ',20) + '^<������/@Z_bind> \ \'+
  '|{cmd}<����/@main>');
end;

Procedure _P_bind;
begin
  This_Npc.NpcDialog(This_Player,
  '|{cmd}<��ǿЧ��ҩ/@ch_bind1>  \'+
  '|{cmd}<��ǿЧħ��ҩ/@ma_bind1>  \'+ 
  '|{cmd}<����ҩ���У�/@ch_bind2>  \'+
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
  '|{cmd}<���������Ѿ�/@zum_bind1>  \' +
  '|{cmd}<��������;�/@zum_bind2>  \' +
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


Begin
   This_Npc.NpcDialog(This_Player,
   '��֪��������ʲô���� \'+ 
   '�������������˵���£�����һ����˵˵�������ɡ�\ \'+
   '|{cmd}<���������./@bartogold>\' +//<��һ�����./@chgtobar>'addspace(' ',20) + '^<���������./@bartogold>\'+
   '|{cmd}<��/@bind> ������Ʒ\'+
   '|{cmd}<�ر�/@doexit>');
end.