
{ 
*******************************************************************}

program Mir2;

 

procedure _DoExit;
begin
  This_Npc.CloseDialog(This_Player);
end;

procedure _GOONE;
begin
  if CompareText(This_Player.MapName,'F006~01') = 0 then
  begin
    if This_NPC.CheckCurrMapMon = 0 then
    begin
      if random(2) = 1 then
      begin
        This_Player.Flyto('F003~03',20,23); 
      end
      else
      begin
        This_Player.Flyto('F003~03',75,34); 
      end;
    end
    else
      exit;
  end
  else
    exit;
end;

begin
  if This_NPC.CheckCurrMapMon = 0 then
  begin
    This_Npc.NpcDialog(This_Player,          
    '�ܺã����ŵ�ͼ�ϵĹ����Ѿ�ȫ������\������������ᱦս���Ĳ�Ŀ�����(48 84) ��\'
    +'|{cmd}<����ᱦս���Ĳ�/@GOONE>');
  end
  else
  begin
    This_Npc.NpcDialog(This_Player,          
    '���й���û������ֻ�������ͼ�е����й������\������һ��ᱦ��ͼ���Ͽ죬�������ʱ�䲻���ˣ���');
  end;
end.