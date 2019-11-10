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

function getMaxEquipUpLv() : integer;
begin
result := This_NPC.MaxStrengthenEquipLv;
end;

function getMaxEquipUpStr(EQid : integer) : string;
begin
    case EQid of
        1 : result := '����';
        2 : result := '����';
        3 : result := '����';
        4 : result := 'ǿ��';
        5 : result := 'ս��';
        6 : result := '����';
        else
        result := ''; 
    end; 
end;

function getEquipUpYB(EQid : integer) : integer;
begin
    case EQid of
        1 : result := 10;
        2 : result := 40;
        3 : result := 160;
        4 : result := 640;
        5 : result := 2560;
        else
        result := 0; 
    end; 
end;

function getEquipUpName(EQid : integer) : string;
begin
    case EQid of
        1 : result := '�������ۼ�';
        2 : result := '�������ۼ�';
        3 : result := '�������ۼ�';
        4 : result := 'ǿ�����ۼ�';
        5 : result := 'ս�����ۼ�';
        else
        result := ''; 
    end; 
end;

function getEquipUpgradeName(EquipLV,EquipId : integer) : string; 
begin
    case EquipLV of
        1 ://����װ�� 
        begin
            case EquipId of
                1 : result := '������ָ';
                2 : result := '�ϱ���';
                3 : result := '̩̹��ָ';
                4 : result := '��ʿ����';
                5 : result := '��֮����';
                6 : result := '��������';
                7 : result := '��ɫ����';
                8 : result := '��ħ����';
                9 : result := '�������';
                10 : result := '��ͭ����';
                11 : result := '��ͭ����';
                12 : result := '��ͭ����';
                13 : result := '�ϳ�ѥ';
                14 : result := '�ϳ�ѥ';
                15 : result := '�ϳ�ѥ';
                16 : result := '����ͷ��';
                17 : result := '����ͷ��';
                18 : result := '����ͷ��';

            end;
        end;
        2 ://����װ��
        begin
            case EquipId of
                1 : result := '������ָ';
                2 : result := '�ϱ���';
                3 : result := '̩̹��ָ';
                4 : result := '��ʿ����';
                5 : result := '��֮����';
                6 : result := '��������';
                7 : result := '��ɫ����';
                8 : result := '��ħ����';
                9 : result := '�������';
                10 : result := '��ͭ����';
                11 : result := '��ͭ����';
                12 : result := '��ͭ����';
                13 : result := '�ϳ�ѥ';
                14 : result := '�ϳ�ѥ';
                15 : result := '�ϳ�ѥ';
                16 : result := '����ͷ��';
                17 : result := '����ͷ��';
                18 : result := '����ͷ��';
                
            end;
        end;
        3 : //����װ��
        begin
            case EquipId of
                1 : result := '����ս��';
                2 : result := '����ħ��';
                3 : result := '��â����';
                4 : result := '��������';
                5 : result := '���滤��';
                6 : result := '��â����';
                7 : result := '��������';
                8 : result := '��������';
                9 : result := '��â����';
                10 : result := '��������';
                11 : result := '��������';
                12 : result := '��â����';
                13 : result := '����սѥ';
                14 : result := '����ħѥ';
                15 : result := '��â��ѥ';
                16 : result := '����ͷ��';
                17 : result := '����ͷ��';
                18 : result := '��âͷ��';
     
            end;
        end;
        4 ://ǿ��װ��
        begin
            case EquipId of
                1 : result := 'ǿ������ս��';
                2 : result := 'ǿ������ħ��';
                3 : result := 'ǿ����â����';
                4 : result := 'ǿ����������';
                5 : result := 'ǿ�����滤��';
                6 : result := 'ǿ����â����';
                7 : result := 'ǿ����������';
                8 : result := 'ǿ����������';
                9 : result := 'ǿ����â����';
                10 : result := 'ǿ����������';
                11 : result := 'ǿ����������';
                12 : result := 'ǿ����â����';
                13 : result := 'ǿ������սѥ';
                14 : result := 'ǿ������ħѥ';
                15 : result := 'ǿ����â��ѥ';
                16 : result := 'ǿ������ͷ��';
                17 : result := 'ǿ������ͷ��';
                18 : result := 'ǿ����âͷ��';
 
            end;
        end;
        5 ://ս��װ��
        begin
            case EquipId of
                1 : result := 'ս���ָ';
                2 : result := 'ʥħ��ָ';
                3 : result := '����ָ';
                4 : result := 'ս������';
                5 : result := 'ʥħ����';
                6 : result := '�������';
                7 : result := 'ս������';
                8 : result := 'ʥħ����';
                9 : result := '�������';
                10 : result := 'ս������';
                11 : result := 'ʥħ����';
                12 : result := '�������';
                13 : result := 'ս��ѥ';
                14 : result := 'ʥħѥ';
                15 : result := '���ѥ';
                16 : result := 'ս��ͷ��';
                17 : result := 'ʥħͷ��';
                18 : result := '���ͷ��';
      
            end;
        end;
        6 ://����װ��
        begin
            case EquipId of
                1 : result := '����ս��';
                2 : result := '����ħ��';
                3 : result := '��������';
                4 : result := '��������(ս)';
                5 : result := '��������(��)';
                6 : result := '��������(��)';
                7 : result := '��������(ս)';
                8 : result := '��������(��)';
                9 : result := '��������(��)';
                10 : result := '��������(ս';
                11 : result := '��������(��)';
                12 : result := '��������(��)';
                13 : result := '����սѥ';
                14 : result := '����ħѥ';
                15 : result := '������ѥ';
                16 : result := '����ս��';
                17 : result := '��������';
                18 : result := '��������';
  
            end;
        end;
    end;
