

 {    ANGc63
����ֵϵͳ
����ֵϵͳ
����ϵͳ
����ϵͳ
�һ�ϵͳ
����ϵͳ



���ϵͳ
�л�ϵͳ
����ϵͳ
�ʼ�ϵͳ
����ϵͳ


ף����ϵͳ
��������
��̯ϵͳ
����ϵͳ
 }
{$I common.pas} 
function GetMapStrNameById(mapId :integer) : string;
begin
    case mapId of
        1 : result := '���˹�Ĺ';  
        2 : result := '��Ѩ'; 
        3 : result := '��������';  
        4 : result := '����Ͽ�';  
        5 :  result := '���߿���';
        6 : result := '��������';
        7 :result := 'ʯĹ';
        8 : result := '����';
        9 : result := '��ħ����';
        10 : result := '��ħ��';
        11 : result := 'ʬħ��';
        12 : result := '��ħ��';
        13 : result := 'ţħ��';
        14 : result := '����Ͽ��';
        15 : result := 'ħ������'; 
        16 : result := 'ħ������'; 
    end;
end;

procedure GetMapMsgStrByName(mapName : string; var MapMinLv , MapMaxLv :integer; var Map_str : string;var mapX , MapY : integer;var mapItemStr , mapBoss , mapJY : string);
begin
    case mapName of
        '���˹�Ĺ' :  
        begin 
             
            MapMinLv := 7; 
            MapMaxLv := 21; 
            Map_str := '0'; 
            mapX := 147; 
            MapY := 33; 
            mapItemStr := '����װ����22�������鼮'; 
            mapBoss := '���þ���'; 
            mapJY := ''; 
        end; 
        '��Ѩ' :  
        begin 
             
            MapMinLv := 7; 
            MapMaxLv := 21; 
            Map_str := '0'; 
            mapX := 41; 
            MapY := 108; 
            mapItemStr := '����װ����22�������鼮'; 
            mapBoss := '���þ���'; 
            mapJY := ''; 
        end; 
        '��������' :  
        begin 
             
            MapMinLv := 22; 
            MapMaxLv := 40; 
            Map_str := '1'; 
            mapX := 84; 
            MapY := 277; 
            mapItemStr := '���������ߣ�ħ�ȣ��������Σ�����Ž�'; 
            mapBoss := '�������'; 
            mapJY := '������ʿ'; 
        end; 
        '����Ͽ�':  
        begin 
             
            MapMinLv := 15; 
            MapMaxLv := 28; 
            Map_str := '0'; 
            mapX := 664; 
            MapY := 212; 
            mapItemStr := '35�����¼����鼮'; 
            mapBoss := 'ʬ��'; 
            mapJY := ''; 
        end; 
        '���߿���' :  
        begin 
             
            MapMinLv := 15; 
            MapMaxLv := 28; 
            Map_str := '2'; 
            mapX := 564; 
            MapY := 169; 
            mapItemStr := '35�����¼����鼮'; 
            mapBoss := 'ʬ��'; 
            mapJY := ''; 
        end; 
        '��������' :  
        begin 
             
            MapMinLv := 26; 
            MapMaxLv := 45; 
            Map_str := '3'; 
            mapX := 862; 
            MapY := 174; 
            mapItemStr := '�þ�֮�ȣ�����Ȩ�ȣ����ƽ����������Σ�����ͷ��'; 
            mapBoss := '�������'; 
            mapJY := '������ʿ������������깭����'; 
        end; 
        'ʯĹ' :  
        begin 
             
            MapMinLv := 28; 
            MapMaxLv := 42; 
            Map_str := '3'; 
            mapX := 306; 
            MapY := 322; 
            mapItemStr := '�þ�֮�ȣ�����Ȩ�ȣ����ƽ����ϱ��ݣ���֮������ħ������������ָ����ʿ������ɫ������̩̹��ָ�����������������'; 
            mapBoss := 'ʯĹʬ��'; 
            mapJY := '��Ұ��а����'; 
        end; 
        '����' :  
        begin 
             
            MapMinLv := 22; 
            MapMaxLv := 40; 
            Map_str := '3'; 
            mapX := 139; 
            MapY := 85; 
            mapItemStr := '���������ߣ�ħ�ȣ��챦ʯ��ָ��˼��������������������֮��ָ���������ף����������������ָ������������������'; 
            mapBoss := '������'; 
            mapJY := 'а��ǯ��'; 
        end; 
        '��ħ����' :  
        begin 
             
            MapMinLv := 15; 
            MapMaxLv := 45; 
            Map_str := '4'; 
            mapX := 56; 
            MapY := 66; 
            mapItemStr := '�þ�֮�ȣ�����Ȩ�ȣ����ƽ����ϱ��ݣ���֮������ħ������������ָ����ʿ������ɫ������̩̹��ָ�����������������'; 
            mapBoss := '��ħ����'; 
            mapJY := '��Ұ��а���ߣ���ħ��������ħЫ��'; 
        end; 
        '��ħ��' :  
        begin 
             
            MapMinLv := 15; 
            MapMaxLv := 45; 
            Map_str := '4'; 
            mapX := 140; 
            MapY := 67; 
            mapItemStr := '�þ�֮�ȣ�����Ȩ�ȣ����ƽ����ϱ��ݣ���֮������ħ������������ָ����ʿ������ɫ������̩̹��ָ�����������������'; 
            mapBoss := '��ħ����'; 
            mapJY := '��Ұ��а���ߣ���ħ��������ħЫ��'; 
        end; 
        'ʬħ��' :  
        begin 
             
            MapMinLv := 22; 
            MapMaxLv := 40; 
            Map_str := '5'; 
            mapX := 527; 
            MapY := 610; 
            mapItemStr := '35�����¼����鼮'; 
            mapBoss := ''; 
            mapJY := ''; 
        end; 
        '��ħ��' :  
        begin 
             
            MapMinLv := 22; 
            MapMaxLv := 40; 
            Map_str := '5'; 
            mapX := 549; 
            MapY := 126; 
            mapItemStr := '�þ�֮�ȣ�����Ȩ�ȣ����ƽ����ϱ��ݣ���֮������ħ������������ָ����ʿ������ɫ������̩̹��ָ�����������������'; 
            mapBoss := '��Ȫ����'; 
            mapJY := ''; 
        end; 
        'ţħ��' :  
        begin 
             
            MapMinLv := 35; 
            MapMaxLv := 45; 
            Map_str := '5'; 
            mapX := 655; 
            MapY := 458; 
            mapItemStr := '�þ�֮�ȣ�����Ȩ�ȣ����ƽ����ϱ��ݣ���֮������ħ������������ָ����ʿ������ɫ������̩̹��ָ�������������������ѥ�ӣ�������������ŭն����ң��'; 
            mapBoss := 'ţħ������֮ţħ��'; 
            mapJY := ''; 
        end; 
        '����Ͽ��' :  
        begin 
             
            MapMinLv := 35; 
            MapMaxLv := 45; 
            Map_str := '11'; 
            mapX := 349; 
            MapY := 239; 
            mapItemStr := '������װ��ʥս��װ��������װ'; 
            mapBoss := '˫ͷ��գ�˫ͷѪħ�����¶�ħ'; 
            mapJY := ''; 
        end; 
        'ħ������' :  
        begin 
             
            MapMinLv := 35; 
            MapMaxLv := 70; 
            Map_str := '6'; 
            mapX := 460; 
            MapY := 66; 
            mapItemStr := 'ʨ�Ӻ�����𣬺����ƣ��޼���������������ѥ�ӣ����������������棬��â��װ'; 
            mapBoss := 'ħ������'; 
            mapJY := 'ħ����ʿ��ħ��ս����ħ���޶�'; 
        end; 
        'ħ������' :  
        begin 
             
            MapMinLv := 35; 
            MapMaxLv := 70; 
            Map_str := '6'; 
            mapX := 471; 
            MapY := 375; 
            mapItemStr := 'ʨ�Ӻ�����𣬺����ƣ��޼���������������ѥ�ӣ����������������棬��â��װ'; 
            mapBoss := 'ħ������'; 
            mapJY := 'ħ����ʿ��ħ��ս����ħ���޶�'; 
        end; 
    end;
end;

function getMoveNpcName() : string;
begin
    if This_Player.MapName = '11' then     
    result := '��'
    else
    result := '�ϱ�';
end;

