{
*******************************************************************}

program Mir2;

var
  time1,time2,time3,time4,time5 : integer;  //��������ÿ��ʱ����Ƿ��Ѿ����������� 

procedure _DoExit;
begin
  This_Npc.CloseDialog(This_Player);
end;

procedure GiveServerPrize();
var
  temp1, temp2, temp3, temp4, temp5, temp6 : integer;
begin
  temp1 := random(100)+1;
  temp2 := random(100)+1;
  temp3 := random(100)+1;
  temp4 := random(60)+1;
  temp5 := random(60)+1;

  This_NPC.NpcDropItem('������Ӿ���', 8, 3);
  This_NPC.NpcDropItem('ף����', 8, 3);
  This_NPC.NpcDropItem('ħ��ָ����', 8, 3);
  This_NPC.NpcDropItem('����', 8, 1);
  This_NPC.NpcDropItem('5������', 8, 1);
  This_NPC.NpcDropItem('50���ʯ', 8, 1);
  
  
    

  
  if temp1 <= 90 then
  begin
    This_NPC.NpcDropItem('��Ѫ����', 8, 1);
  end
  else 
  begin
    This_NPC.NpcDropItem('��Ѫ����', 8, 1);
  end;
   if random(100) <= 50 then
  if temp1 <= 80 then    This_NPC.NpcDropItem('��ɫ����', 8, 1)
  else if temp1 <= 79 then    This_NPC.NpcDropItem('��ʿ����', 8, 1)
  else if temp1 <= 81 then    This_NPC.NpcDropItem('������ָ', 8, 1)
  else if temp1 <=84 then    This_NPC.NpcDropItem('�������', 8, 1)
  else if temp1 <=78 then    This_NPC.NpcDropItem('��������', 8, 1)
  else if temp1 <=77 then    This_NPC.NpcDropItem('̩̹��ָ', 8, 1)
  else if temp1 <=85 then    This_NPC.NpcDropItem('����ͷ��', 8, 1)
  else if temp1 <=83 then    This_NPC.NpcDropItem('��ħ����', 8, 1)
  else if temp1 <=76 then    This_NPC.NpcDropItem('�ϱ���', 8, 1)
  else if temp1 <=75 then    This_NPC.NpcDropItem('��֮����', 8, 1)

  
  


  
  if random(100) <= 10 then
  begin  
      if temp2 <= 10 then
      begin
        This_NPC.NpcDropItem('��ħ���', 8, 1);
      end
      else if temp2 <= 10 then 
      begin
        This_NPC.NpcDropItem('ʥս����', 8, 1);
      end
      else if temp2 <= 15 then 
      begin
        This_NPC.NpcDropItem('�������', 8, 1);
      end
      else if temp2 <= 10 then 
      begin
        This_NPC.NpcDropItem('��ʦ����', 8, 1);
      end
      else if temp2 <= 15 then 
      begin
        This_NPC.NpcDropItem('��������', 8, 1);
      end
      else 
      begin
        This_NPC.NpcDropItem('��������', 8, 1);
      end;
     end;
   end;   
//���˾��齱������
procedure GivePersonPrize();
begin
  This_Npc.NpcDialog(This_Player,
  '�Ѿ����˿����������ˣ�������������û�з���\'
  +'ɢ��ı��أ�˵�������Ѿ����������ˣ������������ɣ�\ \'
  +'|{cmd}<��ȡ���˾��齱��/@GERENJIANLI>\'
  +'|{cmd}<��������/@gtobiqi>'
  );
end;

Procedure _gtobiqi;
begin
   if compareText(This_Player.MapName,'D2004~01') = 0 then
   begin
      This_Player.Flyto('3',334,326);
      This_NPC.CloseDialog(This_Player);
   end;
end;

procedure _GERENJIANLI;
begin
  This_Npc.NpcDialog(This_Player,
  '��ϲ�㣬Ϊ�˽������Ӣ�±�����������<����:300000/c=red>\'
  +'������Ҫ��ȡ��\ \'
  +'|{cmd}<��ȡ����/@OKGERENJIANLI>'
  );
