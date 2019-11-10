{******************************************************************

*******************************************************************}

program Mir2;

{$I common.pas}


//OnInitʱ��GS
const
  REPAIRDOORGOLD    = 2000000;
  REPAIRWALLGOLD    = 500000;
  GUARDFEE          = 300000;
  ARCHERFEE         = 300000;





//;���ŵĹ���

procedure _treatdoor;
begin
  if ( This_Player.IsCastle ) and  ( This_Player.IsGuildLord ) then
  begin
     This_Npc.NpcDialog(This_Player,
     '��ǰ������ ' + This_Npc.GetCastleDoorState + '.\ \' +
     '|{cmd}<�رմ���./@closemaindoor>\' +
     '|{cmd}<�򿪴���./@openmaindoor>\' +
     '|{cmd}<����/@main>\');
  end else
  begin
     This_Npc.NpcDialog(This_Player,
     'ֻ��ɳ�Ϳ˻᳤���ܽ��в�����');
  end;
end;

procedure _openmaindoor;
begin
  This_Npc.OpenCastleDoor(True);
  This_Npc.NpcDialog(This_Player,
    '���ű�����.\ \' +
    '|{cmd}<����/@treatdoor>\');
end;

procedure _closemaindoor;
begin
  This_Npc.OpenCastleDoor(False);
  This_Npc.NpcDialog(This_Player,
    '���ű��ر���.\ \' +
    '|{cmd}<����/@treatdoor>\');
end;

//;����ά��

procedure _repaircastle;
begin
  This_Npc.NpcDialog(This_Player,
    '����ȥ�������� ��\ \' +
    '|{cmd}<�������./@repairdoor>\' +
    '|{cmd}<�����ǽ./@repairwalls>\' +
    '|{cmd}<����/@main>\');
end;

procedure _repairdoor;
begin
  if ( This_Player.IsCastle ) and  ( This_Player.IsGuildLord ) then
  begin
     This_Npc.NpcDialog(This_Player,
     '�����Ҫ��ǿ�Ǳ����ŵĻ��������Ҫ֧��һ���� ' + IntToStr(REPAIRDOORGOLD) + ' ��� .\ \' +
     '|{cmd}<��ǿ���Ž���./@repairdoornow>\' +
     '|{cmd}<����/@repaircastle>\');
  end else
  begin
     This_Npc.NpcDialog(This_Player,
     'ֻ��ɳ�Ϳ˻᳤���ܽ��в�����');
  end;
end;

procedure _repairdoornow;
begin
  This_Npc.Click_RepairDoor(This_Player);
end;

procedure _repairwalls;
begin
  if ( This_Player.IsCastle ) and  ( This_Player.IsGuildLord ) then
  begin
     This_Npc.NpcDialog(This_Player,
     '�����Ҫ��ǿ�Ǳ��ĳ�ǽ�Ļ���Ҳ����Ҫ֧��һ���� ' + IntToStr(REPAIRWALLGOLD) + ' ���.\ \' +
     '|{cmd}<�������ǽ./@repairwallnow1>\' +
     '|{cmd}<�����г�ǽ./@repairwallnow2>\' +
     '|{cmd}<�����ҳ�ǽ./@repairwallnow3>\' +
     '|{cmd}<����/@repaircastle>\');
  end else
  begin
     This_Npc.NpcDialog(This_Player,
     'ֻ��ɳ�Ϳ˻᳤���ܽ��в�����');
  end;  
end;

procedure _repairwallnow1;
begin
  This_Npc.Click_RepairWall(This_Player, 1);
end;

procedure _repairwallnow2;
begin
  This_Npc.Click_RepairWall(This_Player, 2);
end;

procedure _repairwallnow3;
begin
  This_Npc.Click_RepairWall(This_Player, 3);
end;

//;������ʿ

procedure _guardcmd;
begin
  if ( This_Player.IsCastle ) and  ( This_Player.IsGuildLord ) then
  begin
     This_Npc.NpcDialog(This_Player,
     '�����ʿָ���������.\ \' +
     //    '; <��Ӷ��ʿ./@hireguards>\'+
     '|{cmd}<��Ӷ������./@hirearchers>\' +
     //    '|{cmd}<�ı乥������./@commandorder>\' +
     '|{cmd}<����/@main>\');
  end else
  begin
     This_Npc.NpcDialog(This_Player,
     'ֻ��ɳ�Ϳ˻᳤���ܽ��в�����');
  end; 
end;

procedure _hireguards;
begin
  if ( This_Player.IsCastle ) and  ( This_Player.IsGuildLord ) then
  begin
     This_Npc.NpcDialog(This_Player,
    '����Ҫ�����Ӷ����ʿ����ʲô�ط���\' +
    '�����Ҫ��ÿ����ʿ<$GUARDFEE>֧�����.\ \' +
    '|����ǰ<����Ϊ/@hireguardnow1>, ^<������/@hireguardnow2>\' +
    '|��ǽǰ<����ʿ/@hireguardnow3>, ^<����ʿ/@hireguardnow4>\' +
    '|{cmd}<����/@guardcmd>\');
  end else
  begin
     This_Npc.NpcDialog(This_Player,
     'ֻ��ɳ�Ϳ˻᳤���ܽ��в�����');
  end; 
end;

procedure _hirearchers;
begin
  if ( This_Player.IsCastle ) and  ( This_Player.IsGuildLord ) then
  begin
     This_Npc.NpcDialog(This_Player,
    '����Ҫ�����Ӷ�Ĺ����ַ���ʲô�ط���?\' +
    '�����Ҫ��ÿ��������' + IntToStr(ARCHERFEE) + '֧�����.\ \' +
    '|���ǽ <�󹭼���/@hirearchernow1>, ^<�й�����/@hirearchernow2>, |{cmd}<�ҹ�����/@hirearchernow3>\' +
    '^���ڹ�����<�󹭼���/@hirearchernow4>, |{cmd}<�й�����/@hirearchernow5>,' +
    '|{cmd}<�ҹ�����/@hirearchernow6>\' +
    '|���ڵĵڶ���<�󹭼���/@hirearchernow7>, ^<�ҹ�����/@hirearchernow8>\' +
    '|��������ǰ<�󹭼���/@hirearchernow9>, ^<�ҹ�����/@hirearchernow10>\' +
    '|�����ڴ����ұ�<�󹭼���/@hirearchernow11>, ^<�ҹ�����/@hirearchernow12>\' +
    '|{cmd}<����/@guardcmd>\');
  end else
  begin
     This_Npc.NpcDialog(This_Player,
     'ֻ��ɳ�Ϳ˻᳤���ܽ��в�����');
  end; 
end;

procedure _hirearchernow1;
begin
  This_Npc.Click_HireArcher(This_Player, 1);
end;

procedure _hirearchernow2;
begin
  This_Npc.Click_HireArcher(This_Player, 2);
end;

procedure _hirearchernow3;
begin
  This_Npc.Click_HireArcher(This_Player, 3);

end;

procedure _hirearchernow4;
begin
  This_Npc.Click_HireArcher(This_Player, 4);
end;

procedure _hirearchernow5;
begin
  This_Npc.Click_HireArcher(This_Player, 5);
end;

procedure _hirearchernow6;
begin
  This_Npc.Click_HireArcher(This_Player, 6);
end;

procedure _hirearchernow7;
begin
  This_Npc.Click_HireArcher(This_Player, 7);
end;

procedure _hirearchernow8;
begin
  This_Npc.Click_HireArcher(This_Player, 8);
end;

procedure _hirearchernow9;
begin
  This_Npc.Click_HireArcher(This_Player, 9);
end;

procedure _hirearchernow10;
begin
  This_Npc.Click_HireArcher(This_Player, 10);
end;

procedure _hirearchernow11;
begin
  This_Npc.Click_HireArcher(This_Player, 11);
end;

procedure _hirearchernow12;
begin
  This_Npc.Click_HireArcher(This_Player, 12);
end;

procedure _commandorder;
begin
  This_Npc.NpcDialog(This_Player,
    '��ǰ��ʿ������.\' +                //<$GUARDRULE>
    '����Ҫ�����ı�?\ \' +
    '|{cmd}<һ����ʿ����/@guardrule_normalnow>\' +
    '|{cmd}<������ʿ����/@guardrule_pkattack>\' +
    '|{cmd}<����/@guardcmd>\');
end;  



procedure _Doselect;
var
  str : string; 
begin
  with This_DB do
  begin
    if ExecuteQuery('select idx from usertask;') <> -1 then
    begin
      PsFirst;
      while not PsEof do
      begin
        str := str + '  '+PsFieldByName('idx');
        PsNext;
      end;
    end;

    This_Npc.NpcDialog(This_Player, str);
  end;
end;



procedure _lin;
var
  temp1,temp2 : integer;
begin
  if (GetHour = 22) and (GetMin >= 01) and (GetMin < 30) then
  begin
    This_Npc.NpcDialog(This_Player,          
    '<��ϲ����л�ռ����ɳ�Ϳˣ���������������ȡ����</c=red>��\'
    +'|{cmd}<��ȡ���չ�ɳ����/@linjiang>\');
  end
  else 
  begin
    This_Npc.NpcDialog(This_Player,          
    '���ڻ������콱ʱ��<22��01��/c=red>��<22��30��/c=red>��');
  
  end ;
 end ;


procedure _linjiang; 
var today , num: integer;//�ֲ��﷨��������
Snum : integer;

begin
    today := GetDateNum(GetNow);
    if This_Player.GetV(13,3) <> today then
    begin
       This_Player.SetV(13,3,today);
       This_Player.SetV(13,4,0);
    end;

   if GetG(3,1) <> today then
   begin
       SetG(3,1,today);
       SetG(3,2,0);
   end;
   Snum := GetG(3,2)
   num := This_Player.GetV(13,4);
   
    if Snum < 1 then
    begin 
        if num < 2 then
        begin
            if This_Player.FreeBagNum >= 1 then
            begin 
                This_Player.Give('���ʯ' , 5000);
                This_Player.Give('1000Ԫ��' , 3);
                ServerSay('ΰ��ġ��' + This_Player.Name + '��������ȡ�˹�ɳ����',3); 
                This_Player.SetV(13,4, num + 1);
                SetG(3,2,Snum + 1); 
               
                
            end else
            This_NPC.NpcDialog(This_Player,'��İ�������') 
        end else
        This_NPC.NpcDialog(This_Player,'������ȡ�˹�ɳ����');
    end else
    This_NPC.NpcDialog(This_Player,'��ɳ�����ѱ���ȡ��');
end;

 







procedure DoMain;
begin
     if ( This_Player.IsCastle ) and  ( This_Player.IsGuildLord ) then
   begin
    This_Npc.NpcDialog(This_Player, 
   'ռ��ɳ�Ϳ���ʵ�������������ߵ���ҫ��\'
   +'��ǰɳ�Ϳ��л��ǡ�' + This_NPC.GetCastleGuildName + '����\'
   +'|{cmd}<��ȡ���չ�ɳ����/@lin>\'
   +'|{cmd}<����ɳ�Ϳ�/@sabuk_Manage>\' 
   +'|{cmd}<���ض���ɽ��/@godu>' + addSpace('', 22) + '\' 
   +'|{cmd}<ǰ��ׯ԰/@gozhuang>'
    );
    end else
  begin
     This_Npc.NpcDialog(This_Player,
     'ֻ��ɳ�Ϳ˳������ܽ��в�����');
  end; 
end;

procedure _godu;
begin
  if compareText(This_Player.MapName, '0150') = 0 then
    This_Player.FlyTo('3', 521, 764);
end;

procedure _gozhuang;
begin
  if This_Player.Level >= 8 then
  begin
    if compareText(This_Player.MapName, '0150') = 0 then
    begin
       This_Player.FlyTo('GA0', 71, 73)
    end;
  end else
    This_Npc.NpcDialog(This_Player, '��������������Ҳ�������ȥ����');
end;

procedure _sabuk_Manage;
begin
    if This_Player.IsCastle and This_Player.IsGuildLord then
    begin
    This_Npc.NpcDialog(This_Player, 
    '����Ǳ��������ʽ��� ' + IntToStr(This_Npc.GetCastleTotalGold) + '���, \' +
    '�����������' + IntToStr(This_Npc.GetCastleTodayIncome) + '���.\' +
    '|{cmd}<ȡ���ʽ�/@GetMoney>\' + 
    '|{cmd}<�洢�ʽ�/@SaveMoney>\' +
    '|{cmd}<���ŵĹ����ƶ�����/@treatdoor>\' +
    '|{cmd}<��ά��������/@repaircastle>\' +
    '|{cmd}<����������/@guardcmd>\' 
    );
    end else
    This_Npc.NpcDialog(This_Player, 
    '�Բ����㲻��ɳ�Ϳ˻᳤������ʹ�ã�'
    ); 
end;

procedure _GetMoney;
begin
  if ( This_Player.IsCastle ) and  ( This_Player.IsGuildLord ) then
  begin
     // 0 = input yes|no dlg; 101 �ص�P101�õ������֣�ע��word����
     This_Npc.InputDialog(This_Player, '������ȡ���������', 0, 101);
  end else
  begin
     This_Npc.NpcDialog(This_Player,
     'ֻ��ɳ�Ϳ˻᳤���ܽ��в�����');
  end;
end;

procedure P101;
begin
  if This_Npc.InputOk then
  begin
    This_Npc.Click_TakeOutGold(This_Player, This_Npc.InputStr);
    DoMain;
  end;

end;

procedure _SaveMoney;
begin
  if ( This_Player.IsCastle ) and  ( This_Player.IsGuildLord ) then
  begin
     This_Npc.InputDialog(This_Player, '���������������', 0, 102);
  end else
  begin
     This_Npc.NpcDialog(This_Player,
     'ֻ��ɳ�Ϳ˻᳤���ܽ��в�����');
  end;
end;

procedure P102;
begin
  if This_Npc.InputOk then
  begin
    This_Npc.Click_SaveGold(This_Player, This_Npc.InputStr);  
    DoMain;
  end;
end;

procedure OnInitialize;
begin
  This_Npc.RepDoorGold := REPAIRDOORGOLD;
  This_Npc.RepWallGold := REPAIRWALLGOLD;
  This_Npc.HireGuardGold := GUARDFEE;
  This_Npc.HireArcherGold := ARCHERFEE;
end;

//var
//  LastRunCount : Integer;

procedure Execute;
begin
  //��ֹ��This_Player  This_Npc.ExecCountֻ����ÿ10��+1
//  if This_Npc.ExecCount > LastRunCount then
//  begin
//    LastRunCount := This_Npc.ExecCount;
    This_DB.ExecuteQuery('select 1');
//  end;
end;

begin
  DoMain;
end.