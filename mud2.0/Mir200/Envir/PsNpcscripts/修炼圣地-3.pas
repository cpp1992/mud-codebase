{
*******************************************************************}

Program Mir2;



Procedure _doexit;
begin
   This_NPC.CloseDialog(This_Player);
end;




Procedure _gointo;
begin
   if This_Player.Level < 80 then
   begin
      This_NPC.NpcDialog(This_Player,
      '��л��������Ը��������ʵ��ѡ���������������������\'+
      '������Ҫ�����㣬ÿ���������������㣬Σ�ճ̶�һ���\'+
      'һ��ߣ�������Я���㹻����ҩƷ����룬40�����������޵ȼ����ƣ�\ \'+
      '|{cmd}<���ù�(�ʺ�15-22����������Ҫ5����)/@gointo17>\'+
      '|{cmd}<��浺(�ʺ�23-30����������Ҫ10����)/@gointo28>\'+
      '|{cmd}<а���(�ʺ�31-39����������Ҫ30����)/@gointo35>\'+
      '|{cmd}<���ߵ���(�����Ƶȼ���������Ҫ1Ԫ��)/@gointo36>\'+
      '|{cmd}<����/@main>');
   end else          
     begin
       This_NPC.NpcDialog(This_Player,
       '�ȼ�����80���޷����롣'); 
     end;
end;

Procedure _gointo36;
begin
   
   
      if This_Player.YBNum >= 1 then 
   begin
     
         This_Player.RandomFlyTo('n111');
          end; 
       begin
     
       This_Player.PsYBConsum(This_NPC,'ForgeDiaYB',20190,1,1);
      end ;
       if This_Player.YBNum >= 1 then
    begin
     This_NPC.NpcNotice('��ң�'+This_Player.Name+'ʹ��1Ԫ��ǰ�����ߵ���������');
    
    end else          
     begin
       This_Player.NotifyClientCommitItem(0,'�޷����ͣ���û��1Ԫ������Ҫ1Ԫ����'); 
     end;
  end;
Procedure _gointo35;
begin
   
   
     if This_Player.GoldNum >= 300000 then 
   begin
      
         This_Player.RandomFlyTo('n103');
          end; 
       begin
     
       This_Player.DecGold(300000);
      end ;
      if This_Player.GoldNum >= 300000 then
    begin
     This_NPC.NpcNotice('��ң�'+This_Player.Name+'ʹ��30����ǰ��а���������');
    
    end else          
     begin
       This_Player.NotifyClientCommitItem(0,'�޷����ͣ���Ľ�Ҳ��㣬��Ҫ30���ҡ�'); 
     end;
   
 
end;

Procedure _gointo28;
begin
   
   
     if This_Player.GoldNum >= 100000 then 
   begin
      
         This_Player.RandomFlyTo('n106');
          end; 
       begin
     
       This_Player.DecGold(100000);
      end ;
      if This_Player.GoldNum >= 100000 then
    begin
     This_NPC.NpcNotice('��ң�'+This_Player.Name+'ʹ��10����ǰ����浺������');
    
    end else          
     begin
       This_Player.NotifyClientCommitItem(0,'�޷����ͣ���Ľ�Ҳ��㣬��Ҫ10���ҡ�'); 
     end;
   
 
end;


Procedure _gointo17;
begin
     if This_Player.GoldNum >= 50000 then 
   begin
   
    This_Player.RandomFlyTo('n102');
   end; 
       begin
     
       This_Player.DecGold(50000);
      end ;
      if This_Player.GoldNum >= 50000 then
    begin
     This_NPC.NpcNotice('��ң�'+This_Player.Name+'ʹ��5����ǰ�����ù�������');
    
    end else          
     begin
       This_Player.NotifyClientCommitItem(0,'�޷����ͣ���Ľ�Ҳ��㣬��Ҫ5���ҡ�'); 
     end;
   
 
end;






begin
      This_NPC.NpcDialog(This_Player,
      '�������ṩ��ݵ�������������Ȼ��Ҫ��ȡһЩ���á�\ \'+
      '�����Ƶȼ���\ \'+
      
      +'|{cmd}<��Ҫ��������/@gointo>\'
     
      
      );
  
end.