end;


procedure _EquipUpgrade; 
begin
    This_NPC.NpcDialog(This_Player,
    '��ѡ������Ҫ�˽����Ŀ:\'
    +'|{cmd}<�ɺϳɵ�װ��/@EquipUpgrade_1>              ^<�߻���/@EquipUpgrade_2>\'
    +'|{cmd}<�������/@EquipUpgrade_3>                  ^<�ϳɵ�ʱ��>\'
    +'|{cmd}<����/@main>'
    );
end;

procedure _EquipUpgrade_2;
begin
    This_Npc.NpcDialog(This_Player,
 '�߻���Ϊ�ϳ�װ��ʱ���ɻ�ȱ�Ĳ��ϣ��ϳ�ʱ��������Ӧ����Ĵ�\'
  +'�����ſɺϳɡ�ʹ�ô߻���������ȡ������Ҫ�ϳɵ�װ����\ \'
  +'|�ϳɳ��¼���ʱ��Ҫ����������ۼ�\'
  +'|�ϳ���������ʱ��Ҫ��ӳ������ۼ�\'
  +'|�ϳ�ǿ�׼���ʱ��Ҫ����������ۼ�\'
  +'|�ϳ�ս�񼶱�ʱ��Ҫ���ǿ�����ۼ�\'
  +'|�ϳ���������ʱ��Ҫ���ս�����ۼ�\'
  +'|{cmd}<����/@EquipUpgrade>'
  );

end;

procedure _EquipUpgrade_3;
begin
    This_Npc.NpcDialog(This_Player,
 '�ϳ�װ��ʱ����Ϊ���ϵ�װ����������Ӧ������۶������棬\'
+'����ÿ�κϳ����ֻ�����3������װ�������磺�ϳ�ս���ָ��\'
+'��Ҫ5��������ָ�������ʹ��2��������ָ��3�������۶����ϳ�Ŷ\'
+'Ҫ�Ǹ��������۶��Ļ����ںϳ�ʱ��ֱ�ӻ�Ԫ��ʹ��Ŷ��\'
+'|�����۶���������꼶��װ�������кϳɡ���10Ԫ��1����\'
+'|�����۶���������¼���װ�������кϳɡ���40Ԫ��1����\'
+'|�����۶��������������װ�������кϳɡ���160Ԫ��1����\'
+'|ǿ���۶������ǿ�׼���װ�������кϳɡ���640Ԫ��1����\'
+'|ս���۶������ս�񼶱�װ�������кϳɡ���2560Ԫ��1����|{cmd}<����/@EquipUpgrade>\ \'
);
end;

procedure _EquipUpgrade_1;
begin
    This_NPC.NpcDialog(This_Player,
    '��ѡ������Ҫ�˽����Ŀ:\'
    +'��߿ɺϳɵ�װ��\'
    +'|{cmd}<���¼���/@EquipUpDlg~2>         ^<��������/@EquipUpDlg~3>         ^<ǿ�׼���/@EquipUpDlg~4>\'
    +'|{cmd}<ս�񼶱�/@EquipUpDlg~5>         ^<��������/@EquipUpDlg~6>         ^\'
    +'|{cmd}<����/@main>'
    );
end;

function getEquipUpStr() : string; 
begin

end;

