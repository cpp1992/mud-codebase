{
*******************************************************************}

program Mir2;

 

procedure _DoExit;
begin
  This_Npc.CloseDialog(This_Player);
end;

procedure _GOONE;
begin
  if This_Player.Level >= 40 then
  begin
    if (GetHour = 18) and (GetMin >= 30) and (GetMin <= 40) then
    begin
      if random(2) = 1 then
      begin
        This_Player.Flyto('F007~01',23,46);
        This_Player.CallOut(This_NPC,3600,'P101'); 
      end
      else
      begin
        This_Player.Flyto('F007~01',176,36);
        This_Player.CallOut(This_NPC,3600,'P101');
      end;
    end
    else
      exit; 
  end
  else
    exit;
end;

procedure P101;
begin
  if CompareText(This_Player.MapName,'F007~01') = 0 then
  begin
    This_Player.RandomFlyTo('3');
  end
  else if CompareText(This_Player.MapName,'F009~01') = 0 then
  begin
    This_Player.RandomFlyTo('3');
  end
  else if CompareText(This_Player.MapName,'F006~01') = 0 then
  begin
    This_Player.RandomFlyTo('3');
  end
  else if CompareText(This_Player.MapName,'F003~03') = 0 then
  begin
    This_Player.RandomFlyTo('3');
  end
  else if CompareText(This_Player.MapName,'F002~01') = 0 then
  begin
    This_Player.RandomFlyTo('3');
  end
  else if CompareText(This_Player.MapName,'D2079~06') = 0 then
  begin
    This_Player.RandomFlyTo('3');
  end
  else if CompareText(This_Player.MapName,'D2004~02') = 0 then
  begin
    This_Player.RandomFlyTo('3');
  end;
end;

var
  temp : integer;
begin
  if This_Player.Level >= 40 then
  begin
    if (GetHour = 18) and (GetMin > 40) then
    begin
      This_Npc.NpcDialog(This_Player,          
      '�ǳ��ı�Ǹ�����Ѿ�����˱��λ�Ľ���ʱ�䣬\��ȴ��´λ������\');
    end
    else if (GetHour = 18) and (GetMin >= 30) and (GetMin <= 40) then
    begin
      This_Npc.NpcDialog(This_Player,          
      'Ŀǰ�ᱦս�Ѿ���ʽ����������ץ��ʱ�価��������߲㣡\���������ȸ����ᱦս��һ��Ŀ�����(101,161) ��\ \' 
      +'|{cmd}<����ᱦս��һ��/@GOONE>');
      if temp = GetDateNum(GetNow) then
      begin
        exit;
      end
      else
      begin
        temp := GetDateNum(GetNow);
        This_NPC.ClearMon('F007~01');
        This_NPC.ClearMon('F009~01');
        This_NPC.ClearMon('F006~01');
        This_NPC.ClearMon('F003~03');
        This_NPC.ClearMon('D2079~06');
        This_NPC.ClearMon('F002~01');
        This_NPC.CreateMon('F007~01',89,100,20,'�罩��08',2);
        This_NPC.CreateMon('F007~01',89,100,50,'��ʬ2',20);
        This_NPC.CreateMon('F007~01',89,100,50,'��ʬ3',20);
        This_NPC.CreateMon('F007~01',89,100,50,'��ʬ4',60);
        This_NPC.CreateMon('F009~01',107,94,50,'а��ǯ��003',3);
        This_NPC.CreateMon('F009~01',107,94,50,'���',50);
        This_NPC.CreateMon('F009~01',107,94,50,'������',50);
        This_NPC.CreateMon('F009~01',107,94,50,'ǯ��',50);
        This_NPC.CreateMon('F006~01',100,100,50,'��Ұ��',5);
        This_NPC.CreateMon('F006~01',100,100,50,'��ħ����',5);
        This_NPC.CreateMon('F006~01',100,100,50,'��Ұ��',50);
        This_NPC.CreateMon('F006~01',100,100,50,'��Ұ��',50);
        This_NPC.CreateMon('F006~01',100,100,50,'Ы��',50);
        This_NPC.CreateMon('F006~01',100,100,50,'��ɫ����',50);
        This_NPC.CreateMon('F003~03',47,52,20,'��֮�������14',1);
        This_NPC.CreateMon('F003~03',47,52,50,'������ʿ',5);
        This_NPC.CreateMon('F003~03',47,52,50,'������ʿ',40);
        This_NPC.CreateMon('F003~03',47,52,50,'����սʿ',40);
        This_NPC.CreateMon('F003~03',47,52,50,'����ս��',40);
        This_NPC.CreateMon('F003~03',47,52,50,'��������',40);
        This_NPC.CreateMon('D2079~06',52,51,20,'��֮�������',1);
        This_NPC.CreateMon('D2079~06',52,51,50,'���깭����3',30);
        This_NPC.CreateMon('D2079~06',52,51,50,'������ʿ3',30);
        This_NPC.CreateMon('D2079~06',52,51,50,'�������3',30);
        This_NPC.CreateMon('D2079~06',52,51,50,'Ш��',30);
        This_NPC.CreateMon('F002~01',51,50,20,'��֮ħ������',1);
        This_NPC.CreateMon('F002~01',51,50,50,'ħ����ʿ',1);
        This_NPC.CreateMon('F002~01',51,50,30,'ħ���޶�',1);
        This_NPC.CreateMon('F002~01',51,50,40,'ħ��ս��',1);
        This_NPC.CreateMon('F002~01',51,50,50,'ħ���Ƽױ�',30);
        This_NPC.CreateMon('F002~01',51,50,50,'ħ������',30);
        This_NPC.CreateMon('F002~01',51,50,50,'ħ������',30);
        This_NPC.CreateMon('F002~01',51,50,50,'ħ������1',20);
        This_NPC.CreateMon('F002~01',51,50,50,'ħ������2',20);
      end; 
    end
    else
    begin
      This_Npc.NpcDialog(This_Player,          
      '������ʽ��ʼʱ����18��30�֣��������ĵȴ���лл��\');
    end;
  end
  else
  begin
    This_Npc.NpcDialog(This_Player,          
    '�ǳ����ź���ֻ�еȼ��ﵽ<40��/c=red>����Ҳ��ܲμӴ˻��');
  end;
end.