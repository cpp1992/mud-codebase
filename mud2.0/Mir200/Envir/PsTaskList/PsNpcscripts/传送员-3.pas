{
*******************************************************************}

Program Mir2;



Procedure _doexit;
begin
   This_NPC.CloseDialog(This_Player);
end;


Procedure _exit;
begin
   This_NPC.CloseDialog(This_Player);
end;



procedure _weixian; 
begin
 
      This_NPC.NpcDialog(This_Player,
      '�����������Լ�ȥ̽���귨��½�������ˡ�\ \'+
     
     
      '|{cmd}<ǰ����򼶴Ѩ/@M1>          ^<ǰ����������/@M2>\'
      +'|{cmd}<ǰ��ʯĹ��Ѩ/@M3>          ^<ǰ�����߿���/@M4>\' 
      +'|{cmd}<ǰ��ʬħ��Ѩ/@M5>          ^<ǰ����ħ��Ѩ/@M6>\' 
      +'|{cmd}<ǰ��ţħ��Ѩ/@M7>          ^<ǰ����ħ����/@M8>\'
      +'|{cmd}<ǰ������Ͽ��/@M9>          ^<ǰ��ʬ����/@M10>\' 
    
      );
   
end;

procedure _M10; 
 var
 GoldNum:integer;
begin
   if This_Player.GoldNum >= 100000 then 
   begin
       This_Player.Flyto('Q004',14,14);
   end;  
       
    begin
     
     This_Player.DecGold(100000);
    end ;
      if This_Player.GoldNum >= 100000 then
    begin
     This_NPC.NpcNotice('��ң�'+This_Player.Name+'ʹ��10����ǰ��ʬ���');
    
    end else          
     begin
       This_Player.NotifyClientCommitItem(0,'�޷����ͣ���Ľ�Ҳ��㣬��Ҫ10���ҡ�'); 
     end;
   

end;

procedure _M9; 
begin
This_Player.Flyto('11',357,248);
end;

procedure _M1; 
begin
This_Player.Flyto('3',142,98);
end;

procedure _M2; 
begin
This_Player.Flyto('3',855,186);
end;

procedure _M3; 
begin
This_Player.Flyto('3',295,341);
end;

procedure _M4; 
begin
This_Player.Flyto('2',556,176);
end;

procedure _M5; 
begin
This_Player.Flyto('5',521,616);
end;

procedure _M6; 
begin
This_Player.Flyto('5',543,133);
end;

procedure _M7; 
begin
This_Player.Flyto('5',660,465);
end;

procedure _M8; 
begin
This_Player.Flyto('4',60,69);
end;





procedure _moveBQ; 
begin
This_Player.Flyto('0',333,274);
end;

procedure _moveBQ_1; 
begin
This_Player.Flyto('3',330,330);
end;

procedure _moveBQ_2; 
begin
This_Player.Flyto('11',176,326);
end;


procedure _moveBQ_3; 
begin
This_Player.Flyto('4',242,202);
end;

procedure _moveBQ_4; 
begin
This_Player.Flyto('2',500,485);
end;

procedure _moveBQ_5; 
begin
This_Player.Flyto('5',142,331);
end;


procedure _moveBQ_6; 
begin
This_Player.Flyto('0122',14,41);
end;



procedure _anquan; 
begin
 
      This_NPC.NpcDialog(This_Player,
      '�����������Լ�ȥ̽���귨��½�������ˡ�\ \'+
     
     
      '|{cmd}<ǰ������/@MoveBQ>            ^<ǰ������/@MoveBQ_1>\'
      +'|{cmd}<ǰ��������/@MoveBQ_2>          ^<ǰ����ħ��/@MoveBQ_3>\' 
      +'|{cmd}<ǰ������ɽ��/@MoveBQ_4>        ^<ǰ�����µ�/@MoveBQ_5>\' 
      +'|{cmd}<ǰ������ʹ�/@MoveBQ_6>  \' 

      );
   
end;


begin
 
      This_NPC.NpcDialog(This_Player,
      '�����������Լ�ȥ̽���귨��½�������ˡ�\ \'+
     
     
      '|{cmd}<���ﰲȫ�����͡���/@anquan>\'
   
      +'|{cmd}<����Σ�������͡���/@weixian>\' 
      );
   
end.