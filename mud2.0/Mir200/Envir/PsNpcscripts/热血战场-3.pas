{********************************************************************


*******************************************************************}

program mir2;

procedure _leiyan;
begin
  if (This_Player.GetBagItemCount('��Ա������') > 0) then
   
    
  begin
     if compareText(This_Player.MapName, '3') = 0 then
     begin
        This_Player.Flyto('HL002', 83, 156);
        This_Npc.CloseDialog(This_Player);
		ServerSay('���<' + This_Player.Name + '>��������Ѫս��', 2);
       
     end;
  end
  else
    This_Npc.NpcDialog(This_Player,
      '�㲻�ǻ�Ա���޷�����!'
    );
end;

begin

 This_Npc.NpcDialog(This_Player,
   +'<���������Ѫս���������/c=red>\|'
   +'�����ˣ�����Ҫ�ռ�װ����\|'
   +'�����ӵ��<��Ա������/c=red>֤�����ǻ�Ա���ҿ��Խ��㴫�͵���Ѫս��\|'
   +'���������Ŵ���δ֪�������ǰ����ս��\\|'
  
   +'|{cmd}<���ǻ�Ա����Ҫǰ��!/@leiyan>'      
    );  
end.