procedure _EquipUpDlg(HCidStr : string);
var HCid , i , j : integer;
strDlg_1 , strDlg_2 ,strBFDlg_1 , strBFDlg_2 , strNextDlg_1 , strNextDlg_2 , strDlg  : string;
begin
    HCid := strtointDef(HCidStr,-1);
    strDlg := '';
    j := 0;
    for i := 1 to 9 do
    begin
        strDlg_1 := getEquipUpgradeName(HCid - 1 , i);
        strDlg_2 := getEquipUpgradeName(HCid, i);
        
        strBFDlg_1 := getEquipUpgradeName(HCid - 1 , i - 1);
        strBFDlg_2 := getEquipUpgradeName(HCid, i - 1);
        
        strNextDlg_1 := getEquipUpgradeName(HCid - 1, i + 1);
        strNextDlg_2 := getEquipUpgradeName(HCid, i + 1);
        
        if strDlg_1 = strBFDlg_1 then
        begin
            if strDlg_2 <> strBFDlg_2 then
            begin
             strDlg := strDlg + '��' + strDlg_2; 
            end;  
            
        end else
        begin
            if (strDlg_1 = strNextDlg_1) and (strDlg_2 <> strNextDlg_2) then
            begin
            strDlg := strDlg + '|\' + addSpace(strDlg_1,14) + strDlg_2;
            j := 0;
            end
            else
            begin
                strDlg := strDlg + addSpace(strDlg_1,14) + '^' + addSpace(strDlg_2,14) ;
                j := j + 1; 
                if (j mod 2) = 0 then
                strDlg := strDlg + '\';
                
                strDlg := strDlg + '|';
            end;
        end;
        
    end;
    This_NPC.NpcDialog(This_Player,
    '�ϳ�' + getMaxEquipUpStr(HCid) + '����װ����\'
    +addSpace('���ϣ���5������',14) + addSpace('�ɺϳ�װ����',14) +addSpace('���ϣ���5������',14) + addSpace('�ɺϳ�װ����',14) + '\'
    +strDlg
    +'|{cmd}<��һҳ/@EquipUpDlg_1~' + HCidStr + '>         ^<����/@EquipUpgrade_1>'
    );
end;

procedure _EquipUpDlg_1(HCidStr : string);
var HCid , i , j : integer;
strDlg_1 , strDlg_2 ,strBFDlg_1 , strBFDlg_2 , strNextDlg_1 , strNextDlg_2 , strDlg  : string;
begin
    HCid := strtointDef(HCidStr,-1);
    strDlg := '';
    j := 0;
    for i := 10 to 18 do
    begin
        strDlg_1 := getEquipUpgradeName(HCid - 1 , i);
        strDlg_2 := getEquipUpgradeName(HCid, i);
        
        strBFDlg_1 := getEquipUpgradeName(HCid - 1 , i - 1);
        strBFDlg_2 := getEquipUpgradeName(HCid, i - 1);
        
        strNextDlg_1 := getEquipUpgradeName(HCid - 1, i + 1);
        strNextDlg_2 := getEquipUpgradeName(HCid, i + 1);
        
        if strDlg_1 = strBFDlg_1 then
        begin
            if strDlg_2 <> strBFDlg_2 then
            begin
             strDlg := strDlg + '��' + strDlg_2; 
            end;  
            
        end else
        begin
            if (strDlg_1 = strNextDlg_1) and (strDlg_2 <> strNextDlg_2) then
            begin
            strDlg := strDlg + '|\' + addSpace(strDlg_1,14) + strDlg_2;
            j := 0;
            end
            else
            begin
                strDlg := strDlg + addSpace(strDlg_1,14) + '^' + addSpace(strDlg_2,14);
                j := j + 1; 
                if (j mod 2) = 0 then
                strDlg := strDlg + '\';
                
                strDlg := strDlg + '|';
            end;
        end;
        
    end;
    This_NPC.NpcDialog(This_Player,
    '�ϳ�' + getMaxEquipUpStr(HCid) + '����װ����\'
    +addSpace('���ϣ���5������',14) + addSpace('�ɺϳ�װ����',14) + addSpace('���ϣ���5������',14) + addSpace('�ɺϳ�װ����',14) + '\'
    +strDlg
    +'|\<��һҳ/@EquipUpDlg~' + HCidStr + '>         ^<����/@EquipUpgrade_1>'
    );
end;

