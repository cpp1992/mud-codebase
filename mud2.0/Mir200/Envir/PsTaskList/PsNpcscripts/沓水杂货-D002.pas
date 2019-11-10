{********************************************************************

*******************************************************************}
Program Mir2;

{$I WarehouseAndMbind.pas} 
{$I ActiveValidateCom.pas}

Procedure _DoExit;
begin
  This_Npc.CloseDialog(This_Player);
end;

procedure _Exit;
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



Procedure Normal;
Begin
      
      This_Npc.NpcDialog(This_Player,
      '�����˾�Ȼ�����������ʲô������\'+
      '�Ѷ�������һ����200��ҡ�\'+
      '��֪�������ܲ��ܻص��ҡ�\ \'+
      //'|{cmd}<�����ֿ�/@DoInputDialog1>\'+
      '|{cmd}<�ֿ����/@storage>          ' + ActiveValidateStr + '\'
      +'|{cmd}<��Ҫ��չ�ֿ�/@Storagemore>\');
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
    +'�ֿ�ĵ���ҳ����Ҫ�Ĳ��ϸ��࣬ÿ����3����Ӳ����ľ�Ҳ��ܰ�\' //
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



begin
      Normal;
end.