procedure _help_1;
var temp_lv , i , j : integer;
Dlg_Str , XX_Str : string;
mapId :integer; mapName : string; 
MapMinLv , MapMaxLv :integer; 
Map_str : string;
mapX , MapY : integer;
mapItemStr , mapBoss , mapJY : string;
begin
    temp_lv := This_Player.Level;

    Dlg_Str := '';
    XX_Str := '';
    j := 0; 
    for i := 1 to 16 do
    begin
        mapName := GetMapStrNameById(i);
        GetMapMsgStrByName(mapName , MapMinLv , MapMaxLv, Map_str , mapX , MapY , mapItemStr , mapBoss , mapJY);


        if temp_lv >= MapMinLv then
        begin
            if temp_lv <= MapMaxLv then
            begin
                if Dlg_Str <>  '' then
                Dlg_Str := Dlg_Str + '��';
                
                Dlg_Str := Dlg_Str + mapName;
                j := j + 1;
                
                XX_Str :=  XX_Str + '<' + mapName + '/@goMonMap~' + inttostr(i) + '>     ';
                
                if (j mod 2) = 0 then
                XX_Str :=  XX_Str + '\|'
                else
                XX_Str :=  XX_Str + '^'; 
                
            end;
        end;
    end;
    if temp_lv < 7 then
    This_Player.HelperDialog(
    '��ĵȼ�Ϊ��' + inttostr(temp_lv) + '�����ʺ�������ͼ��\'
    +'|����Ұ�⡣'
    +'|{cmd}<����/@main>'
    ) 
    else
    This_Player.HelperDialog(
    '��ĵȼ�Ϊ��' + inttostr(temp_lv) + '�����ʺ�������ͼ��\'
    //+'��Ӧ��ͼ�ϱ���ֱ�Ӵ��͵���Ѩ�ſڡ�\ \'
    +'' + Dlg_Str
    +'{cmd}|<����ȥ��' + getMoveNpcName() + '/@goLaobin>|\'
    + XX_Str
    +'<����/@main>'
    );
end;

function getMapStrNameByMname(Mname : string) : string;
begin
    case Mname of
        '0' : result := '����';
        '1' : result := '����ɭ��';
        '2' : result := '����ɽ��';
        '3' : result := '����';
        '4' : result := '��ħ��';
        '5' : result := '���µ�';
        '6' : result := 'ħ����';
        '11' : result := '������';
        
        
    end;
end;

procedure _goMonMap(MapIdStr : string);
var mapId :integer; mapName : string; 
MapMinLv , MapMaxLv :integer; 
Map_str : string;
mapX , MapY : integer;
mapItemStr , mapBoss , mapJY : string;
begin
    mapId := StrToIntDef(MapIdStr , -1);
    
    mapName := GetMapStrNameById(mapId);
    GetMapMsgStrByName(mapName , MapMinLv , MapMaxLv, Map_str , mapX , MapY , mapItemStr , mapBoss , mapJY);
    
    if mapBoss <> '' then
    mapBoss := '|Boss��' + mapBoss; 
    
    if mapJY <> '' then
    mapJY := '|��Ӣ��' + mapJY; 
    
    This_Player.HelperDialog(
    mapName + '��\'
    +'|��ڣ�' + getMapStrNameByMname(Map_str) + '��' + inttostr(mapX) + ',' + inttostr(mapY) + '��\'
    +'|��ͼ������' + mapItemStr + '\' 
    + mapBoss +'��\\'
    + mapJY
    +'{cmd}|<ȥ' + mapName + '/@MapMoveMonmap~' + MapIdStr + '>         ^<��' + getMoveNpcName() + '����/@goLaobin>\'
    +'{cmd}|<����/@help_1>' 
    );
end;

procedure _goLaobin;
begin
   case This_Player.MapName of
        '0' : This_Player.AutoGotoMap('0',333,274); 
      //  '1' : result := '����ɭ��';
        '2' : This_Player.AutoGotoMap('2',500,485);
        '3' : This_Player.AutoGotoMap('3',334,326);
        '4' : This_Player.AutoGotoMap('4',240,200);
        '5' : This_Player.AutoGotoMap('5',140,330);
        '6' : This_Player.AutoGotoMap('6',121,154);
        '11' : This_Player.AutoGotoMap('11',184,300);
        else
        This_Player.HelperDialog(
        '��ʹ�ûسǣ�Ȼ����Ѱ��' + getMoveNpcName() + '��'
        ); 
   end; 
end;

procedure _MapMoveMonmap(MapIdStr : string);
var mapId :integer; mapName : string; 
MapMinLv , MapMaxLv :integer; 
Map_str : string;
mapX , MapY : integer;
mapItemStr , mapBoss , mapJY : string;
begin
    mapId := StrToIntDef(MapIdStr , -1);
    mapName := GetMapStrNameById(mapId);
    GetMapMsgStrByName(mapName , MapMinLv , MapMaxLv, Map_str , mapX , MapY , mapItemStr , mapBoss , mapJY);
    This_Player.AutoGotoMap(Map_str , mapX , MapY); 
end;

procedure _help_2;
begin
    This_Player.HelperDialog(
    'װ��������\\'
    +'|��Ϸ��������ͨ�����·�ʽ��������װ����'
    +'{cmd}|<װ���ϳ�/@help_2_1>        ^<��������/@help_2_2>\'
    +'{cmd}|<ף����/@help_2_3>          ^<��������/@help_2_4>\'
    +'{cmd}|<ף����/@help_2_5>\'
    +'{cmd}|<����/@main>' 
    );
end;

procedure _help_2_1;
begin
    This_Player.HelperDialog(
     'װ���ϳɣ�|�߽�����ε�����һλ���صĶ���ʦ�����о����˽��ͼ�װ���ϳɸ�\'
    +'��װ���ķ�ʽ����˵����ֻҪ2����ͬװ�����ܺϳ��ˣ�\'
    +'������������ȥ��������\ \'
    +'{cmd}|<����/@help_2>' 
    );
end;

procedure _help_2_2;
begin
    This_Player.HelperDialog(
     '����������|�ڱ߽����һλ����ʦ���ܹ������������ʯ��\'
    +'���Ž��ʯȥ�ұ߽�������������εĶ���ʦ��\'
    +'ֻ��Ҫ10�žͿ��Զ����һ����������������������������������\'
    +'�ؽ��ʯ���ҡ�\ \'
    +'{cmd}|<����/@help_2>' 
    );
end;

procedure _help_2_3;
begin
    This_Player.HelperDialog(
    'ף���ͣ�|\'
    +'˫��ʹ��ף�����м�����������������ֵ������ֱֵ��Ӱ���������ܷ񷢻�������ԡ����˴�ֺ���ҽ��ף����س�����һλ���˺������д�����װ��ף���޳���Ŷ��'
    +'{cmd}|<����/@help_2>' 
    );
end;

procedure _help_2_3_1;
begin
    This_Player.HelperDialog(
    '˫��ף���ͼ��м�������������ֵ����ȻҲ�п�����Ч���Ǳ����䡣 \'
    +'|��������ף���Ϳ�������ɿ���ʹ��ף����'
    +'{cmd}|<����/@help_2_3>' 
    );
end;

procedure _help_2_3_2;
begin
    This_Player.HelperDialog(
    '��������������Խ�ߣ�������������ħ�����������޵Ļ��ʾ�Խ��'
    +'{cmd}|<����/@help_2_3>' 
    );
end;

procedure _help_2_3_3;
begin
    This_Player.HelperDialog(
    '���̳ǿ��Թ���ף���ޡ�ף���������Դ���50ƿף���͡�ף���Ϳ��Ա���ק����ף���ޣ�˫��ף����ÿ�ηų�һƿף���͡�'
    +'{cmd}|<����/@help_2_3>' 
    );
end;

procedure _help_2_4;
begin
    This_Player.HelperDialog(
    '����������|������ʿ��ȥ�߽���ˣ�ֻ������������ɳ�Ϳ���������������ϰ��ܹ��������������������ֻ��Ҫ������ҡ�������ʯ����Ʒ�������ϸ�������ȥ��������'
    +'{cmd}|<����/@help_2>' 
    );
end;

procedure _help_2_5;
begin
    This_Player.HelperDialog(
    '����������|��Ȼ�������ܹ�ͨ��ף���ͻ������ֵ�����߽�����ε������εļ���ʦ���ܹ�������ĥ��ɫ���������͵����������м��������ǻ�ø��ѵ����ԡ�'
    +'{cmd}|<����/@help_2>' 
    );
end;

procedure _help_4;
begin
    This_Player.HelperDialog(
    '���׷�ʽ��\ \'
    +'{cmd}|<Ԫ������/@help_4_1>             ^<��̯/@help_4_2>\'
    +'{cmd}|<�����ֱ�ӽ���/@help_4_3>\'
    +'{cmd}|<����/@main>' 
    );
end;

procedure _help_4_1;
begin
    This_Player.HelperDialog(
    'Ԫ�����ף�|�ڱ߽�ǵ�Ԫ��ʹ�ߴ�����������ָ������µ����ӵ���ʹ��Ԫ��������Ʒ��\ \'
    +'{cmd}|<����/@help_4>' 
    );
end;

procedure _help_4_2;
begin
    This_Player.HelperDialog(
    '��̯��|�������ڱ߽���ж����Խ��а�̯����С������㿴��̯λ�����������ڱ߽���ڣ���������Կ��Թ������̯λ������Ʒ��\'
    +'{cmd}|<����/@help_4>' 
    );
end;

procedure _help_4_3;
begin
    This_Player.HelperDialog(
    '�����ֱ�ӽ��ף�|��������������ʱ�����Ե�����׽���ֱ�ӽ��ס�'
    +'{cmd}|<����/@help_4>' 
    );
end;


procedure _helperSkill; 
begin
    This_Player.HelperDialog(
    '�����˽�����ְҵ�ļ��ܣ�\\'
    +'{cmd}|<սʿ/@helperSkillJob~0>    ^<��ʦ/@helperSkillJob~1>    ^<��ʿ/@helperSkillJob~2>\\'
    +'{cmd}|<����/@main>' 
    );