procedure _BuyCatalyzer; 
var
Catalyzer_KD: array[1..5] of string;
i,temp_level:integer;
begin  
   for i:=1 to 5 do 
   begin
      Catalyzer_KD[i]:='';
   end;
   temp_level:=getMaxEquipUpLv; 
   if temp_level >= 1 then Catalyzer_KD[1]:='|{cmd}<ʹ��10Ԫ������1���������ۼ�/@BuyCatalyzer_1~1>\';
   if temp_level >= 2 then Catalyzer_KD[2]:='|{cmd}<ʹ��40Ԫ������1���������ۼ�/@BuyCatalyzer_1~2>\';
   if temp_level >= 3 then Catalyzer_KD[3]:='|{cmd}<ʹ��160Ԫ������1���������ۼ�/@BuyCatalyzer_1~3>\';
   if temp_level >= 4 then Catalyzer_KD[4]:='|{cmd}<ʹ��640Ԫ������1��ǿ�����ۼ�/@BuyCatalyzer_1~4>\';
   if temp_level >= 5 then Catalyzer_KD[5]:='|{cmd}<ʹ��2560Ԫ������1��ս�����ۼ�/@BuyCatalyzer_1~5>\';
   
   
   This_NPC.NpcDialog(This_Player,
   '��Ҫ����߻���ô������ǰȷ�����ϵĵȼ�Ŷ��\ \'
   +Catalyzer_KD[1]+Catalyzer_KD[2]+Catalyzer_KD[3]+Catalyzer_KD[4]+Catalyzer_KD[5]
   );
end;

procedure _BuyCatalyzer_1(str_kind:string); 
var
temp_kind,temp_level,temp_YB:integer;
str_Equip:string;
begin      
   temp_kind:= strtointdef(str_kind,-1);
   if (temp_kind < 1) or (temp_kind > 5) then exit;
   temp_level:=getMaxEquipUpLv; 
   if temp_kind > temp_level then
   begin
   This_NPC.NpcDialog(This_Player,
   '��ǰ��߿ɹ���' + getEquipUpName(temp_level) + '��'
   );
   end else
   begin
    temp_YB:=getEquipUpYB(temp_kind);
    str_Equip:=getEquipUpName(temp_kind);
    This_NPC.NpcDialog(This_Player,
    '��ȷ��ʹ��'+inttostr(temp_YB)+'Ԫ������'+str_Equip+'��\ \'+
    '|{cmd}<ȷ������/@BuyCatalyzer_2~'+str_kind+'>' 
    );
   end;
end;

procedure _BuyCatalyzer_2(str_kind:string); 
var
temp_kind,temp_level,temp_YB:integer;
begin      
   temp_kind:= strtointdef(str_kind,-1);
   if (temp_kind < 1) or (temp_kind > 5) then exit;
   temp_level:=getMaxEquipUpLv; 
   if temp_kind > temp_level then
   begin
   This_NPC.NpcDialog(This_Player,
   '��ǰ��߿ɹ���' + getEquipUpName(temp_level) + '��'
   );
   end else
   if This_Player.FreeBagNum > 0 then
   begin
    temp_YB:=getEquipUpYB(temp_kind);
    if temp_YB > 0 then 
    This_Player.PsYBConsum(This_NPC,'YB_Catalyzer',20144,temp_YB,1);
   end else
   begin
   This_NPC.NpcDialog(This_Player,
   '��İ���̫���ˡ�'
   );
   end;
end;

procedure GetCatalyzer(price:integer);
var
temp_kind:integer;
str_Equip:string;
begin
  case price of 
  10:temp_kind:=1;
  40:temp_kind:=2;
  160:temp_kind:=3;
  640:temp_kind:=4;
  2560:temp_kind:=5;
  end;
  str_Equip:=getEquipUpName(temp_kind);
  This_Player.Give(str_Equip,1);
  This_NPC.NpcDialog(This_Player,
  '�����ˣ�'+str_Equip+'��\ \'+
  '|{cmd}<��������/@BuyCatalyzer>' 
  );
end;

function YB_Catalyzer(price, num: Integer):boolean; 
begin
  GetCatalyzer(price);
  Result := true;
end;


procedure domian;
begin
    This_NPC.NpcDialog(This_Player,
     '�Ϸ�һ�����������ռ��귨��½�ĸ�����������Ƕ�װ�����о���\'
    +'�����첻���ң����������о�����װ���ϳɵİ��ء�\'
    + '����<5����ͬ�����Ρ�ͷ����������ѥ��/c=red>��<�߻���/c=red>һ����������100%\'
    +'�ϳ�1��<����һ����װ��/c=red>����Ȼ������׼���˸��ּ�����۶���\'
    +'5��װ���е�<3���������۶����/c=red>Ŷ���߻�����Ҳ�ж����䷽�ܹ���\'
    +'��Ŷ����Ȼ���۶��ʹ߻����۸��������\ \'
    +'|{cmd}<�˽�װ���ϳ�����/@EquipUpgrade>      ^<����߻���/@BuyCatalyzer>\'
    +'|{cmd}<��ʼװ���ϳ�/@@StrengthenEquip>����ǰ����ߺϳ���' + getMaxEquipUpStr(getMaxEquipUpLv+1) + '����\'  
    );
    //_EquipUpDlg('3');
end;

Begin
    domian;
end.