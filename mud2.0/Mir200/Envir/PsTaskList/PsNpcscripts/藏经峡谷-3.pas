procedure _cj;
begin
  This_Npc.NpcDialog(This_Player,          
   '�����<ÿ��/c=red>��<16��/c=red>��<19��/c=red>���ţ�\'+
   '���Ž���ʱ��Ϊ<16��00��/c=red>��<19��00��/c=red>��\'+
   'ÿ�ο���ʱ��60���ӣ�Ͽ�������ش���Я�������ʹ�ߡ�\'+
   '�������ǣ��������ֳ�ԭ�Σ����������ҳ����\ \'+
   '|{cmd}<���Ͻ���/@zou1>'); 
end;

procedure _zou1;
var
  temp1,temp2 : integer;
begin
  if (GetHour = 16) and (GetMin < 00) then
  begin
    This_Npc.NpcDialog(This_Player,          
    '������Ѿ���ʼ�����Ž���ʱ��Ϊ<16��00��/c=red>��<19��00��/c=red>��\'
    +'��������˽���ʱ���ֻ�ܵȴ��´ο��ţ�');
  end
  else if (GetHour = 19) and (GetMin < 00) then
  begin
    This_Npc.NpcDialog(This_Player,          
    '������Ѿ���ʼ�����Ž���ʱ��Ϊ<16��00��/c=red>��<19��00��/c=red>��\'
    +'��������˽���ʱ���ֻ�ܵȴ��´ο��ţ�');
  end
  else if (GetHour = 16) and (GetMin >= 00) and (GetMin < 60) then
  begin
    if temp1 = -1 then
    begin
      temp1 := 0;
    end
    if temp1 = GetDateNum(GetNow) then
    begin
      This_Player.RandomFlyTo('R001~21');
    end
    else
    begin
      temp1 := GetDateNum(GetNow);
      This_Player.RandomFlyTo('R001~21');
  
    end;
  end
  else if (GetHour = 19) and (GetMin >= 00) and (GetMin < 60) then
  begin
    if temp2 = -1 then
    begin
      temp2 := 0;
    end
    if temp2 = GetDateNum(GetNow) then
    begin
      This_Player.RandomFlyTo('R001~21');
    end
    else
    begin
      temp2 := GetDateNum(GetNow);
      This_Player.RandomFlyTo('R001~21');

    end;
  end
  else
  begin
    This_Npc.NpcDialog(This_Player,          
    '���ڻ�����ʱ�򣬻����ÿ���16��00�ֺ�19��00�ֿ��Ž��룡\�����ʱ�������ɡ�\ \');
  end;
end;

  begin
This_Npc.NpcDialog(This_Player,
   'ÿ��<16:00--17:00/c=red>������<19:00--20:00/c=red>��\'+
   '�����Ųؾ�Ͽ�ȣ����Ա�����ҳ���ǵ�׼ʱ��Ŷ\ \'+
   
   '|{cmd}<�ؾ�Ͽ��/@cj>\ \'
  // +mail_str
   );
end.