{
*******************************************************************}

program Mir2;

 

procedure _DoExit;
begin
  This_Npc.CloseDialog(This_Player);
end;

procedure _giveqian;
begin
  if This_Player.GetS(22,23) = GetDateNum(GetNow) then
  begin
    if This_Player.GetS(22,22) = 2009 then
    begin
      exit;
    end
    else if (This_Player.GetS(22,24) = 420) or (This_Player.GetS(22,24) = 400) then
    begin
      if This_Player.GoldNum >= 15000 then
      begin
        if This_NPC.CheckMapMonByName('D717','��ħШ��') > 80 then
        begin
          This_Npc.NpcDialog(This_Player,          
          'Ŀǰ�Ѿ��ų�����Ķ�ħШ�꣬���������꣬\��������Ҹ���û�п�����ħШ�� �����������Զ�㿴��\');
          This_Player.SetS(22,24,420);
          This_Player.DecGold(15000);
        end
        else
        begin
          This_NPC.CreateMon('D717',30,72,5,'��ħШ��',10);
          This_Player.SetS(22,24,420);
          This_Player.DecGold(15000);
          This_NPC.CloseDialog(This_Player); 
        end;
      end
      else
        This_Npc.NpcDialog(This_Player,          
        '�����Ϻ���û����ô���ң��ҿɲ������������������');
    end
    else
      exit;                                                   
  end
  else
    exit;
end;


begin
  if This_Player.GetS(22,23) = GetDateNum(GetNow) then
  begin
    if This_Player.GetS(22,22) = 2009 then
    begin
      This_Npc.NpcDialog(This_Player,          
      '����������Ѿ�����,\�������ٵ���������ȡ����ɣ���');
      exit;
    end
    else if This_Player.GetS(22,24) = 450 then
    begin
      This_Npc.NpcDialog(This_Player,          
      '��λ��ʿ�����Ȼ�������Ѿ�ɱ��10ֻ��ħШ�꣬\'
      +'����͸��㳬��Ľ�������������Ϊ��<���� 1000000/c=red> \ \');
      This_Player.Give('����',1000000);
      This_Player.SetS(22,22,2009);
      //This_Player.UpdateTaskDetail(10008,1); 
    end
    else if This_Player.GetS(22,24) = 420 then
    begin
      This_Npc.NpcDialog(This_Player,          
      '��ô������û��<����10ֻ��/c=red>��\'
      +'�����û����û��ϵ��������ٸ���<15000���/c=red>��\'
      +'�����ͷ�<10ֻ��ħШ��/c=red>\ \'
      +'|{cmd}<֧�����/@giveqian>'); 
    end
    else if This_Player.GetS(22,24) = 400 then
    begin
      This_Npc.NpcDialog(This_Player,          
      '�����ķ����ܼ򵥣�ֻҪ�����<15000���/c=red>��\'
      +'�ҽ���������վ����Χ���ͷ�<10ֻ��ħШ��/c=red>������������Ǻ�\'
      +'�Ҿͻ����<����Ľ���/c=red>���������û��<����10ֻ��/c=red>��\'
      +'���ٽ�����<15000���/c=red>��\'
      +'�ҽ����ͷ�<10ֻ��ħШ��/c=red>��ֱ�������10ֻ��Ϊֹ��\'
      +'��������Ϊ��<���� 1000000/c=red>\'
      +'|{cmd}<֧�����/@giveqian>');
    end;
  end
  else
  begin
    This_Npc.NpcDialog(This_Player,          
    '��Ϊ�귨��½����ʿ��\' 
    +'��ÿ�����ȥ������ʹ������ȡһ����������\'
    +'��������������ᣬ��Ϳ���������߽���������\');
  end;
end. 