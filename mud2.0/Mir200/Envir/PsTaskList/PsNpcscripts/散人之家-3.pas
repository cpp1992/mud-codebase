                                                                                                                                       {********************************************************************


*******************************************************************}

program mir2;

procedure _leiyan1;

 var
 GoldNum:integer;
begin
   if This_Player.GoldNum >= 500000 then 
   begin
       This_Player.Flyto('HL001',371,42);
   end;  
       
    begin
     
     This_Player.DecGold(500000);
    end ;
      if This_Player.GoldNum >= 500000 then
    begin
     This_NPC.NpcNotice('��ң�'+This_Player.Name+'ʹ��50����ǰ��ɢ��֮�ң�');
    
    end else          
     begin
       This_Player.NotifyClientCommitItem(0,'�޷����ͣ���Ľ�Ҳ��㣬��Ҫ50���ҡ�'); 
     end;
   

end;
begin

 This_Npc.NpcDialog(This_Player,
   '�����ˣ�����Ҫ�ռ�װ����\' +
   '����רΪɢ����Ҵ���ɢ��֮�Ҵ򱦵�ͼ\' +
   '���������Ŵ���δ֪�������ǰ����ս��\' +
   '��Ȼ��Ҫ֧��һ��СС�ķ��ã�\' +
  
   '|{cmd}<ʹ��50����ǰ��ɢ��֮��/@leiyan1>'      
    );  
end.