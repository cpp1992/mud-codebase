{********************************************************************
* ��Ԫ���ƣ� 
* ��Ԫ���ߣ�
* ժ    Ҫ��
* ��    ע��

*******************************************************************}


Program Mir2;


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
	 ServerSay('���<' + This_Player.Name + '>ʹ��10����ǰ��ʬ���', 2);
    
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
ServerSay('���<' + This_Player.Name + '>��������򱦵�ͼ��򼶴��ף�����ˣ�', 2);
end;

procedure _M2; 
begin
This_Player.Flyto('3',855,186);
end;

procedure _M3; 
begin
This_Player.Flyto('3',295,341);
ServerSay('���<' + This_Player.Name + '>��������򱦵�ͼʯĹ��Ѩ��ף�����ˣ�', 2);
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
ServerSay('���<' + This_Player.Name + '>��������򱦵�ͼ��ħ����ף�����ˣ�', 2);
end;

procedure _M7; 
begin
This_Player.Flyto('5',660,465);
end;

procedure _M8; 
begin
This_Player.Flyto('4',60,69);
ServerSay('���<' + This_Player.Name + '>��������򱦵�ͼ��ħ������ף�����ˣ�', 2);
end;

procedure _goToNewMonMap_3; 
begin 
    if This_Player.MapName = '0' then 
    This_Player.Flyto('1',90 + random(3) - 1,285 + random(3) - 1); 
end;



begin
This_Npc.NpcDialog(This_Player,
'<�����������򱦡������/c=red>\'+
   '|�����������ѽ�������򱦵�ͼ��\ '+
   '|���ʣ����꼶װ�����������\'+
   '|ʬ����ÿ30����ˢ��һ�Σ�������Ҫ10W���\ '+
   '|BOSS�������������������Ȫ������\'+
   '|{cmd}<ǰ����򼶴Ѩ/@M1>     ^<ǰ����ħ��Ѩ/@M6>\' + 
   '|{cmd}<ǰ����ħ����/@M8>     ^<ǰ��ʯĹ��Ѩ/@M3>\' +
   '|{cmd}<ǰ����������/@goToNewMonMap_3>     ^<ǰ��ʬ����/@M10>\'
    );  

end.