end;

function getSkillIdByStr(SkillName : string) : integer;
begin
    case SkillName of
        '��������' : result := 3;
        '��ɱ����' : result := 7;
        '��ɱ����' : result := 12;
        '�����䵶' : result := 25;
        'Ұ����ײ' : result := 27;
        '�һ𽣷�' : result := 26;
        'ʨ�Ӻ�' : result := 43;
        '���ս���' : result := 58;
        '������' : result := 1;
        '���ܻ�' : result := 8;
        '�ջ�֮��' : result := 20;
        '������' : result := 9;
        '�׵���' : result := 11;
        '˲Ϣ�ƶ�' : result := 21;
        '�����' : result := 5;
        '���ѻ���' : result := 23;
        '��ǽ' : result := 22;
        '�����Ӱ' : result := 10;
        '�����׹�' : result := 24;
        'ħ����' : result := 31;
        'ʥ����' : result := 32;
        '������' : result := 33;
        '������' : result := 39;
        '�����' : result := 35;
        '���ǻ���' : result := 59;
        '������' : result := 2;
        '������ս��' : result := 4;
        'ʩ����' : result := 6;
        '�����' : result := 13;
        '�ٻ�����' : result := 17;
        '������' : result := 18;
        '����������' : result := 19;
        '�����' : result := 14;
        '��ʥս����' : result := 15;
        '������ʾ' : result := 28;
        '��ħ��' : result := 16;
        'Ⱥ��������' : result := 29;
        '�ٻ�����' : result := 30;
        '������' : result := 37;
        '�޼�����' : result := 36;
        '��Ѫ��' : result := 48;
        else
        result := -1;
    end;
end;

function getSkillNameByJob(JobId , SkillId : integer) : string;
begin
    result := '';
    case JobId of
        0 : 
        begin
            case SkillId of
                1 : result := '��������';
                2 : result := '��ɱ����';
                3 : result := '��ɱ����';
                4 : result := '�����䵶';
                5 : result := 'Ұ����ײ';
                6 : result := '�һ𽣷�';
                7 : result := 'ʨ�Ӻ�';
                8 : result := '���ս���';

            end;
        end;
        1 : 
        begin
            case SkillId of
                1 : result := '������';
                2 : result := '�׵���';
                3 : result := '˲Ϣ�ƶ�';
                4 : result := '�����';
                5 : result := '���ѻ���';
                6 : result := '��ǽ';
                7 : result := '�����Ӱ';
                8 : result := '�����׹�';
                9 : result := 'ħ����';
                10 : result := 'ʥ����';
                11 : result := '������';
                12 : result := '������';
                13 : result := '�����';
                14 : result := '���ǻ���';

            end;
        end;
        2 : 
        begin
            case SkillId of
                1 : result := '�����';
                2 : result := '�ٻ�����';
                3 : result := '������';
                4 : result := '����������';
                5 : result := '�����';
                6 : result := '��ʥս����';
                7 : result := '������ʾ';
                8 : result := '��ħ��';
                9 : result := 'Ⱥ��������';
                10 : result := '�ٻ�����';
                11 : result := '������';
                12 : result := '�޼�����';
                13 : result := '��Ѫ��';

            end;
        end;
    end;
end;

function getSkillStr(Sid : integer) : string;
begin
    case Sid of
        3 : result := '7������ѧϰ�������������Ǳ������ܵȼ��������������׼ȷ���ԡ�';
        7 : result := '19������ѧϰ��ɱ������������߹������˺������ܵȼ�������������׼ȷ��';
        12 : result := '25������ѧϰ��ɱ���������ܶԸ�λ�ĵ�������˺����������ѧ�������λ��';
        25 : result := '28���Ϳ���ѧϰ�����䵶��������ͬʱ��������������Χ�����е��ˡ�';
        27 : result := '30��������ϰҰ����ײ��ײ�����������ĵ��ˡ����ҪС�ı�ײ���ϰ����ϡ�';
        26 : result := '�ﵽ35���Ϳ���ѧϰ�һ𽣷��ˡ�����սʿ��Ҫ���˺����ܣ���7�����ȴʱ�䡣';
        43 : result := '�ﵽ38���Ϳ���ѧϰʨ�Ӻ��ˣ�ʹ�������ù�����ʱ��ԡ�';
        58 : result := '47������ѧϰսʿ�߼��������ս��������ܹ���ֱ����4��ĵ��ˣ���10�����ȴʱ�䡣';
        1 : result := '������7������ѧϰ���Ƿ�ʦ�Ļ����������ܶ�Զ���ĵ�����ɵ����˺���';
        8 : result := '12������ѧϰ���ܻ𻷣������ƿ����ܵĵ��ˣ�ǰ�������Ǽ������͡�';
        20 : result := '13������ѧϰ�ջ�֮�⡣���ܸ��Ź���ʹ�����޷��������������ջ����ǳ�Ϊ��ı�����';
        9 : result := '16������ѧϰ���������Ƿ�ʦ��һ��Ⱥ�����ܣ����Զ�ǰ��5��ĵ�������˺���';
        11 : result := '17������ѧϰ��ʦ�ĺ��ļ����׵������������ǿ��ĵ����˺���';
        21 : result := '19������ѧϰ˲Ϣ�ƶ���ʹ�ü��ܻ�����ɵ��ϴ�·�����������ڵĵ�ͼ��';
        5 : result := '19���ܹ�ѧϰ�������ɱ�С�����������ˡ�';
        23 : result := '22������ѧϰ���ѻ��棬���ܶ�3X3�ķ�Χ����˺���';
        22 : result := '24������ѧϰ��ǽ���ͷ�֮������ȼ�գ���ǽ�еĵ��˻��ܵ������˺���';
        10 : result := '26������ѧϰ�����Ӱ���ܹ��Զ�ֱ���ϵĵ�������˺���';
        24 : result := '30������ѧϰ�����׹⣬��������ܹ������ܶ������ϵ��������˺���';
        31 : result := '31���ܹ�ѧϰħ���ܣ����Ƿ�ʦ����Ҫ�ķ������ܡ�';
        32 : result := '32������ѧϰʥ��������һ�������ܹ���ɱ����ϵ���';
        33 : result := '35������ѧϰ�������ˣ����ܶ�3X3��Χ�ĵ�����ɼ�����˺���';
        39 : result := '36������ѧϰ�����ƣ��������ܹ�����˺������м����ƶ����������ĵ��ˡ�';
        35 : result := '38������ѧϰ������������ܹ�����˺������ܹ����յ��˵�ħ��ֵ��';
        59 : result := '47������ѧϰ��ʦ�߼��������ǻ��ꡣ���˺���3X3�ķ�Χ��Ⱥ�弼�ܵĲ���֮ѡ��';
        2 : result := '7������ѧϰ�������������Ϳ��Ը��Լ��Ͷ��ѻظ�Ѫ���ˡ�';
        4 : result := '9����ʼѧϰ������ս�������Ǳ������ܣ����ܹ����������׼ȷ��';
        6 : result := '14������ѧϰʩ����������ʹ�ü���ʱ��������춾�����̶���';
        13 : result := '18������ѧϰ���������ʹ���ܹ�Զ�̹������ˣ�����������������';
        17 : result := '19������ѧϰ�ٻ����ã����ܵȼ�Խ�ߣ����ñ����ĵȼ�Ҳ��Խ�ߡ�';
        18 : result := '20������ѧϰ��������ʹ�ü����ܹ�ʹ�󲿷ֹ��ﶼ�޷������㡣';
        19 : result := '21������ѧϰ������������������Ҳ���԰�������ʵ������Ч���ˡ�';
        14 : result := '22������ѧϰ����ܣ��ܹ�������Χ�ڶ������ħ����';
        15 : result := '25������ѧϰ��ʥս�������ܹ�������Χ�ڶ�����߷�����';
        28 : result := '26������ѧϰ����������ʾ���������������һ��ʱ���ڲ鿴Ŀ�������ֵ��';
        16 : result := '28������ѧϰ��ħ�䣬����ס��Χ�ڵĹ�������󻹿��ԶԸ�����ǿ���Ĺ��';
        29 : result := '33������ѧϰȺ�����������ɻָ�ʩ�ŷ�Χ��������ҵ�����ֵ��';
        30 : result := '35������ѧϰ�ٻ����ޣ����ޱ����ǳ�ǿ��';
        37 : result := '29������ѧϰ�������ˣ�ֻҪ�ǵȼ�������ߵĵ��ˣ�������ƿ���';
        36 : result := '36������ѧϰ�޼�������ʹ�ú���6���ڴ���������ĵ�����';
        48 : result := '47������ѧϰ��ʿ�߼�������Ѫ�������ӵ��ζԵ�������˺���ͬʱ������ѪЧ����';

    end;
end;

