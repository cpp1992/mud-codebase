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
    else if (This_Player.GetS(22,24) = 120) or (This_Player.GetS(22,24) = 100) then
    begin
      if This_Player.GoldNum >= 1500 then
      begin
        if This_NPC.CheckMapMonByName('E701','��ħҰ��') > 80 then
        begin
          This_Npc.NpcDialog(This_Player,          
          'Ŀǰ�Ѿ��ų�����Ķ�ħҰ�����������꣬\��������Ҹ���û�п�����ħҰ�� �����������Զ�㿴��\');
          This_Player.SetS(22,24,120);
          This_Player.DecGold(1500);
        end
        else
        begin
          This_NPC.CreateMon('E701',37,30,5,'��ħҰ��',10);
          This_Player.SetS(22,24,120);
          This_Player.DecGold(1500);
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
    else if This_Player.GetS(22,24) = 150 then
    begin
      This_Npc.NpcDialog(This_Player,          
      '��λ��ʿ�����Ȼ�������Ѿ�ɱ��10ֻ��ħҰ��\'
      +'����͸��㳬��Ľ�������������Ϊ��<���� 500000/c=red> \ \');
      This_Player.Give('����',500000);
      This_Player.SetS(22,22,2009);
      //This_Player.UpdateTaskDetail(10008,1); 
    end
    else if This_Player.GetS(22,24) = 120 then
    begin
      This_Npc.NpcDialog(This_Player,          
      '��ô������û��<����10ֻ��/c=red>��\'
      +'�����û����û��ϵ��������ٸ���<1500���/c=red>��\'
      +'�����ͷ�<10ֻ��ħҰ��/c=red>\ \'
      +'|{cmd}<֧�����/@giveqian>'); 
    end
    else if This_Player.GetS(22,24) = 100 then
    begin
      This_Npc.NpcDialog(This_Player,          
      '�����ķ����ܼ򵥣�ֻҪ�����<1500���/c=red>��\'
      +'�ҽ���������վ����Χ���ͷ�<10ֻ��ħҰ��/c=red>������������Ǻ�\'
      +'�Ҿͻ����<����Ľ���/c=red>���������û��<����10ֻ��/c=red>��\'
      +'���ٽ�����<1500���/c=red>��\'
      +'�ҽ����ͷ�<10ֻ��ħҰ��/c=red>��ֱ�������10ֻ��Ϊֹ��\'
      +'��������Ϊ��<���� 500000/c=red>\'
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