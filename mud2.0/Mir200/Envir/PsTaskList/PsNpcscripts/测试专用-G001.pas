{********************************************************************

*******************************************************************}

program Mir2;
{$I common.pas}


procedure _DoExit;
begin
  This_Npc.CloseDialog(This_Player);
end;

function getSkillNameByJob(HumOrHero , jobId , SkillId : integer) : string;
begin
    result := '';
    case HumOrHero of
        1 :
        begin
            case jobId of
                0 : 
                begin
                    case SkillId of
                    1 : result := '��������';
                    2 : result := '��ɱ����';
                    3 : result := '��ɱ����';
                    4 : result := '�����䵶';
                    5 : result := '�һ𽣷�';
                    6 : result := 'Ұ����ײ';
                    7 : result := 'ʮ�ֿ��ն';
                    8 : result := '˫��ն';
                    9 : result := 'ʨ�Ӻ�';
                    10 : result := '����ն';
                    11 : result := '���';
                    12 : result := '���ս���';
                    end;
                end;
                1 : 
                begin
                    case SkillId of
                    1 : result := '�����';
                    2 : result := '���ܻ�';
                    3 : result := '������';
                    4 : result := '�����Ӱ';
                    5 : result := '�׵���';
                    6 : result := '�ջ�֮��';
                    7 : result := '˲Ϣ�ƶ�';
                    8 : result := '��ǽ';
                    9 : result := '���ѻ���';
                    10 : result := '�����׹�';
                    11 : result := 'ħ����';
                    12 : result := 'ʥ����';
                    13 : result := '������';
                    14 : result := '�����';
                    15 : result := '������';
                    16 : result := '������1';
                    17 : result := '��������1';
                    18 : result := '���ǻ���';
                    19 : result := '������';
                    
                    end;
                end;
                2 : 
                begin
                    case SkillId of
                    1 : result := '������';
                    2 : result := '������ս��';
                    3 : result := 'ʩ����';
                    4 : result := '�����';
                    5 : result := '�����';
                    6 : result := '��ʥս����';
                    7 : result := '��ħ��';
                    8 : result := '�ٻ�����';
                    9 : result := '������';
                    10 : result := '����������';
                    11 : result := '������ʾ';
                    12 : result := 'Ⱥ��������';
                    13 : result := '�ٻ�����';
                    14 : result := '�޼�����';
                    15 : result := '������';
                    16 : result := '������';
                    17 : result := '�ٻ���ʹ';
                    18 : result := 'Ǭ����';
                    19 : result := '��Ѫ��';
                    20 : result := '������';
                    21 : result := 'ѱ����';
                    end;
                end;
                99 : 
                begin
                    case SkillId of
                    1 : result := '��������';
                    2 : result := '����Ԫ��';
                    3 : result := '���粽��';
                    4 : result := '��ת����';
                    end;
                end;
                
            end;
        end;
        2 :
        begin
            case jobId of
                0 : 
                begin
                    case SkillId of
                    1 : result := '�����Ž���';
                    2 : result := '�����Ź�ɱ';
                    3 : result := '�����Ŵ�ɱ';
                    4 : result := '�����Ű���';
                    5 : result := '�������һ�';
                    6 : result := '������Ұ��';
                    7 : result := '����ն';
                    8 : result := '˫��ն';
                    9 : result := '������ʨ�Ӻ�';
                    10 : result := '����ն';
                    11 : result := '���';
                    12 : result := '����������';
                    
                    end;
        
                end;
                1 : 
                begin
                    case SkillId of
                    1 : result := '�����Ŵ����';
                    2 : result := '�����ſ���';
                    3 : result := '�����ŵ�����';
                    4 : result := '�����ż���';
                    5 : result := '�������׵���';
                    6 : result := '�������ջ���';
                    7 : result := '������˲��';
                    8 : result := '�����Ż�ǽ';
                    9 : result := '�����ű���';
                    10 : result := '�������׹�';
                    11 : result := '������ħ����';
                    12 : result := '������ʥ����';
                    13 : result := '�����ű�����';
                    14 : result := '�����������';
                    15 : result := '�����ź�����';
                    16 : result := '������';
                    17 : result := '��������1';
                    18 : result := '�����Ż���';
                    19 : result := '�����Ż�����';
                    
                    end;
                
                end;
                2 : 
                begin
                    case SkillId of
                    1 : result := '������������';
                    2 : result := '������ս��';
                    3 : result := '������ʩ����';
                    4 : result := '�����Ż��';
                    5 : result := '�����������';
                    6 : result := '������ս����';
                    7 : result := '��������ħ��';
                    8 : result := '������������';
                    9 : result := '����������';
                    10 : result := '������Ⱥ��';
                    11 : result := '��������ʾ';
                    12 : result := '������Ⱥ��';
                    13 : result := '������������';
                    14 : result := '����������';
                    15 : result := '������������';
                    16 : result := '������';
                    17 : result := '�ٻ�����';
                    18 : result := 'Ǭ����';
                    19 : result := '��������Ѫ��';
                    20 : result := '������';
                    21 : result := '������ʥ����';

                    end;
                end;
                3 : 
                begin
                    case SkillId of
                    1 : result := '�ƻ�ն';
                    2 : result := '����ն';
                    3 : result := '����һ��';
                    4 : result := '�ɻ�����';
                    5 : result := 'ĩ������';
                    6 : result := '��������';
                    end;
                end;
                99 : 
                begin
                    case SkillId of
                    1 : result := '��������1';
                    2 : result := '����Ԫ��';
                    3 : result := '���粽��';
                    4 : result := '��ת����';
                    end;
                
                end;
                
            end;
        end;
    end;