function getSBookMSGstr(Sname : string):string;
begin
    case Sname of
        '������' : result := '�̵깺�򣬽�ʬϵ�С����þ��顢���Ͷ�ǳ�����и��ʱ���';
        '������' : result := '�̵깺�򣬽�ʬϵ�С����þ��顢���Ͷ�ǳ�����и��ʱ���';
        '��������' : result := '�̵깺�򣬽�ʬϵ�С����þ��顢���Ͷ�ǳ�����и��ʱ���';
        '������ս��' : result := '�̵깺�򣬽�ʬϵ�С����þ��顢���Ͷ�ǳ�����и��ʱ���';
        '�����' : result := '�̵깺�򣬽�ʬϵ�С����þ��顢���Ͷ�ǳ�����и��ʱ���';
        'ʩ����' : result := '�̵깺�򣬽�ʬϵ�С����þ��顢���Ͷ�ǳ�����и��ʱ���';
        '��ɱ����' : result := '�̵깺�򣬽�ʬϵ�С����þ��顢���Ͷ�ǳ�����и��ʱ���';
        '���ܻ�' : result := '�̵깺�򣬽�ʬϵ�С����þ��顢���Ͷ�ǳ�����и��ʱ���';
        '������' : result := '�̵깺�򣬽�ʬϵ�С����þ��顢���Ͷ�ǳ�����и��ʱ���';
        '�����Ӱ' : result := '�̵깺�򣬽�ʬϵ�С����þ��顢���Ͷ�ǳ�����и��ʱ���';
        '�׵���' : result := '�̵깺�򣬽�ʬϵ�С����þ��顢���Ͷ�ǳ�����и��ʱ���';
        '��ɱ����' : result := '�̵깺�򣬽�ʬϵ�С����þ��顢���Ͷ�ǳ�����и��ʱ���';
        '�����' : result := '�̵깺�򣬽�ʬϵ�С����þ��顢���Ͷ�ǳ�����и��ʱ���';
        '�����' : result := '�̵깺�򣬽�ʬϵ�С����þ��顢���Ͷ�ǳ�����и��ʱ���';
        '��ʥս����' : result := '�̵깺�򣬽�ʬϵ�С����þ��顢���Ͷ�ǳ�����и��ʱ���';
        '��ħ��' : result := '�̵깺�򣬽�ʬϵ�С����þ��顢���Ͷ�ǳ�����и��ʱ���';
        '�ٻ�����' : result := '�̵깺�򣬽�ʬϵ�С����þ��顢���Ͷ�ǳ�����и��ʱ���';
        '������' : result := '�̵깺�򣬽�ʬϵ�С����þ��顢���Ͷ�ǳ�����и��ʱ���';
        '����������' : result := '�̵깺�򣬽�ʬϵ�С����þ��顢���Ͷ�ǳ�����и��ʱ���';
        '�ջ�֮��' : result := '�̵깺�򣬽�ʬϵ�С����þ��顢���Ͷ�ǳ�����и��ʱ���';
        '˲Ϣ�ƶ�' : result := '�̵깺�򣬽�ʬϵ�С����þ��顢���Ͷ�ǳ�����и��ʱ���';
        '��ǽ' : result := '�̵깺�򣬽�ʬϵ�С����þ��顢���Ͷ�ǳ�����и��ʱ���';
        '���ѻ���' : result := '�̵깺�򣬽�ʬϵ�С����þ��顢���Ͷ�ǳ�����и��ʱ���';
        '�����׹�' : result := '�̵깺��ʬ������Ұ����Ʒ�����������и��ʱ���';
        '�����䵶' : result := '�̵깺��ʬ������Ұ����Ʒ�����������и��ʱ���';
        '�һ𽣷�' : result := '�̵깺��ʬ������Ұ����Ʒ�����������и��ʱ���';
        'Ұ����ײ' : result := '�̵깺�򣬽�ʬϵ�С����þ��顢���Ͷ�ǳ�����и��ʱ���';
        '������ʾ' : result := '�̵깺�򣬽�ʬϵ�С����þ��顢���Ͷ�ǳ�����и��ʱ���';
        'Ⱥ��������' : result := '�̵깺��ʬ������Ұ����Ʒ�����������и��ʱ���';
        '�ٻ�����' : result := '�̵깺��ʬ������Ұ����Ʒ�����������и��ʱ���';
        'ħ����' : result := '�̵깺��ʬ������Ұ����Ʒ�����������и��ʱ���';
        'ʥ����' : result := '�̵깺��ʬ������Ұ����Ʒ�����������и��ʱ���';
        '������' : result := 'ʬ������Ұ����Ʒ�����������и��ʱ���';
        '�����' : result := 'ħ����ʿ��ħ���޶ꡢħ��ս����ħ����������֮ħ�����������и��ʱ���';
        '�޼�����' : result := 'ħ����ʿ��ħ���޶ꡢħ��ս����ħ����������֮ħ�����������и��ʱ���';
        '������' : result := 'ħ����ʿ��ħ���޶ꡢħ��ս����ħ����������֮ħ�����������и��ʱ���';
        '������' : result := 'ħ����ʿ��ħ���޶ꡢħ��ս����ħ����������֮ħ�����������и��ʱ���';
        'ʨ�Ӻ�' : result := 'ħ����ʿ��ħ���޶ꡢħ��ս����ħ����������֮ħ�����������и��ʱ���';
        '��Ѫ��' : result := 'ʹ����ҳ�ڻʼҴ�ѧʿ���ɶһ�������';
        '���ս���' : result := 'ʹ����ҳ�ڻʼҴ�ѧʿ���ɶһ�������';
        '���ǻ���' : result := 'ʹ����ҳ�ڻʼҴ�ѧʿ���ɶһ�������';
    end;
end;

procedure _helperSkillJob(JobSId : string);
var i , jobId : integer;
str , SName : string;
begin
    str := '';
    jobId := StrToIntDef(JobSId , -1);
    
    for i := 1 to 14 do
    begin
        SName := getSkillNameByJob(jobId , i);
        if SName <> '' then
        begin
            str := str + '<' + SName + '/@@helper.call("skill",' + inttostr(getSkillIdByStr(SName)) + ')@SkillStrDlg~' + inttostr(getSkillIdByStr(SName) * 100 + jobId) + '>';
            
            if i mod 2 = 1 then
            str := str + addSpace(' ', 16 - length(SName)) + '^'
            else
            str := str + '|\'; 
        end else
        break;
    end;
    
    This_Player.HelperDialog(
    '��ѡ������Ҫ�˽�ļ��ܣ�\'
    +'{cmd}|' +str
    +'<����/@helperSkill>')
end;

procedure _SkillStrDlg(SJidStr : string);
var sjId , Sid , Jid : integer;
begin
    sjId := StrToIntDef(SJidStr , -1);
    Sid := sjId div 100;
    Jid := sjId mod 100;
    
    This_Player.HelperDialog(
    getSkillStr(Sid) + '\'
    +'{cmd}|<����/@helperSkillJob~' + inttostr(Jid) + '>');
end;

procedure _help_8;
var str_Job , Skill_XX , Skill_name : string; 
i , j , temp_job : integer;
begin
    temp_job := This_Player.Job;
    Skill_XX := '';
    j := 0;
    case temp_job of
        0 : str_Job := 'սʿ';
        1 : str_Job := '��ʦ';
        2 : str_Job := '��ʿ';
    end;
    
    for i := 1 to 14 do
    begin
        Skill_name :=  getSkillNameByJob(temp_job , i);
        if Skill_name <> '' then
        begin
          //  if This_Player.GetSkillLevelExt(Skill_name,false) >= 0 then
          //  Skill_XX := Skill_XX + '<' + Skill_name  + '/c=green>    '
          //  else
            if This_Player.GetSkillLevelExt(Skill_name,false) < 0 then
            begin
              Skill_XX := Skill_XX + '<' + Skill_name  + '/@@helper.call("skill",' + inttostr(getSkillIdByStr(Skill_name)) + ')@LookSelfSkill~' + Skill_name + '>    ';
              j := j + 1;
              if (j mod 2) = 1 then
              Skill_XX := Skill_XX + '^'
              else
              Skill_XX := Skill_XX + '|';
            end;           
            
        end
        else
        break;
        
    end;
    
    if (j mod 2) = 1 then
    Skill_XX := Skill_XX + '|';
    
    
    This_Player.HelperDialog(
    '�㻹����ѧϰ�ļ����У�\\'
    +'{cmd}|' + Skill_XX
    +'<�鿴����ְҵ����/@helperSkill>\'
    +'|<����/@main>'
    );
end;

procedure _LookSelfSkill(Sname : string);
begin
    This_Player.HelperDialog(
    Sname + '��'
    +'|���ܽ��ܣ�' + getSkillStr(getSkillIdByStr(Sname))
    +'|������ʽ��' + getSBookMSGstr(Sname)
    +'{cmd}|<����/@help_8>'
    );
end;


procedure _helpEquip;
begin
    This_Player.HelperDialog(
    '�����˽�����ְҵ��װ����\\'
    +'{cmd}|<սʿ/@helpEquipJob~0>    ^<��ʦ/@helpEquipJob~1>    ^<��ʿ/@helpEquipJob~2>||\\'
    +'<����/@main>' 
    );
end;