end;

//��ʱˢ�±������ȡ������ͳһ����
procedure CheckTimeNPC(time_need: integer);
begin
  if (GetMin() >= 55) and (GetMin() <= 59) then
  begin
    if time_need = 10 then
    begin
      if time1 = GetDateNum(GetNow()) then   //�жϸ�ʱ����Ƿ��Ѿ����������������� 
      begin
        GivePersonPrize;           //�����������Ѿ�������ֻ����ȡ���˽��� 
      end
      else
      begin
        time1 := GetDateNum(GetNow());
        GiveServerPrize;          //���ŷ��������� 
      end; 
    end
    else if time_need = 13 then
    begin
      if time2 = GetDateNum(GetNow()) then   //�жϸ�ʱ����Ƿ��Ѿ����������������� 
      begin
        GivePersonPrize;           //�����������Ѿ�������ֻ����ȡ���˽��� 
      end
      else
      begin
        time2 := GetDateNum(GetNow());
        GiveServerPrize;          //���ŷ��������� 
      end; 
    end
    else if time_need = 15 then
    begin
      if time3 = GetDateNum(GetNow()) then   //�жϸ�ʱ����Ƿ��Ѿ����������������� 
      begin
        GivePersonPrize;           //�����������Ѿ�������ֻ����ȡ���˽��� 
      end
      else
      begin
        time3 := GetDateNum(GetNow());
        GiveServerPrize;          //���ŷ��������� 
      end; 
    end
    else if time_need = 20 then
    begin
      if time4 = GetDateNum(GetNow()) then   //�жϸ�ʱ����Ƿ��Ѿ����������������� 
      begin
        GivePersonPrize;           //�����������Ѿ�������ֻ����ȡ���˽��� 
      end
      else
      begin
        time4 := GetDateNum(GetNow());
        GiveServerPrize;          //���ŷ��������� 
      end; 
    end
    else
    exit; 
  end
  else if (GetMin() >= 25) and (GetMin() <= 29) and (time_need = 23) then
  begin
    if time5 = GetDateNum(GetNow()) then   //�жϸ�ʱ����Ƿ��Ѿ����������������� 
    begin
        GivePersonPrize;           //�����������Ѿ�������ֻ����ȡ���˽��� 
    end
    else
    begin
       time5 := GetDateNum(GetNow());
       GiveServerPrize;          //���ŷ��������� 
    end;  
  end
  else
  begin
    This_Npc.NpcDialog(This_Player,
    'ÿ���ض�ʱ�䣬�ҽ��������ػ��ı��ء�\'
    +'���ؽ����Զ�ɢ�����ҵ���Χ����Щɢ��ı���\'
    +'����2���ӵ�������2���Ӻ���ܽ��м�ȡ\'
    +'������һ��Ҫ�����ֿ죬Ŀǰ���ŵ�ʱ�仹û����\'
    +'�������ĵĵȴ��£�\'
    +'|{cmd}<��ȡ���˾��齱��/@GERENJIANLI>\ \'
    +'|{cmd}<��������/@gtobiqi>'
    );
  end;
end;

