                                                                                                                                       {********************************************************************


*******************************************************************}

program mir2;

procedure _leiyan1;

 var
 GoldNum:integer;
begin
   if This_Player.GoldNum >= 500000 then 
   begin
       This_Player.RandomFlyto('R001~101');
   end;  
       
    begin
     
     This_Player.DecGold(500000);
    end ;
      if This_Player.GoldNum >= 500000 then
    begin
     ServerSay('���<' + This_Player.Name + '>ʹ��50����,ǰ��ɢ��֮�ң�', 2);
    
    end else          
     begin
       This_Player.NotifyClientCommitItem(0,'�޷����ͣ���Ľ�Ҳ��㣬��Ҫ50���ҡ�'); 
     end;
   

end;
begin

 This_Npc.NpcDialog(This_Player,
'<�������ɢ��֮�ҡ������/c=red>\'+
   '|���ʣ����꼶װ�����������Σ�����������\'+
   '|������������Ҫ50W���\' +
   '|BOSS��ǧ����������Ȫ��������֮�����񣬺�ħ�������������\'+
  
   '|{cmd}<ʹ��50����ǰ��ɢ��֮��/@leiyan1>'      
    );  
end.