function getEquipIdByName(Ename : string;JobId : integer) : integer;
var tempEid : integer; 
IsTwoGender : boolean;
begin

    IsTwoGender := true;
    tempEid := 0;
    case Ename of
        '�˻�' : tempEid := 5;
        '���' : tempEid := 13;
        'ն��' : tempEid := 15;
        '����' : tempEid := 17;
        '��˪' : tempEid := 31;
        '����' : tempEid := 33;
        '������' : tempEid := 39;
        '�þ�֮��' : tempEid := 51;
        '����֮��' : tempEid := 53;
        '����' : tempEid := 59;
        'ŭն' : tempEid := 71;
        '����' : tempEid := 81;
        '����' : tempEid := 9;
        '����' : tempEid := 21;
        'ħ��' : tempEid := 37;
        'Ѫ��' : tempEid := 43;
        '����Ȩ��' : tempEid := 57;
        '�Ȼ귨��' : tempEid := 63;
        '����' : tempEid := 73;
        '����' : tempEid := 85;
        '����' : tempEid := 7;
        '��ħ' : tempEid := 19;
        '����' : tempEid := 35;
        '�޼���' : tempEid := 41;
        '���ƽ�' : tempEid := 55;
        '��ң��' : tempEid := 61;
        '����' : tempEid := 83;
        '���Ϳ���' : tempEid := 3;
        '���Ϳ���' : tempEid := 11;
        '�ؿ���' : tempEid := 23;
        'ս�����' : tempEid := 45;
        '��ħ���' : 
        begin
        tempEid := 65;
        IsTwoGender := false;
        end;
        'ʥս����' : 
        begin
        tempEid := 66;
        IsTwoGender := false;
        end;
        '����ս��' : tempEid := 75;
        '���Ϳ���' : tempEid := 3;
        '���Ϳ���' : tempEid := 11;
        'ħ������' : tempEid := 27;
        '��ħ����' : tempEid := 49;
        '��������' : tempEid := 69;
        '��������' : 
        begin
        tempEid := 70;
        IsTwoGender := false;
        end;
        '����ħ��' : 
        begin
        tempEid := 79;
        IsTwoGender := false;
        end;
        '���Ϳ���' : tempEid := 3;
        '���Ϳ���' : tempEid := 11;
        '���ս��' : tempEid := 25;
        '����ս��' : tempEid := 47;
        '�������' :
        begin
        tempEid := 67;
        IsTwoGender := false;
        end;
        '��ʦ����' :
        begin
        tempEid := 68;
        IsTwoGender := false;
        end;
        '��â����' : tempEid := 77;
        '����ħ��' : 
        begin
            case JobId of
                0 : tempEid := 87;
                1 : tempEid := 89;
                2 : tempEid := 91;
            end;
            IsTwoGender := false;
        end;
        '����ħ��' :
        begin
            case JobId of
                0 : tempEid := 88;
                1 : tempEid := 90;
                2 : tempEid := 92;
            end;
            IsTwoGender := false;
        end;
    end;
    
    if IsTwoGender then
    begin
       if This_Player.Gender = 0 then
       result := tempEid
       else
       result := tempEid + 1;
    end else
    result := tempEid;
end;

function getWPnameById(jobId , WpId : integer) : string; 
begin
    result := '';
    case jobId of
        0 :
        begin
            case WpId of
                1 : result := '�˻�';
                2 : result := '���';
                3 : result := 'ն��';
                4 : result := '����';
                5 : result := '��˪';
                6 : result := '����';
                7 : result := '������';
                8 : result := '�þ�֮��';
                9 : result := '����֮��';
                10 : result := '����';
                11 : result := 'ŭն';
                12 : result := '����';

            end;
        end;
        1 :
        begin
            case WpId of
                1 : result := '����';
                2 : result := '����';
                3 : result := 'ħ��';
                4 : result := 'Ѫ��';
                5 : result := '����Ȩ��';
                6 : result := '�Ȼ귨��';
                7 : result := '����';
                8 : result := '����';

            end;
        end;
        2 :
        begin
            case WpId of
                1 : result := '����';
                2 : result := '��ħ';
                3 : result := '����';
                4 : result := '�޼���';
                5 : result := '���ƽ�';
                6 : result := '��ң��';
                7 : result := '����';

            end;
        end;
    end;
end;

function getYFnameById(jobId , YFId : integer) : string; 
begin
    result := '';
    case jobId of
        0 :
        begin
            case YFId of
                1 : result := '���Ϳ���';
                2 : result := '���Ϳ���';
                3 : result := '�ؿ���';
                4 : result := 'ս�����';
                5 : result := '��ħ���';
                6 : result := 'ʥս����';
                7 : result := '����ս��';
                8 : result := '����ħ��';
                9 : result := '����ħ��';


            end;
        end;
        1 :
        begin
            case YFId of
                1 : result := '���Ϳ���';
                2 : result := '���Ϳ���';
                3 : result := 'ħ������';
                4 : result := '��ħ����';
                5 : result := '��������';
                6 : result := '��������';
                7 : result := '����ħ��';
                8 : result := '����ħ��';
                9 : result := '����ħ��';

            end;
        end;
        2 :
        begin
            case YFId of
                1 : result := '���Ϳ���';
                2 : result := '���Ϳ���';
                3 : result := '���ս��';
                4 : result := '����ս��';
                5 : result := '�������';
                6 : result := '��ʦ����';
                7 : result := '��â����';
                8 : result := '����ħ��';
                9 : result := '����ħ��';

            end;
        end;
    end;
end;

