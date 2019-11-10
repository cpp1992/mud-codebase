{
*******************************************************************}

program Mir2;

{$I common.pas} 
{$I WarehouseAndMbind.pas} 
{$I ActiveValidateCom.pas}

procedure _DoExit;
begin
  This_Npc.CloseDialog(This_Player);
end;

procedure _Exit;
begin
  This_Npc.CloseDialog(This_Player);
end;

procedure _mibao;
begin
   This_Npc.NpcDialog(This_Player,
   '�����ܱ����·������ܣ����ߺ�ǰ�����ӣ����ϵ�װ��Ҳ�ܵ�\'+
   '�����ر�����\'+
   '���ھ�ȥ�ܱ�ѡ�����ѡ�����·������ܣ��޸��ܱ���ģʽ\'+
   '�����������á�\ \'+
   //'|{cmd}<�����ֿ�/@DoInputDialog1>\ \'+
   '|{cmd}<����/@main>');
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

Procedure _mbind;
begin
  This_Npc.NpcDialog(This_Player,
  '��֪������ʲô�����������ô���Σ� \' +
  '��ɶ��Ǿ޶�װ���\' +
  '��Ҫ��һ�����Ǿ;��ܷ��ĺ��ˣ� \' +
  '|{cmd}<��һ�����./@chgtobar>'+addspace(' ',20)+'|{cmd}<���������./@bartogold>\' +
  '|{cmd}<��������ש./@chgtobrick>'+addspace(' ',20)+'|{cmd}<��ש������./@bricktobar>\'+
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

Procedure _chgtobrick;
begin
   This_Npc.Click_BartoBrick(This_Player);
end;

Procedure _bricktobar;
begin
   This_Npc.Click_BricktoBar(This_Player);
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

Procedure _goback;
begin
   if This_Player.GoldNum >= 110 then
   begin
      This_Npc.NpcDialog(This_Player,
      '������ֻ�е������Ѿ�����һ������ɡ�\ \'+
      '|{cmd}<����������Ѿ�/@goumai>');      
   end else
   begin
      This_Npc.NpcDialog(This_Player,
      '�������Ǯ��û�У����ˣ����ٸ���ָ��·�ɡ�\'+ 
      '��˵ׯ԰�ܼҵĳ��պܺã���ñ�����������ͣ������ǻ�Ҷ\'+
      '�����������귨һ���������������������һ�뻨Ҷ��������\'+
      '�Ҿ������ȥ��\');
   end;
end;

Procedure _goumai;
begin
   if This_Player.GoldNum >= 110 then
   begin
      This_Player.DecGold(110);
      This_Player.Give('�������Ѿ�',1);
   end;
end;

Procedure _huode;
begin
   if This_Player.GetBagItemCount('��Ҷ����') >= 1 then
   begin
      This_Player.Take('��Ҷ����',1);
      This_Player.Give('�������Ѿ�',1);
      This_Npc.CloseDialog(This_Player);
   end else
   begin
      This_Npc.NpcDialog(This_Player,
      '����Ҵ�����Ҷ��������');
   end;
end;

procedure _randomga0;
var
tga0 : integer;
begin
  if compareText(This_Player.MapName,'GA0') = 0 then
  begin
     tga0 := random(5);
     if tga0 = 4 then
     begin
        This_Player.Flyto('GA0',70,71);
     end else if tga0 = 3 then
     begin
        This_Player.Flyto('GA0',73,64);
     end else if tga0 = 2 then
     begin
        This_Player.Flyto('GA0',73,69);
     end else if tga0 = 1 then
     begin
        This_Player.Flyto('GA0',62,72);
     end else if tga0 = 0 then
     begin
        This_Player.Flyto('GA0',61,64);
     end; 
  end;
end;

function getNeedItemNum(STGid : integer) : integer; 
var P_Storger : integer;
begin
    if true then // if This_Player.CheckAuthen(1,100) then
    P_Storger := 48
    else
    P_Storger := 24;
    
    if (STGid - P_Storger) < 48 then
    result := 1
    else if (STGid - P_Storger) < (48*2) then
    result := 2
    else if (STGid - P_Storger) < (48*3) then
    result := 3
    else
    result := -1;
end;

procedure _Storagemore;
var stg_num : integer;
stg_str : string; 
begin
    stg_num := This_Player.GetStorageSpaceCount;
    
    case getNeedItemNum(stg_num) of
        -1 : stg_str := '';
        1 : stg_str := '�ݽ�1����Ӳ����ľ����16��ֿ⣨�޵ڶ�ҳ��';
        2 : stg_str := '�ݽ�2����Ӳ����ľ����16��ֿ⣨�޵���ҳ��';
        3 : stg_str := '�ݽ�3����Ӳ����ľ����16��ֿ⣨�޵���ҳ��';
    end;

    This_Npc.NpcDialog(This_Player,
     '�ǲ����Ӳֿ�̫С�ˣ�û�£�����һЩ��Ӳ����ľ��\'
    +'�ҾͿ��԰�������ֿ⡣\'
    +'�ֿ�ڶ�ҳ��ÿ����1����Ӳ����ľ���Ҿͻ��������16��Ĳֿ⡣\'
    +'�ֿ����ҳ��ÿ����2����Ӳ����ľ���Ҿͻ��������16��Ĳֿ⡣\'
    +'�ֿ�ĵ���ҳ����Ҫ�Ĳ��ϸ��࣬ÿ����3����Ӳ����ľ�Ҳ��ܰ� \'
    +'������16�񡣵�Ȼֻ��ǰ��Ĳֿ⿪��������ܿ�������ġ�\'
    +'����Ҫ����ֿ�ô��\ \'
    +'|{cmd}<' + stg_str + '/@Storagemore_true>\'
    +'|{cmd}<����/@main>'
    );
end;

procedure _Storagemore_true;
var stg_num , needHM : integer;
begin
    stg_num := This_Player.GetStorageSpaceCount;
    needHM := getNeedItemNum(stg_num);
    
    if needHM > 0 then
    begin
        if This_Player.GetBagItemCount('��Ӳ����ľ') >= needHM then
        begin
            This_Player.ExpandStorageSpace(16);
            This_Player.Take('��Ӳ����ľ',needHM);
            This_Npc.NpcDialog(This_Player,
            '��Ĳֿ��ѳɹ�������16��\'
            +'|{cmd}<����/@Storagemore>'
            );
        end else
        This_Npc.NpcDialog(This_Player,
         '��Ĳ��ϲ�������������Ϊ����\'
        +'|{cmd}<����/@main>'
      );
    end; 

end;

Begin
   if This_Player.GetBagItemCount('��Ҷ����') >= 1 then
   begin
      This_Npc.NpcDialog(This_Player,
      '��л�����������Ҷ�����������Ʒ��ã�\'+
      '�����ھ�����һ���������Ѿ�\ \'+
      '|{cmd}<��õ������Ѿ�/@huode>\'+
      '|{cmd}<ȥ��Χ����/@randomga0>');
   end else
   begin
      This_Npc.NpcDialog(This_Player,
      '�����Խ������ȼĴ��������\'+
      'Ϊÿһλ��ʿ���ܺ�������ս��װ�����ҵ���ְ��\'+
      '�����ܱ����·������ܣ������ϵ�װ�����ܱ���������\'+
      //'|{cmd}<�˽��ܱ����·�������/@mibao>\'+
      //'|{cmd}<�����ֿ�/@DoInputDialog1>\'+
      '|{cmd}<�ֿ����/@storage>               ^' + ActiveValidateStr + '\'+//^<�һض���/@getback>\'+
      '|{cmd}<��Ҫ��չ�ֿ�/@Storagemore>\'+
      '|{cmd}<�����־����ҩˮ/@mbind>\'+
      '|{cmd}<����/@goback>�귨��½\'+
      '|{cmd}<ȥ��Χ����/@randomga0>                   ^<�˳�/@doexit>');
   end;
end.