{
/*******************************************************************************
/*  �ű����� :
/*  ������ һЩ���ýű�����
/*  �޶���¼ :
/*
/*******************************************************************************
}

procedure getMainTaskPrzById(Mid : integer;var Prz_str : string;var bagnum : integer);
begin
    Prz_str := '';
    bagnum := 0;
    
    case Mid of
        1001 : 
        begin
            Prz_str := '���:1/����:2'; 
            bagnum := 2; 
        end;
        1002 : 
        begin
           case This_Player.Job of
              0: Prz_str := '��������:1/��ͭ��ָ:1/��ҩ�а�(��):1'; 
              1: Prz_str := '������:1/���ǽ�ָ:1/��ҩ�а�(��):1'; 
              2: Prz_str := '������:1/������ָ:1/��ҩ�а�(��):1'; 
           end; 
            bagnum := 3; 
        end;
    end;
end;


function giveMainPrz(Mid : integer):boolean; 
var Prz_str : string;
bagnum : integer;
Str, TempStr, SubTempStr: string;
begin
    result := false;
    getMainTaskPrzById(Mid,Prz_str,bagnum);
    
    if This_Player.FreeBagNum >= bagnum then
    begin
        Str := Prz_str;
        while Str <> '' do
        begin
          Str := GetValidStr(Str, TempStr, '/');
          if TempStr <> '' then
          begin
            TempStr := GetValidStr(TempStr, SubTempStr, ':');
            
            case  SubTempStr of
              '���','����' : This_Player.Give(SubTempStr, StrToIntDef(TempStr, 0)); 
              else
              This_Player.GiveBindItem(SubTempStr, StrToIntDef(TempStr, 0));
            end;
          end;
        end;
  
        Result := True; 
    end else
    begin
        This_Player.PlayerNotice('�����ռ䲻�㣬�����ٱ���' + inttostr(bagnum) + '��������λ��',0);
        result := false;
    end;
end;

function getMainTaskStr(Mid , strKind : integer) : string;
var Prz_str , result_str: string;
bagnum : integer;
Str, TempStr, SubTempStr: string;
begin
    getMainTaskPrzById(Mid,Prz_str,bagnum);
    result_str := '';

    Str := Prz_str;
    while Str <> '' do
    begin
      Str := GetValidStr(Str, TempStr, '/');
      if TempStr <> '' then
      begin
        TempStr := GetValidStr(TempStr, SubTempStr, ':');
        
        case  strKind of
          1 : result_str := result_str + '1<' + SubTempStr + '>��' + TempStr; 
          2 : result_str := result_str + '2<' + SubTempStr + '>��' + TempStr; 
        end;
      end;
    end;

    result := result_str;   
end;