function getEquipStr(Eid : integer) : string;
begin
    case Eid of
        1 : result := '������������������������ɵĵ�ͼ�ڿ�11������ʹ�á�';
        2 : result := '������������������������ɵĵ�ͼ�ڿ�11������ʹ�á�';
        3 : result := '���Ϳ���11�����ܴ��������԰�����˳���ɹ�ǰ�ڡ�����3-3ħ��1-2���Ȳ��ºö��ˡ�';
        4 : result := '���Ϳ���11�����ܴ��������԰�����˳���ɹ�ǰ�ڡ�����3-3ħ��1-2���Ȳ��ºö��ˡ�';
        5 : result := '15�����ϰ˻ģ������Ϊսʿ�ˡ�����4-12�ܹ������������ʱ���޾�ɫ��';
        6 : result := '15�����ϰ˻ģ������Ϊսʿ�ˡ�����4-12�ܹ������������ʱ���޾�ɫ��';
        7 : result := '�����ǻ�õ����ĵ�һ��������15������ʹ�ã�����5-10����1-1��';
        8 : result := '�����ǻ�õ����ĵ�һ��������15������ʹ�ã�����5-10����1-1��';
        9 : result := '����ħ��1-2���Ƿ�ʦǰ�ڵĵ���������15������ʹ�á�';
        10 : result := '����ħ��1-2���Ƿ�ʦǰ�ڵĵ���������15������ʹ�á�';
        11 : result := '16�����Դ����Ϳ����ˣ�����3-5ħ��1-2���ܹ��������������˺���';
        12 : result := '16�����Դ����Ϳ����ˣ�����3-5ħ��1-2���ܹ��������������˺���';
        13 : result := '�����һ������Ѹ�ݵ���������������ȼ�19������6-12��';
        14 : result := '�����һ������Ѹ�ݵ���������������ȼ�19������6-12��';
        15 : result := '������������������ն������5-15��������Ҫ�ȼ�20��';
        16 : result := '������������������ն������5-15��������Ҫ�ȼ�20��';
        17 : result := '���ޣ����������������һ��Σ�ա�������0-20����Ҫ�ȼ�22��';
        18 : result := '���ޣ����������������һ��Σ�ա�������0-20����Ҫ�ȼ�22��';
        19 : result := '��ħ�����ֱ���ʹ����˵�ʿ�����Ρ�������Ҫ�ȼ�20������6-11����1-2��';
        20 : result := '��ħ�����ֱ���ʹ����˵�ʿ�����Ρ�������Ҫ�ȼ�20������6-11����1-2��';
        21 : result := '�����ܹ�����1-3��ħ����������Ҫ�ȼ�20���ú�ʹ������ ';
        22 : result := '�����ܹ�����1-3��ħ����������Ҫ�ȼ�20���ú�ʹ������ ';
        23 : result := '22���ܹ������ؿ��ף���Ϊ������սʿ���ؿ��׷���4-7ħ��2-3��';
        24 : result := '22���ܹ������ؿ��ף���Ϊ������սʿ���ؿ��׷���4-7ħ��2-3��';
        25 : result := '22���ܹ��������ս�£���Ϊ�����ĵ�ʿ�����ս�·���3-6ħ��3-3����0-2��';
        26 : result := '22���ܹ��������ս�£���Ϊ�����ĵ�ʿ�����ս�·���3-6ħ��3-3����0-2��';
        27 : result := '22���ܹ�����ħ�����ۣ���Ϊ�����ĵ�ʿ��ħ�����۷���3-5ħ��3-4ħ��0-2��';
        28 : result := '22���ܹ�����ħ�����ۣ���Ϊ�����ĵ�ʿ��ħ�����۷���3-5ħ��3-4ħ��0-2��';
        29 : result := '22���ܹ������ؿ��ף��������ޣ���Ϊ������սʿ��';
        30 : result := '22���ܹ������ؿ��ף��������ޣ���Ϊ������սʿ��';
        31 : result := '��˪����10-13�������ȶ��ķ��ӣ�������Ҫ�ȼ�25��';
        32 : result := '��˪����10-13�������ȶ��ķ��ӣ�������Ҫ�ȼ�25��';
        33 : result := '��������0-25��������Ҫ�ȼ�26����Ѿ޴��ս������սʿ���׵ı�־��';
        34 : result := '��������0-25��������Ҫ�ȼ�26����Ѿ޴��ս������սʿ���׵ı�־��';
        35 : result := '���߹���7-14����1-3׼ȷ+1��������Ҫ�ȼ�26�����ǵ�ʿ���׵ı�־��';
        36 : result := '���߹���7-14����1-3׼ȷ+1��������Ҫ�ȼ�26�����ǵ�ʿ���׵ı�־��';
        37 : result := 'ħ�����ṩ2-5��ħ����������Ҫ�ȼ�26���Ƿ�ʦ���׵ı�־��';
        38 : result := 'ħ�����ṩ2-5��ħ����������Ҫ�ȼ�26���Ƿ�ʦ���׵ı�־��';
        39 : result := '��������������£������ޱȡ������������¡�';
        40 : result := '��������������£������ޱȡ������������¡�';
        41 : result := '����ƽ�������ͣ�ȴ�̺������޵�������������޼�����';
        42 : result := '����ƽ�������ͣ�ȴ�̺������޵�������������޼�����';
        43 : result := 'Ѫ�����źܸߵ�׼ȷ��Ȼ��������ܷ�ʦ��ӭ���ƺ����б��ԭ��';
        44 : result := 'Ѫ�����źܸߵ�׼ȷ��Ȼ��������ܷ�ʦ��ӭ���ƺ����б��ԭ��';
        45 : result := 'ս����׷���5-9ħ��3-5��������Ҫ������46�����ң���ĸ���Ҫ�㹻��';
        46 : result := 'ս����׷���5-9ħ��3-5��������Ҫ������46�����ң���ĸ���Ҫ�㹻��';
        47 : result := '����ս�·���4-7ħ��3-4����1-4������Ҫ����27�����ң���ĸ���Ҫ�㹻��';
        48 : result := '����ս�·���4-7ħ��3-4����1-4������Ҫ����27�����ң���ĸ���Ҫ�㹻��';
        49 : result := '��ħ���۷���4-7 ħ��3-4 ħ��1-4������Ҫħ��28�����ң���ĸ���Ҫ�㹻��';
        50 : result := '��ħ���۷���4-7 ħ��3-4 ħ��1-4������Ҫħ��28�����ң���ĸ���Ҫ�㹻��';
        51 : result := '�þ����䲻ƽ�£��Ӷϳ��������顣�þ�֮�ȣ�����0-30����սʿ��ݵ�������';
        52 : result := '�þ����䲻ƽ�£��Ӷϳ��������顣�þ�֮�ȣ�����0-30����սʿ��ݵ�������';
        53 : result := '����ס�Լ������ˣ������������˵����ˣ����Ҫ�ú��ˡ�����12-16�����㲻������ԡ�';
        54 : result := '����ס�Լ������ˣ������������˵����ˣ����Ҫ�ú��ˡ�����12-16�����㲻������ԡ�';
        55 : result := '��������֪�����ƽ�������,���ܶ��˶���˵���������������ǵ�ʿ��ݵ�������';
        56 : result := '��������֪�����ƽ�������,���ܶ��˶���˵���������������ǵ�ʿ��ݵ�������';
        57 : result := '����Ȩ�ȼ��йǵ��ʸУ�����������������Ƿ�ʦ��ݵ�������';
        58 : result := '����Ȩ�ȼ��йǵ��ʸУ�����������������Ƿ�ʦ��ݵ�������';
        59 : result := '�������𣬱����������������£�Ī�Ҳ��ӡ��������������սʿ��������֮�';
        60 : result := '�������𣬱����������������£�Ī�Ҳ��ӡ��������������սʿ��������֮�';
        61 : result := '��ң�����������µ�����귨��½���м������ʸ���������������������е�ʿ��������֮�';
        62 : result := '��ң�����������µ�����귨��½���м������ʸ���������������������е�ʿ��������֮�';
        63 : result := '�Ȼ귨���ܹ���ȡ����֮�꣬Ψ�����ߵ�ħ�����ܹ���Ԧ����������������з�ʦ��������֮�';
        64 : result := '�Ȼ귨���ܹ���ȡ����֮�꣬Ψ�����ߵ�ħ�����ܹ���Ԧ����������������з�ʦ��������֮�';
        65 : result := '��ħ�������սʿר����40��ս�£�������棬˭���봩�����أ�';
        66 : result := 'ʥս������Ůսʿר����40��ս�£�������棬˭���봩�����أ�';
        67 : result := '����������е�ʿר����40��ս�£�������棬˭���봩�����أ�';
        68 : result := '��ʦ������Ů��ʿר����40��ս�£�������棬˭���봩�����أ�';
        69 : result := '�����������з�ʦר����40��ս�£����Ż�����˭���봩�����أ�';
        70 : result := '����������Ů��ʦר����40��ս�£����Ż�����˭���봩�����أ�';
        71 : result := 'ŭն����12-26׼ȷ+3�������������������ʲô���ĵ��˶��޴���ء�';
        72 : result := 'ŭն����12-26׼ȷ+3�������������������ʲô���ĵ��˶��޴���ء�';
        73 : result := '��˵����������Ϲž��������ݣ�������������������';
        74 : result := '��˵����������Ϲž��������ݣ�������������������';
        75 : result := '��������ս�ף�����ܵ�һ������֮���Ķ���������ֱǰ����Ҳ�Ƕ���սʿ�����Ρ�';
        76 : result := '��������ս�ף�����ܵ�һ������֮���Ķ���������ֱǰ����Ҳ�Ƕ���սʿ�����Ρ�';
        77 : result := '���Ϲ�â���ۣ����ߵ��Ķ��������ڰ�����������Ҳ�Ƕ�����ʿ����ҫ��';
        78 : result := '���Ϲ�â���ۣ����ߵ��Ķ��������ڰ�����������Ҳ�Ƕ�����ʿ����ҫ��';
        79 : result := '��������ħ�£������޾�������ͻ�������һ������Ҳ�Ƕ�����ʦ��������';
        80 : result := '��������ħ�£������޾�������ͻ�������һ������Ҳ�Ƕ�����ʦ��������';
        81 : result := '�������귨�������֮һ���ܹ��������ıض�����ΰ���սʿ���ػ���أ�־���귨��';
        82 : result := '�������귨�������֮һ���ܹ��������ıض�����ΰ���սʿ���ػ���أ�־���귨��';
        83 : result := '�������귨�������֮һ���ܹ��������ıض�����ΰ��ĵ�ʿ���ػ���أ�־���귨��';
        84 : result := '�������귨�������֮һ���ܹ��������ıض�����ΰ��ĵ�ʿ���ػ���أ�־���귨��';
        85 : result := '�������귨�������֮һ���ܹ��������ıض�����ΰ��ķ�ʦ���ػ���أ�־���귨��';
        86 : result := '�������귨�������֮һ���ܹ��������ıض�����ΰ��ķ�ʦ���ػ���أ�־���귨��';
        87 : result := '����ħ���ں��˷��֮��������������ʿҲ�辭��ԡ���������������ʸ�������';
        88 : result := '����ħ���ں��˷��֮��������������ʿҲ�辭��ԡ���������������ʸ�������';
        89 : result := '����ħ���ں��˷��֮��������������ʿҲ�辭��ԡ���������������ʸ�������';
        90 : result := '����ħ���ں��˷��֮��������������ʿҲ�辭��ԡ���������������ʸ�������';
        91 : result := '����ħ���ں��˷��֮��������������ʿҲ�辭��ԡ���������������ʸ�������';
        92 : result := '����ħ���ں��˷��֮��������������ʿҲ�辭��ԡ���������������ʸ�������';

    end;
end;

procedure _helpEquipJob(JobSid : string); 
var JobId , i , j , k : integer;
str , str_1 , str_2 , wpName , YFname : string;
begin
    JobId := StrToIntDef(JobSid , -1);
    str := '';
    str_1 := '';
    str_2 := '';
    j := 0;
    k := 0;
    for i := 1 to 12 do
    begin
        wpName := getWPnameById(JobId , i);
        YFname := getYFnameById(JobId , i);
        
        if wpName <> '' then
        begin
            j := j + 1;
            str_1 := '{cmd}|<' + wpName + '/@@helper.call("equip",' + inttostr(getEquipIdByName(wpName,JobId)) + ')@EquipStrDlg~' + inttostr(getEquipIdByName(wpName,JobId) * 100 + JobId) + '>'  + addSpace(' ', 16 - length(wpName));
        end else
        str_1 := '';
        
        if YFname <> '' then
        begin
            k := k + 1;
            
            if k > j then
            str_2 := '|</@helpEquip> ^' + '<' + YFname + '/@@helper.call("equip",' + inttostr(getEquipIdByName(YFname,JobId)) + ')@EquipStrDlg~' + inttostr(getEquipIdByName(YFname,JobId) * 100 + JobId) + '>' + '\'
            else
            str_2 := '^' + '<' + YFname + '/@@helper.call("equip",' + inttostr(getEquipIdByName(YFname,JobId)) + ')@EquipStrDlg~' + inttostr(getEquipIdByName(YFname,JobId) * 100 + JobId) + '>' + '\'; 
        end else
        str_2 := '';
        
        str := str + str_1 + str_2;

    end;
    This_Player.HelperDialog(
    '��ѡ������Ҫ�鿴��װ����\'
    + str
    +'|<����/@helpEquip>')
