{********************************************************************


*******************************************************************}

program mir2;

procedure _leiyan;
begin
  if (This_Player.GetBagItemCount('��Ѫƾ֤') > 0) then
   
    
  begin
     if compareText(This_Player.MapName, '3') = 0 then
     begin
        This_Player.Flyto('HL002', 83, 156);
        This_Npc.CloseDialog(This_Player);
       
     end;
  end
  else
    This_Npc.NpcDialog(This_Player,
      '�㲻����Ѫ��ʿ���޷����룬�뽫��Ѫ���Ʒ��ڰ���!'
    );
end;

begin

 This_Npc.NpcDialog(This_Player,
   '�����ˣ�����Ҫ�ռ�װ����\' +
   '�����ӵ��<��Ѫƾ֤/c=red>���ҿ��Խ��㴫�͵����ض�Ѩ\' +
   '���������Ŵ���δ֪�������ǰ����ս��\' +
   '<��Ѫƾ֤/c=red>�����û���ȥ�������ߴ��һ���Ҳ�����̳ǹ���.\' +
  
   '|{cmd}<������Ѫƾ֤��ǰ����ս��Ѫս��/@leiyan>'      
    );  
end.