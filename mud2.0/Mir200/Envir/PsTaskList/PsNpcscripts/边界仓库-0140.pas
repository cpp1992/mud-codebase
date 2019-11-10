{
/************************************************************************}



PROGRAM Mir2;

{$I common.pas}

Procedure _doexit;
begin
   This_Npc.CloseDialog(This_Player);
end;


Procedure _getback;
Begin
   This_Npc.NpcDialog(This_Player,
   '����б���ѡ����Ҫȡ�ص���Ʒ.\ \ \'+
   '|{cmd}<����/@main>');
   This_Npc.Click_GetBack(This_Player);
end;


Procedure _storage;
begin
   This_Npc.NpcDialog(This_Player,
   '���봢��������Ʒ��?\ \ \'+
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
  '|{cmd}<��/@bind>ҩƿ�;���\'+ 
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

Begin
   This_Npc.NpcDialog(This_Player,
   '�ҿ��԰���ʲô��?\����ı�����Ʒ,���ǲ��շ�\ \'+
   //'|{cmd}<�����ֿ�/@DoInputDialog1>\'+
   '|{cmd}<�ֿ����/@storage>                          \'+//^<�һض���/@getback>\'+
   '|{cmd}<�����־����ҩˮ/@mbind>\'+
   '|{cmd}<�˳�/@doexit>');
end.