end;

procedure _EquipStrDlg(EquipJobId : string);
var EJid , Eid , Jid : integer; 
begin
    EJid := StrToIntDef(EquipJobId , -1);
    Eid := EJid div 100;
    Jid := EJid mod 100;
    
    This_Player.HelperDialog(
    getEquipStr(Eid) + '\\' 
    +'|<����/@helpEquipJob~' + inttostr(Jid) + '>');
end;
procedure _help_9;
begin
    This_Player.HelperDialog(
    '�����˽�ʲôװ��\\'
    +'{cmd}|<����װ��/@help_9_1>    ^<����װ��/@>    ^<����װ��/@>\'
    +'{cmd}|<ǿ��װ��/@>    ^<ս��װ��/@>    ^<����װ��/@>\'
    +'{cmd}|<�·�����/@>\'
    +'{cmd}|<����/@main>\' 
    );
end;  

procedure _help_9_1;
begin
    This_Player.HelperDialog(
    '����װ����\'
    +'������xxxxxxx\\'
    +'{cmd}|<�鿴սʿ����װ��/@help_9_1_1>\'
    +'{cmd}|<�鿴��ʦ����װ��/@help_9_1_2>\'
    +'{cmd}|<�鿴��ʿ����װ��/@help_9_1_3>\'
    +'{cmd}|<����/@help_9>\' 
    );
end; 

procedure _help_9_1_1;
begin
    This_Player.HelperDialog(
    'սʿ����װ����\\'
    +'������ָ����ʿ������ɫ����\'
    +'��ͭ�������ϳ�ѥ������ͷ��\'
    +'����ұ�װ�����ɲ鿴����\' 
    +'{cmd}|<����/@help_9>\' 
    );
end; 

procedure _help_5;
begin
    This_Player.HelperDialog(
    '��Ϸ����Ҫ�罻��ʽ�У�\' 
    +'{cmd}|<����ϵͳ/@help_5_1>      ^<ս���л�ϵͳ/@help_5_2>\'
    +'{cmd}|<���ϵͳ/@help_5_3>      ^<���ϵͳ/@help_5_4>\' 
    +'{cmd}|<����ϵͳ/@help_5_5>\' 
    +'{cmd}|<����/@main>\' 
    );
end; 

procedure _help_5_1;
begin
    This_Player.HelperDialog(
    '����ϵͳ��|�㿪Ѫ���·������ز˵��������ڲ�������ק�����Ѳ˵�����������Ӻ��ѡ��鿴�������ˡ���ע��ҡ����ú�������\'
    +'{cmd}|<��Ӻ���/@help_5_1_1>      ^<��������/@help_5_1_2>\'
    +'{cmd}|<��ע�б�/@help_5_1_3>      ^<������/@help_5_1_4>\'  
    +'{cmd}|<����/@help_5>\' 
    );
end; 

procedure _help_5_1_1;
begin
    This_Player.HelperDialog(
    '��Ӻ��ѣ�|����������Ϸ����Ӻ��ѣ�������������Ӻ�˽�ģ����ܹ�ע�������µĵȼ�װ�������\'
    +'{cmd}|<����/@help_5_1>\' 
    );
end; 

procedure _help_5_1_2;
begin
    This_Player.HelperDialog(
    '�������ˣ�|�����Բ鿴��������ң������Ǽ�Ϊ���ѻ��ע����������һͬ��ӡ�\'
    +'{cmd}|<����/@help_5_1>\' 
    );
end; 

procedure _help_5_1_3;
begin
    This_Player.HelperDialog(
    '��ע�б�|�����Զ������ӹ�ע���Զ�����ɫ�����������Ⱥ�н�����ʾ����ͬ����ɫ������һ�۾��ܿ����Է���\'
    +'{cmd}|<����/@help_5_1>\' 
    );
end; 

procedure _help_5_1_4;
begin
    This_Player.HelperDialog(
    '��������|������Ϊ�����������������Ƶ���ķ����������������һ������ɧ�š�\'
    +'{cmd}|<����/@help_5_1>\' 
    );
end; 

procedure _help_5_2;
begin
    This_Player.HelperDialog(
    'ս���л�ϵͳ��|��Ѫ���·������ز˵��У�����лᰴť���ɴ��л�ս��ϵͳ���ڲ�����Ҳ���Խ��е��á�\'
    +'{cmd}|<ս��ϵͳ/@help_5_2_1>    ^<�л�ϵͳ/@help_5_2_2>' 
    +'{cmd}|<����/@help_5>\' 
    );
end; 

procedure _help_5_2_1;
begin
    This_Player.HelperDialog(
    'ս��ϵͳ��|Ϊ�����л������ҿ��Գ���ս�ӣ�ս�Ӷӳ����ܹ�������Ҽ����лᡣ�������������ѯ��������������ڱ��湬���\'
    +'{cmd}|<����/@help_5_2>\' 
    );
end;

procedure _help_5_2_2;
begin
    This_Player.HelperDialog(
    '�л�ϵͳ��|�л���һ�����ͥ�������л��ܹ�������Ϸ�ĸ����淨����ɳ���Ǵ����һ��ʢ�䡣�������������ѯ��������������ڱ��湬���\'
    +'{cmd}|<����/@help_5_2>\' 
    );
end;

procedure _help_5_3;
begin
    This_Player.HelperDialog(
    '���ϵͳ��|��������귨��½�Ѿ�����һ��������5�����ϣ������������İ���Ů�ӣ�����һö����ָ����ħ�ȳǱ�����Ե���ȥ�����ϰɡ�\' 
    +'{cmd}|<���ǰ��/@help_5_3_1>    ^<�˽����/@help_5_3_2>' 
    +'{cmd}|<����/@help_5>\' 
    );
end; 

procedure _help_5_3_1;
begin
    This_Player.HelperDialog(
    '���ǰ����|��ħ�ȳǱ���һ��С̨��ͨ����Ե����Ҫ�ﵽ����Ҫ����һ��ͬ��С��������ͬ�ģ������Ͻ�\' 
    +'{cmd}|<����/@help_5_3>\' 
    );
end; 

procedure _help_5_3_2;
begin
    This_Player.HelperDialog(
    '�˽���磺|�����ô���Բ�����ϯ����������������������ٰ���磬��ʽ�ŵ䡢ŷʽ���á��߼����ƴ�����磬ÿһ�ֶ�������������\' 
    +'{cmd}|<����/@help_5_3>\' 
    );
end; 

procedure _help_5_4;
begin
    This_Player.HelperDialog(
    '���ϵͳ��|��Ϸ��������ѶȽϸߵĵ�ͼ����ӽ�����Ӱ�ȫ�������ԺͶ��ѷ�����͵�����Ʒ����Ѫ���·������ز˵����е����Ӽ��ɽ������ϵͳ���ڲ����л����Ե��ÿ�����Ӱ�����\' 
    +'{cmd}|<����/@help_5>\' 
    );
end;                                                                                 

procedure _help_5_5;
begin
    This_Player.HelperDialog(
    '����ϵͳ��|һ���ú���������Ϻ��ֵܵ��߽�ǵĽ����֤�������ݰɡ�����ɹ������������������������ֵܴ��͡�\' 
    +'{cmd}|<����/@help_5>\' 
    );
end; 

procedure _help_7; 
begin
   This_Player.HelperDialog(
    '��Ϸ��ֵ��|�㿪Ѫ���·����ص��̳ǲ˵������Խ���Ԫ����ֵ������������ܴ����ӳ٣������ĵȴ����������⣬������ϵ�ʺ�ͷ���\'
    +'{cmd}|<��������/@help_7_1>\'  
    +'{cmd}|<����/@main>\' 
    );
end;

procedure _help_7_1;
begin
    This_Player.HelperDialog(
    '�������ࣺ|�������н�ҡ�Ԫ����������ֻ��ҡ���ҿ������ճ���Ϸ�л�ã�Ԫ�����ɳ�ֵ�����֮�佻�׻�ã������Ԫ����ֵ��ͬ����ͨ��һЩ������á�\' 
    +'{cmd}|<����/@help_7>\' 
    );
end; 

procedure _help_10;
begin
    This_Player.HelperDialog(
    '��δ��ͨ\' 
    +'{cmd}|<����/@main>\' 
    );
end;

procedure _help_6;
begin
    This_Player.HelperDialog(
    '��Ϸ����Ҫ��ϵͳ�У�\' 
    +'{cmd}|<��������ֵϵͳ/@help_6_1>       ^<���÷�ϵͳ/@help_6_2>\' 
    +'{cmd}|<����ϵͳ/@help_6_3>       ^<����ϵͳ/@help_6_4>\'
    +'{cmd}|<����/@main>\'
    );