procedure _OKGERENJIANLI;
begin
  if compareText(This_Player.MapName,'D2004~01')= 0 then
  begin
    if (GetHour() = 10) and (GetMin() >= 30) and (GetMin() <= 59) then
    begin
      if This_Player.GetS(19,2)= GetDateNum(GetNow()) then
      begin
        This_Npc.NpcDialog(This_Player,
        '���ʱ��εľ��齱�����Ѿ���ȡ���ˣ������ٴ���ȡ��'
        );
      end
      else
      begin
        This_Player.Give('����',300000);
        This_Player.SetS(19,2,GetDateNum(GetNow()));          //����20�Ż�����2�ű�����¼ÿ��10��30-11��00�ĸ��˽�����ȡ 
        This_Npc.NpcDialog(This_Player,
        '��ϲ�㣬���ʱ��εľ��齱���Ѿ����Ÿ����ˣ�'
        ); 
      end;
    end
    else if (GetHour() = 13) and (GetMin() >= 30) and (GetMin() <= 59) then
    begin
      if This_Player.GetS(19,3)= GetDateNum(GetNow()) then
      begin
        This_Npc.NpcDialog(This_Player,
        '���ʱ��εľ��齱�����Ѿ���ȡ���ˣ������ٴ���ȡ��'
        );
      end
      else
      begin
        This_Player.Give('����',300000);
        This_Player.SetS(19,3,GetDateNum(GetNow()));          //����20�Ż�����3�ű�����¼ÿ��13��30-14��00�ĸ��˽�����ȡ 
        This_Npc.NpcDialog(This_Player,
        '��ϲ�㣬���ʱ��εľ��齱���Ѿ����Ÿ����ˣ�'
        ); 
      end;
    end
    else if (GetHour() = 15) and (GetMin() >= 30) and (GetMin() <= 59) then
    begin
      if This_Player.GetS(19,4)= GetDateNum(GetNow()) then
      begin
        This_Npc.NpcDialog(This_Player,
        '���ʱ��εľ��齱�����Ѿ���ȡ���ˣ������ٴ���ȡ��'
        );
      end
      else
      begin
        This_Player.Give('����',300000);
        This_Player.SetS(19,4,GetDateNum(GetNow()));          //����20�Ż�����4�ű�����¼ÿ��15��30-16��00�ĸ��˽�����ȡ 
        This_Npc.NpcDialog(This_Player,
        '��ϲ�㣬���ʱ��εľ��齱���Ѿ����Ÿ����ˣ�'
        ); 
      end;
    end
    else if (GetHour() = 20) and (GetMin() >= 30) and (GetMin() <= 59) then
    begin
      if This_Player.GetS(19,5)= GetDateNum(GetNow()) then
      begin
        This_Npc.NpcDialog(This_Player,
        '���ʱ��εľ��齱�����Ѿ���ȡ���ˣ������ٴ���ȡ��'
        );
      end
      else
      begin
        This_Player.Give('����',300000);
        This_Player.SetS(19,5,GetDateNum(GetNow()));          //����20�Ż�����5�ű�����¼ÿ��20��30-21��00�ĸ��˽�����ȡ 
        This_Npc.NpcDialog(This_Player,
        '��ϲ�㣬���ʱ��εľ��齱���Ѿ����Ÿ����ˣ�'
        ); 
      end;
    end
    else if (GetHour() = 23) and (GetMin() >= 0) and (GetMin() <= 29) then
    begin
      if This_Player.GetS(19,6)= GetDateNum(GetNow()) then
      begin
        This_Npc.NpcDialog(This_Player,
        '���ʱ��εľ��齱�����Ѿ���ȡ���ˣ������ٴ���ȡ��'
        );
      end
      else
      begin
        This_Player.Give('����',300000);
        This_Player.SetS(19,6,GetDateNum(GetNow()));          //����19�Ż�����6�ű�����¼ÿ��23��00-23��30�ĸ��˽�����ȡ 
        This_Npc.NpcDialog(This_Player,
        '��ϲ�㣬���ʱ��εľ��齱���Ѿ����Ÿ����ˣ�'
        ); 
      end;
    end
    else
      exit;
  end;
end;  

begin
  if (GetHour() = 10) and (GetMin() >= 30) and (GetMin() <= 59) then
  begin
      CheckTimeNPC(10);
  end
  else if (GetHour() = 13) and (GetMin() >= 30) and (GetMin() <= 59) then
  begin
      CheckTimeNPC(13);
  end
  else if (GetHour() = 15) and (GetMin() >= 30) and (GetMin() <= 59) then
  begin
      CheckTimeNPC(15);
  end
  else if (GetHour() = 20) and (GetMin() >= 30) and (GetMin() <= 59) then
  begin
      CheckTimeNPC(20);
  end
  else if (GetHour() = 23) and (GetMin() >= 0) and (GetMin() <= 29) then
  begin
      CheckTimeNPC(23);
  end
  else 
  begin
      This_Npc.NpcDialog(This_Player,
      '���ڲ��ǻʱ�䣬������ȡ������'
      );
  end;
end. 