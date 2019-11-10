{
/************************************************************************}


PROGRAM Mir2;

{$I common.pas}

Procedure _doexit;
begin
   This_Npc.CloseDialog(This_Player);
end;

procedure domain;
begin
  This_Npc.NpcDialog(This_Player,
   '��������Ҫ�ҵİ�����\'+
   '��������Ի����������ϵ�װ����\'+
   '������в�Ҫ��װ������������Ը���һ������\ \'+
   '|{cmd}<װ������/@ZhuangBack>\'+
   '|{cmd}<�˳�/@doexit>');
end;

function getZBnameById(ZBid : integer) : string;
var ZBlv , ZBlvId : integer;
begin
    ZBlv := ZBid div 100;
    ZBlvId := ZBid mod 100;
    result := '';
    case ZBlv of
        1 : 
        begin
            case ZBlvId of
                1 : result := '��ɫ����';
                2 : result := '��ʿ����';
                3 : result := '������ָ';
                4 : result := '��ħ����';
                5 : result := '��֮����';
                6 : result := '�ϱ���';
                7 : result := '�������';
                8 : result := '��������';
                9 : result := '̩̹��ָ';
                10 : result := '����ͷ��';
                11 : result := '��ͭ����';
                12 : result := '�ϳ�ѥ';

            end;
        end;
        2 : 
        begin
            case ZBlvId of
                1 : result := 'ʥսͷ��';
                2 : result := 'ʥս����';
                3 : result := 'ʥս����';
                4 : result := 'ʥս��ָ';
                5 : result := '����ͷ��';
                6 : result := '��������';
                7 : result := '��������';
                8 : result := '�����ָ';
                9 : result := '����ͷ��';
                10 : result := '��������';
                11 : result := '��������';
                12 : result := '�����ָ';
                13 : result := '��������';
                14 : result := '�ܻ�ѥ';
				15 : result := '��������';
				16 : result := '��������';
				17 : result := '�������';
				18 : result := '��ʦ����';
				19 : result := '��ħ���';
				20 : result := 'ʥս����';

            end;
        end;
        3 : 
        begin
            case ZBlvId of
                1 : result := '��������';
                2 : result := '��������';
                3 : result := '����ս��';
                4 : result := '��������';
                5 : result := '����սѥ';
                6 : result := '��������';
                7 : result := '���滤��';
                8 : result := '����ħ��';
                9 : result := '��������';
                10 : result := '����ħѥ';
                11 : result := '��â����';
                12 : result := '��â����';
                13 : result := '��â����';
                14 : result := '��â����';
                15 : result := '��â��ѥ';
				16 : result := '��â����';
				17 : result := '����ħ��';
				18 : result := '����ս��';
				19 : result := '����ս��(��)';
				20 : result := '����ս��(Ů)';
				21 : result := '��â����(��)';
				22 : result := '��â����(Ů)';
				23 : result := '����ħ��(��)';
				24 : result := '����ħ��(Ů)';

            end;
        end;
    end;
end;

function getZexpNum(Zlv : integer) : integer;
begin
    case Zlv of
        1 : result := 1;
        2 : result := 2;
        3 : result := 4;
    end;
end;

procedure _ZhuangBack;
begin
    This_NPC.NpcDialog(This_Player,
    '��ѡ����Ҫ���յ�װ�����ࣺ\'
    +'|{cmd}<��������װ��/@zhuangDlg~1>        ^<���ճ���װ��/@zhuangDlg~2>\'
    +'|{cmd}<����ħ��װ��/@zhuangDlg~3>');
end;

procedure _zhuangDlg(LvidStr : string);
var ZlvId , i: integer;
DlgStr , ExpStr ,Iname : string;
begin
    ZlvId := strToIntDef(LvidStr,-1);
    
    ExpStr := inttostr(getZexpNum(ZlvId) div 1) + '��';
    DlgStr := '';
    
    for i := 1 to 20 do
    begin
        Iname := getZBnameById(ZlvId * 100 + i);
        if Iname <> '' then
        begin
            DlgStr := DlgStr + '<' + Iname + '/@ZhBackTrue~' + inttostr(ZlvId * 100 + i) + '>';
            if (i mod 3) = 0 then
            DlgStr := DlgStr + '|\'
            else
            DlgStr := DlgStr + '^';
        end; 
    end; 
    
    case ZlvId of
        1 : DlgStr := DlgStr + '<һ����������װ��/@ZUma_all>';
        2 : DlgStr := DlgStr + '<һ�����ճ���װ��/@ChiYue_all>';
		3 : DlgStr := DlgStr + '<һ������ħ��װ��/@molong_all>';
    end;
    
    This_NPC.NpcDialog(This_Player,
    '��������װ����ÿ���ɻ��'+ ExpStr +'���\'
    +'|{cmd}' + DlgStr
    );      
end;

procedure _ZhBackTrue(ZBidStr : string);
var ZBid : integer;
ZBname : string;
begin
    ZBid := StrToIntDef(ZBidStr,-1);
    ZBname := getZBnameById(ZBid);
    if ZBname <> '' then
    begin
        if This_Player.GetBagItemCount(ZBname) > 0 then
        begin
            This_Player.Take(ZBname,1);
            This_Player.AddLF(0,getZexpNum(ZBid div 100));
            This_NPC.NpcDialog(This_Player,
            '��ϲ����' + inttostr(getZexpNum(ZBid div 100) div 1) + '���\|'
            +'|{cmd}<��������' + ZBname + '/@ZhBackTrue~' + inttostr(ZBid) + '>'
            +'|{cmd}<����/@zhuangDlg~' + inttostr(ZBid div 100) + '>');
        end else
        This_NPC.NpcDialog(This_Player,
        'װ�����㣬�޷����գ�\'
        +'|{cmd}<����/@zhuangDlg~' + inttostr(ZBid div 100) + '>'
        );  
    end;
end;

procedure _ZUma_all;
var ZMnum , i : integer;
Iname : string;
begin
    ZMnum := 0;
    for i := 1 to 20 do
    begin
        Iname := getZBnameById(100 + i);
        if Iname <> '' then
        begin
            if This_Player.GetBagItemCount(Iname) > 0 then
            begin
                ZMnum := ZMnum + This_Player.GetBagItemCount(Iname);
            end;
        end; 
    end;
    
    This_NPC.NpcDialog(This_Player,
    '��İ�������' + inttostr(ZMnum) + '������װ�������տɻ��:' + inttostr(getZexpNum(1) div 1 * ZMnum) + '�������ȷ��������������װ����\|'
    +'|{cmd}<ȷ�ϻ�����������װ��/@ZUma_True>'
    +'|{cmd}<����/@zhuangDlg~1>');
end;

procedure  _ZUma_True;
var ZMnum , i , j , itemNum : integer;
Iname : string;
begin
    ZMnum := 0;
    for i := 1 to 20 do
    begin
        Iname := getZBnameById(100 + i);
        if Iname <> '' then
        begin
            itemNum := This_Player.GetBagItemCount(Iname);
            if itemNum > 0 then
            begin
                ZMnum := ZMnum + itemNum;
                This_Player.Take(Iname, itemNum);
                
                for j := 1 to itemNum do
               This_Player.AddLF(3, getZexpNum(1));
            end;
        end; 
    end;
    This_NPC.NpcDialog(This_Player,
    '��ϲ����:' + inttostr(ZMnum) + '�����\|'
    +'|{cmd}<����/@zhuangDlg~1>');

end;


procedure _Chiyue_all;
var ZMnum , i : integer;
Iname : string;
begin
    ZMnum := 0;
    for i := 1 to 20 do
    begin
        Iname := getZBnameById(200 + i);
        if Iname <> '' then
        begin
            if This_Player.GetBagItemCount(Iname) > 0 then
            begin
                ZMnum := ZMnum + This_Player.GetBagItemCount(Iname);
            end;
        end; 
    end;
    
    This_NPC.NpcDialog(This_Player,
    '��İ�������' + inttostr(ZMnum) + '������װ�������տɻ��:' + inttostr(getZexpNum(2) div 1 * ZMnum) + '�������ȷ���������г���װ����\|'
    +'|{cmd}<ȷ�ϻ������г���װ��/@Chiyue_True>'
    +'|{cmd}<����/@zhuangDlg~2>');
end;

procedure  _Chiyue_True;
var ZMnum , i , j , itemNum : integer;
Iname : string;
begin
    ZMnum := 0;
    for i := 1 to 20 do
    begin
        Iname := getZBnameById(200 + i);
        if Iname <> '' then
        begin
            itemNum := This_Player.GetBagItemCount(Iname);
            if itemNum > 0 then
            begin
                ZMnum := ZMnum + itemNum;
                This_Player.Take(Iname, itemNum);
                
                for j := 1 to itemNum do
                This_Player.AddLF(1, getZexpNum(2));
            end;
        end; 
    end;
    This_NPC.NpcDialog(This_Player,
    '��ϲ����:' + inttostr(getZexpNum(2) div 1 * ZMnum) + '�����\|'
    +'|{cmd}<����/@zhuangDlg~2>');

end;
procedure _molong_all;
var ZMnum , i : integer;
Iname : string;
begin
    ZMnum := 0;
    for i := 1 to 25 do
    begin
        Iname := getZBnameById(300 + i);
        if Iname <> '' then
        begin
            if This_Player.GetBagItemCount(Iname) > 0 then
            begin
                ZMnum := ZMnum + This_Player.GetBagItemCount(Iname);
            end;
        end; 
    end;
    
    This_NPC.NpcDialog(This_Player,
    '��İ�������' + inttostr(ZMnum) + '��ħ��װ�������տɻ��:' + inttostr(getZexpNum(3) div 1 * ZMnum) + '�������ȷ����������ħ��װ����\|'
    +'|{cmd}<ȷ�ϻ�������ħ��װ��/@molong_True>'
    +'|{cmd}<����/@zhuangDlg~3>');
end;

procedure  _molong_True;
var ZMnum , i , j , itemNum : integer;
Iname : string;
begin
    ZMnum := 0;
    for i := 1 to 25 do
    begin
        Iname := getZBnameById(300 + i);
        if Iname <> '' then
        begin
            itemNum := This_Player.GetBagItemCount(Iname);
            if itemNum > 0 then
            begin
                ZMnum := ZMnum + itemNum;
                This_Player.Take(Iname, itemNum);
                
                for j := 1 to itemNum do
                This_Player.AddLF(1, getZexpNum(3));
            end;
        end; 
    end;
    This_NPC.NpcDialog(This_Player,
    '��ϲ����:' + inttostr(getZexpNum(3) div 1 * ZMnum) + '�����\|'
    +'|{cmd}<����/@zhuangDlg~3>');

end;

Begin
  domain;
end.