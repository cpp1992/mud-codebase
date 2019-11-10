
{********************************************************************

*******************************************************************}

program mir2;

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



Procedure domain;
begin
    
    //if (random(10) = 0) and (This_Player.GetV(9,19) = 1) then
    if (random(10) = 0) and ((This_Player.GetV(11,1) = 2) or (This_Player.GetV(11,1) = 3)) then
    begin
            //This_Player.SetV(9,20,1);
            This_Player.SetV(11,1,3);
            This_Npc.NpcDialog(This_Player,
          '�����ҳ�ʦ�� \ '
          +'�ҶԳ�ʦҲ���Ǻ��˽⡣ \ '
          +'���Ǿ�˵����ɽ�ȵ��׼ҷ�װ�ϰ�֪�����£�\'
          +'�����ȥ����һ�¡�\ \'
          +'|{cmd}<�ر�/@exit>'
          );
    end else
    This_Npc.NpcDialog(This_Player,
    '��Ҫ��ʲôæ��\Ŀǰ���ձ��ܷѣ�������á�\ \' 
    //'+|{cmd}<�����ֿ�/@DoInputDialog1>\'
    +'|{cmd}<�ֿ����/@storage>          ' + ActiveValidateStr + '\'
    +'|{cmd}<��Ҫ��չ�ֿ�/@Storagemore>\'
    +'|{cmd}<�����־����ҩˮ/@mbind>\'
    +'|{cmd}<�˳�/@doexit>');
end;
function getNeedItemNum(STGid : integer) : integer; 
var P_Storger : integer;
begin
    if This_Player.CheckAuthen(1,100) then
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


procedure _DoInputDialog1;
begin
  This_Npc.InputDialog(This_Player, '�����룺', 0, 100);
end;

procedure P100;
begin
  if This_Npc.InputOK then
    begin
      This_Player.ReqOpenStorage(This_Npc.InputStr);
    end;
end;

procedure _storage;
begin
  This_Npc.NpcDialog(This_Player,
  '��Ҫ����ʲô������\ \ \|{cmd}<����/@main>'
  );
  This_Npc.Click_GetBack(This_Player);
end;

procedure _getback;
begin
  This_Npc.NpcDialog(This_Player,
  '�뿴Ŀ¼������ʲô������\ \ \|{cmd}<����/@main>'
  );
  This_Npc.Click_GetBack(This_Player);
end;

procedure _mbind;
begin
  This_Npc.NpcDialog(This_Player,
  '��֪������ʲô���� \������������������... \��Ҫ��һ������ʲôҪ���еľ�˵�� \ \'
  //+'|{cmd}<��һ�����./@chgtobar> \'
  +'|{cmd}<���������./@bartogold> \'
  +'|{cmd}<��/@bind> \'
  +'|{cmd}<ȡ��/@doexit>'
  );
end;

procedure _chgtobar;
begin
  ////This_Npc.Click_GoldChgBar(This_Player);
end;

procedure _bartogold;
begin
  This_Npc.Click_BartoGold(This_Player);
end;

procedure _bind;
begin
  This_Npc.NpcDialog(This_Player,
  'Ŀǰ��������ֻ�о����ҩˮ \��Ҫ���� \Ҫ��������Ҫ100���. \ \'
  +'|{cmd}<��ҩˮ/@P_bind> \'
  +'|{cmd}<������/@Z_bind> \'
  );
end;

procedure _P_bind;
begin
  This_Npc.NpcDialog(This_Player,
  '|{cmd}<��ǿЧ��ҩ/@ch_bind1>  \'
  +'|{cmd}<��ǿЧħ��ҩ/@ma_bind1>  \' 
  +'|{cmd}<����ҩ���У�/@ch_bind2>  \'
  +'|{cmd}<��ħ��ҩ���У�/@ma_bind2> \'
  +'|{cmd}<����ҩ/@ch_bind3> \'
  +'|{cmd}<��ħ��ҩ/@ma_bind3> \'
  +'|{cmd}<����/@bind>'
  );
end; 

procedure _Z_bind;
begin
  This_Npc.NpcDialog(This_Player,
  '|{cmd}<���������Ѿ�/@zum_bind1>  \'
  +'|{cmd}<��������;�/@zum_bind2>  \'
  +'|{cmd}<���سǾ�/@zum_bind3>  \'
  +'|{cmd}<���л�سǾ�/@zum_bind4>  \'
  +'|{cmd}<����/@bind>' 
  );
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
begin
  domain;
end. 