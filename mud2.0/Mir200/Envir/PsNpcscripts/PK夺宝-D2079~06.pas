{
*******************************************************************}

program Mir2;

 

procedure _DoExit;
begin
  This_Npc.CloseDialog(This_Player);
end;

procedure _GOONE;
begin
  if CompareText(This_Player.MapName,'D2079~06') = 0 then
  begin
    if This_NPC.CheckCurrMapMon = 0 then
    begin
      if random(4) = 3 then
      begin
        This_Player.Flyto('F002~01',24,22); 
      end
      else if random(3) = 2 then
      begin
        This_Player.Flyto('F002~01',20,80); 
      end
      else if random(2) = 1 then
      begin
        This_Player.Flyto('F002~01',77,23); 
      end
      else
      begin
        This_Player.Flyto('F002~01',81,80); 
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
    '�ܺã����ŵ�ͼ�ϵĹ����Ѿ�ȫ������\������������ᱦս������Ŀ�����(52 51) ��\'
    +'|{cmd}<����ᱦս������/@GOONE>');
  end
  else
  begin
    This_Npc.NpcDialog(This_Player,          
    '���й���û������ֻ�������ͼ�е����й������\������һ��ᱦ��ͼ���Ͽ죬�������ʱ�䲻���ˣ���');
  end;
end.