end;

procedure _help_6_1;
begin
    This_Player.HelperDialog(
    '����ֵϵͳ��|����ֵ������ֵ���ڴ��ʱת��Ϊ�������⾭�顣�������Ļ�Ϸ����������ļ�ͷ��ť�鿴�Լ��ľ���ֵ������ֵ���洢����ֵ��\' 
    +'{cmd}|<����ֵ/@help_6_1_1>       ^<����ֵ/@help_6_1_2>\' 
    +'{cmd}|<�洢����ֵ/@help_6_1_3>\' 
    +'{cmd}|<����/@help_6>\'
    );
end;

procedure _help_6_1_1;
begin
    This_Player.HelperDialog(
    '����ֵ��|����ֵ���ɾ���ˮ�������������ڱ߽�ǵ����µ�һ����ʹ��������Ĥ�ݣ�Ҳ���Ի�þ���ֵ��������ڴ�ֻ����л���˾���ˮ��������ȥ�ұ߽�ǵ�ˮ������ʦ�����м�����\' 
    +'{cmd}|<����/@help_6_1>\'
    );
end;

procedure _help_6_1_2;
begin
    This_Player.HelperDialog(
    '����ֵ��|���ÿ�չ��ƿɻ��48��ϵͳ���͵Ļ���ֵ������δ��¼����ֵҲ���ۼơ�����п��ܵ������ˮ����˫��ʹ��Ҳ�����ӻ���ֵ���������������ʱ߽�ǵ�ˮ������ʦ��\' 
    +'{cmd}|<����/@help_6_1>\'
    );
end;

procedure _help_6_1_3;
begin
    This_Player.HelperDialog(
    '�洢����ֵ��|�ھ���ֵ�ͻ���ֵ��ʹ����Ϻ󣬵��մ�ֻ�õĶ��⾭��ֵ�����洢���������ڱ߽�ǵ�ˮ������ʦ��ʹ�û���ֵ����ֵ������ȡ��\' 
    +'{cmd}|<����/@help_6_1>\'
    );
end;

procedure _help_6_2;
begin
   This_Player.HelperDialog(
    '���÷�ϵͳ��|��ҿ��ڸ�����NPC�Ͳֿ����Ա���鿴���÷ֲ�������֤����֤��������ܸ��ร������Ϸ�����㡣\'
    +'���¶ᱦ��ѧϰ�߼����ܡ������̳ǵ��ߡ���ɱBoss����������Ϊ���������÷֡�\' 
//    +'{cmd}|<���ʹ��/@help_6_2_1>       ^<��λ�ȡ/@help_6_2_2>\' 
    +'{cmd}|<����/@help_6>\'
    );
end;

procedure _help_6_2_1;
begin
    This_Player.HelperDialog(
    '���÷ֵ���30�ֺ���ڸ���ͼ����NPC�Ͳֿ����Ա��������֤����֤�û��ܹ�����ȫ����Ϸ���ݡ�\' 
    +'{cmd}|<����/@help_6_2>\'
    );
end;

procedure _help_6_2_2;
begin
    This_Player.HelperDialog(
    '�������Ϸ�в�����¶ᱦ����ɱBoss�������ʹ�õ��ߡ�ѧϰ�߼����ܵ���෽���������������÷֡�\' 
    +'{cmd}|<����/@help_6_2>\'
    );
end;

procedure _help_6_3;
begin
   This_Player.HelperDialog(
    '����ϵͳ��|�����ڹ��ô�ָ������ɣ��㿪Ѫ���µ����ز˵���������-�����ڿ��Խ����Զ���һ����ã��ڲ����е��ùһ���ť������ʵ��һ���һ���\' 
    +'{cmd}|<ע������/@help_6_3_2>\' //|<�������/@help_6_3_1>       ^
    +'{cmd}|<����/@help_6>\'
    );
end;

procedure _help_6_3_1;
begin
    This_Player.HelperDialog(
    '�������Ϸ�����е�"����"��������Խ��йһ����ã��ڲ����е���"�һ�"��ť���Կ����Զ��һ���\' 
    +'{cmd}|<����/@help_6_3>\'
    );
end;

procedure _help_6_3_2;
begin
    This_Player.HelperDialog(
    'ע�����|�����һ�ֻ�����ڴ������������ս��ͼ�ڹһ������ٷ�ź�������÷ֵ��ϳ͡�\'
    +'|��ս��ͼ�У����ߴ�����ʯĹ�߲㡢����֮�䡢��������߲������ţħ���������ħ���������������㡣\'
    +'{cmd}|<����/@help_6_3>\'
    );
end;

procedure _help_6_4;
begin
   This_Player.HelperDialog(
    '����ϵͳ��|���衢���졢�л�ս���������������㡣�����Ѫ���·������������˵������ڲ�����ֱ����ק��������ť���ɽ���������\'
    +'{cmd}|<ʵʱ����/@help_6_4_1>       ^<��������/@help_6_4_2>\' //
    +'{cmd}|<����/@help_6>\'
    );
end;

procedure _help_6_4_1;
begin
    This_Player.HelperDialog(
    'ʵʱ������|������������ϵͳ���������һ��Ƶ�����ڲ����д�ʵʱ�������Ϳ���ʵʱ���к�Ƶ���ڵ���ҽ��жԻ��ˡ�\'
    +'{cmd}|<����/@help_6_4>\'
    );
end;

procedure _help_6_4_2;
begin
    This_Player.HelperDialog(
    '����������|�������ڲ����е���������ť���Ϳ��������硢������˽�ĵ����Ƶ�������������Ժ����ˡ�\'
    +'{cmd}|<����/@help_6_4>\'
    );
end;

procedure _help_3;
begin
    This_Player.HelperDialog(
    '��Ϸ��ͼ��|�����������Ͻǲ鿴��ͼ����Ҳ������·�ˡ�\'
    +'{cmd}|<�鿴��ͼ/@help_3_1>        ^<��ͼ����/@help_3_2>\'
    +'{cmd}|<��ͼ����/@help_3_3>        ^<��ս��ͼ/@help_3_4>\'
    +'{cmd}|<����/@main>\'
    );
end;

procedure _help_3_1;
begin
    This_Player.HelperDialog(
    '�鿴��ͼ��|������Ͻǵ�С��ͼ���򿪵�ͼ���档�����Բ鿴�����ͼ�������ͼ���������ͼ���ܿ��Ѱ·��NPC����������ͽ�ָ����һ�����͵�����ȥ�ĵط���\'
    +'{cmd}|<����/@help_3>\'
    );
end;

procedure _help_3_2;
begin
    This_Player.HelperDialog(
    '��ͼ���ԣ�|��ͼ��Ϊս����ͼ�Ͱ�ȫ��ͼ����ȫ���ڲ�����PK������һЩ�������Եĵ�ͼ��PK����������װ������ֻ�����ض���Ʒ����Щ�����ڹ�����˵���ġ�\'
    +'{cmd}|<����/@help_3>\'
    );
end;

procedure _help_3_3;
begin
    This_Player.HelperDialog(
    '��ͼ���ܣ�|\'
    +'���桢���ء����µ�����ħ���Ǽ��������ҩ�����������ε�һӦ\'
    +'��ȫ������ɽ�ȡ�����ɭ�֡�ħ�����������δ֪��Σ�ա�\'
    +'�߽��������������ɽ��׳ǣ����ڵ�NPCһ���������ؼ���\'
    +'���������귨��½���һ�龻����������Ǳ�����еĵ��ӣ�\'
    +'�пտ���ȥ�ιۡ�\ \'
    +'{cmd}|<����/@help_3>\'
    );
end;

procedure _help_3_4;
begin
    This_Player.HelperDialog(
    '��ս��ͼ��|\'
    + '���ߴ�����ʯĹ�߲㡢����֮�䡢��������߲������ţħ�������\'
    +'��ħ���������������㡣����Щ�ط�������ܻ�������ǿ��Ĺ��\'
    +'��Ȼ��������ܻ�ɱ���ǣ�������ȻҲ�Ǻܷ��ġ�\'
    +'��ս��ͼ�ڹһ����ܵ��ϳ�Ŷ��\ \'
    +'{cmd}|<����/@help_3>\'
    );
end;
 
begin
    //This_Player.HelperDialog(
    This_Player.HelperDialog(
    '��ʲô���˽�ģ����Ҹ������һ�°ɣ�\\'
    +'{cmd}|<������ͼ/@help_1>       ^<װ������/@help_2>       ^<װ������/@helpEquip>\\'  //   (��������������˵�ɶ)   
    +'{cmd}|<��ν���/@help_4>       ^<�罻ϵͳ/@help_5>       ^<ϵͳ����/@help_6>\\' 
    +'{cmd}|<��Ϸ��ֵ/@help_7>       ^<���ܽ���/@help_8>       ^<��Ϸ��ͼ/@help_3>\\'
    +'{cmd}|<�ʺ������/@help_10>'
    );
  //_goMonMap('1'); 
  //  _help_1;
end.