end;

procedure _deBug_Skill_1();
begin
    This_Npc.NpcDialog(This_Player,
    '|<����սʿ����/@deBug_Skill_1_1~0>      ^<������ʦ����/@deBug_Skill_1_1~1>\\||'
    +'<������ʿ����/@deBug_Skill_1_1~2>      ^<��������/@deBug_Skill_1_1~99>\\||'
    +'<����/@deBug_Skill>'
    );
end;

procedure _deBug_Skill_1_1(str_job : string);
var temp_job , n : integer;
str_xx , str_skill : string;
begin
    str_xx := '';
    
    temp_job := StrToIntDef(str_job,-1);
    
    This_Player.SetV(1,48,temp_job);
    
    for n := 0 to 21 do
    begin
        str_skill := getSkillNameByJob(1,temp_job,n);
        if str_skill <> '' then
        begin
            str_xx := str_xx +'<---/@skillDown~' + str_skill + '>' + str_skill +  inttostr(This_Player.GetSkillLevelExt(str_skill,false)) + '��' + '<+++/@skillUP~' + str_skill + '>'  + addSpace('', 11- length(str_skill));
            
            if (n mod 2) = 1 then
            str_xx := str_xx + '^'; 
            
            if (n mod 2) = 0 then
            str_xx := str_xx + '\|'; 
            
            
        end;
    end;
    
    This_NPC.NpcDialog(This_Player,'|' + str_xx);
end;

procedure _skillUP(str_Skill : string); 
begin
    if This_Player.GetSkillLevelExt(str_Skill,false) < 0 then
    This_Player.Give(str_Skill,1)
    else
    This_Player.ChgSkillLv(str_Skill,This_Player.GetSkillLevelExt(str_skill,false) + 1 ,0);
    
                                                                                                   
    _deBug_Skill_1_1(inttostr(This_Player.GetV(1,48)));  
end;

procedure _skillDown(str_Skill : string); 
begin
    if This_Player.GetSkillLevelExt(str_Skill,false) = 0 then
    This_Player.DeleteSkill(str_Skill)
    else
    This_Player.ChgSkillLv(str_Skill,This_Player.GetSkillLevelExt(str_skill,false) - 1 ,0);
    
                                                                                                   
    _deBug_Skill_1_1(inttostr(This_Player.GetV(1,48)));  
end;

procedure _deBug_Skill_2_1(str_job : string);
var temp_job , n : integer;
str_xx , str_skill : string;
begin
    str_xx := '';
    
    temp_job := StrToIntDef(str_job,-1);
    
    This_Player.SetV(1,48,temp_job);
    
    if This_Player.HeroLevel < 1 then
    begin
        This_NPC.NpcDialog(This_Player,
        '���ٻ������Ӣ�ۡ�');
        exit;
    end;   
    
    for n := 0 to 21 do
    begin
        str_skill := getSkillNameByJob(2,temp_job,n);                                                 
        if str_skill <> '' then
        begin
            str_xx := str_xx +'<---/@HeroskillDown~' + str_skill + '>' + str_skill +  inttostr(This_Player.GetSkillLevelExt(str_skill,true)) + '��' + '<+++/@HeroskillUP~' + str_skill + '>'  + addSpace('', 11- length(str_skill));
            
            if (n mod 2) = 1 then
            str_xx := str_xx + '^'; 
            
            if (n mod 2) = 0 then
            str_xx := str_xx + '\|'; 
            
            
        end;
    end;
    
    This_NPC.NpcDialog(This_Player,'|' + str_xx);
end;

procedure _HeroskillUP(str_Skill : string); 
begin
    if This_Player.GetSkillLevelExt(str_Skill,true) < 0 then
    This_Player.Give(str_Skill,1)
    else
    This_Player.ChgSkillLv(str_Skill,This_Player.GetSkillLevelExt(str_skill,true) + 1 ,0);

                                                                                                   
    _deBug_Skill_1_1(inttostr(This_Player.GetV(1,48)));  
end;

procedure _HeroskillDown(str_Skill : string); 
begin
    if This_Player.GetSkillLevelExt(str_Skill,false) = 0 then
    This_Player.DeleteSkill(str_Skill)
    else
    This_Player.ChgSkillLv(str_Skill,This_Player.GetSkillLevelExt(str_skill,false) - 1 ,0);
    
                                                                                                   
    _deBug_Skill_1_1(inttostr(This_Player.GetV(1,48)));  
end;


procedure _deBug_Skill();
begin
    This_Npc.NpcDialog(This_Player,
    '|<�������ż���/@deBug_Skill_1>      ^<�������ż���/@deBug_Skill_2>\\||'
    +'<����/@main>'
    );
end;

Begin

      This_Npc.NpcDialog(This_Player,
      '|<��������/@deBug_Skill>      ^<����װ������>'
      );
end. 