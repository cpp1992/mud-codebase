           {
*******************************************************************}

Program Mir2;

procedure _DoExit;
begin
  This_Npc.CloseDialog(This_Player);
end;

procedure _Exit;                         
begin
  This_Npc.CloseDialog(This_Player);
end;


procedure _wangz;                         
begin
   This_Npc.NpcDialog(This_Player,
   '��ѡ����Ҫ�һ���ѫ�£�ֻҪ���㹻��ԭ�ϣ��ͷ��Ľ����Ұɡ�\'+
   '<���ϲ�����Ҫ��һ��������������Ų�����!/c=red> \'+
   '|{cmd}<�һ�����ѫ��(ս)/@wz1>\ \'+
   '|{cmd}<�һ�����ѫ��(��)/@wz2>\ \'+
   '|{cmd}<�һ�����ѫ��(��)/@wz3>\ \'+

    '|{cmd}<����/@main>');


end;



procedure _yongzhe;                         
begin
   This_Npc.NpcDialog(This_Player,
   '��ѡ����Ҫ�һ���ѫ�£�ֻҪ���㹻��ԭ�ϣ��ͷ��Ľ����Ұɡ�\'+
   '|{cmd}<�һ�����ѫ��(ս)/@yz1>\ \'+
   '|{cmd}<�һ�����ѫ��(��)/@yf2>\ \'+
   '|{cmd}<�һ�����ѫ��(��)/@yd3>\ \'+

    '|{cmd}<����/@main>');


end;

procedure _yz1;                         
begin
   This_Npc.NpcDialog(This_Player,
   '��ѡ����Ҫ�һ���ѫ�£�ֻҪ���㹻��ԭ�ϣ��ͷ��Ľ����Ұɡ�\'+
    '|{cmd}<�һ�����ѫ��һ��(ս)/@yong1>\ \'+
    '|{cmd}<������������ѫ��(ս)/@yong2>\ \'+
    '|{cmd}<������������ѫ��(ս)/@yong3>\ \'+
    '|{cmd}<�����ļ�����ѫ��(ս)/@yong4>\ \'+ 
    '|{cmd}<�����弶����ѫ��(ս)/@yong5>\ \'+ 
    '|{cmd}<����/@main>');


end;

procedure _yf2;                                                
begin                                                          
   This_Npc.NpcDialog(This_Player,                             
   '��ѡ����Ҫ�һ���ѫ�£�ֻҪ���㹻��ԭ�ϣ��ͷ��Ľ����Ұɡ�\'+
    '|{cmd}<�һ�����ѫ��һ��(��)/@yong6>\ \'+
    '|{cmd}<������������ѫ��(��)/@yong7>\ \'+
    '|{cmd}<������������ѫ��(��)/@yong8>\ \'+
    '|{cmd}<�����ļ�����ѫ��(��)/@yong9>\ \'+
    '|{cmd}<�����弶����ѫ��(��)/@yong10>\ \'+
    '|{cmd}<����/@main>');

end; 


procedure _yd3;                                                          
begin                                                                    
   This_Npc.NpcDialog(This_Player,                                       
   '��ѡ����Ҫ�һ���ѫ�£�ֻҪ���㹻��ԭ�ϣ��ͷ��Ľ����Ұɡ�\'+          
    '|{cmd}<�һ�����ѫ��һ��(��)/@yong11>\ \'+                                  
    '|{cmd}<������������ѫ��(��)/@yong12>\ \'+                             
    '|{cmd}<������������ѫ��(��)/@yong13>\ \'+                             
    '|{cmd}<�����ļ�����ѫ��(��)/@yong14>\ \'+                                     
    '|{cmd}<�����弶����ѫ��(��)/@yong15>\ \'+                                
    '|{cmd}<����/@main>');                                                                                        

end;  



procedure _yinx;                         
begin
   This_Npc.NpcDialog(This_Player,
   '��ѡ����Ҫ�һ���ѫ�£�ֻҪ���㹻��ԭ�ϣ��ͷ��Ľ����Ұɡ�\'+
   '|{cmd}<�һ�����ѫ��(ս)/@yxi1>\ \'+
   '|{cmd}<�һ�����ѫ��(��)/@yxi2>\ \'+
   '|{cmd}<�һ�����ѫ��(��)/@yxi3>\ \'+

    '|{cmd}<����/@main>');


end;

procedure _yxi1;                         
begin
   This_Npc.NpcDialog(This_Player,
   '��ѡ����Ҫ�һ���ѫ�£�ֻҪ���㹻��ԭ�ϣ��ͷ��Ľ����Ұɡ�\'+
    '|{cmd}<�һ�����ѫ��һ��(ս)/@yx1>\ \'+
    '|{cmd}<������������ѫ��(ս)/@yx2>\ \'+
    '|{cmd}<��������������ѫ��(ս)/@yx3>\ \'+
    '|{cmd}<�����ļ�������ѫ��(ս)/@yx4>\ \'+ 
    '|{cmd}<�����弶����ѫ��(ս)/@yx5>\ \'+ 
    '|{cmd}<����/@main>');


end;

procedure _yxi2;                                                
begin                                                          
   This_Npc.NpcDialog(This_Player,                             
   '��ѡ����Ҫ�һ���ѫ�£�ֻҪ���㹻��ԭ�ϣ��ͷ��Ľ����Ұɡ�\'+
    '|{cmd}<�һ�����ѫ��һ��(��)/@yx6>\ \'+
    '|{cmd}<������������ѫ��(��)/@yx7>\ \'+
    '|{cmd}<������������ѫ��(��)/@yx8>\ \'+
    '|{cmd}<�����ļ�����ѫ��(��)/@yx9>\ \'+
    '|{cmd}<�����弶����ѫ��(��)/@yx10>\ \'+
    '|{cmd}<����/@main>');

end; 


procedure _yxi3;                                                          
begin                                                                    
   This_Npc.NpcDialog(This_Player,                                       
   '��ѡ����Ҫ�һ���ѫ�£�ֻҪ���㹻��ԭ�ϣ��ͷ��Ľ����Ұɡ�\'+          
    '|{cmd}<�һ�����ѫ��һ��(��)/@yx11>\ \'+                                  
    '|{cmd}<������������ѫ��(��)/@yx12>\ \'+                             
    '|{cmd}<������������ѫ��(��)/@yx13>\ \'+                             
    '|{cmd}<�����ļ�����ѫ��(��)/@yx14>\ \'+                                     
    '|{cmd}<�����弶����ѫ��(��)/@yx15>\ \'+                                
    '|{cmd}<����/@main>');                                                                                        

end;  





Procedure DuanZaoMB(tu01:string; tu02:string; tu03:string; tu04:string; DZItem:string);
begin
if ( This_Player.GetBagItemCount(tu01) >= 1 ) and ( This_Player.GetBagItemCount(tu02) >= 1 ) 
      and ( This_Player.GetBagItemCount(tu03) >= 1 ) and ( This_Player.GetBagItemCount(tu04) >= 1 ) 
      and ( This_Player.MyShengwan >= 50) then
   begin
      This_Player.Take(tu01,1);
      This_Player.Take(tu02,1);
      This_Player.Take(tu03,1);
      This_Player.Take(tu04,1);
      
      This_Player.Give(DZItem,1);
      This_NPC.NpcDialog(This_Player,
      '��ϲ���������Ѿ��ɹ�����ȥ�������İ����ɣ�');
   end else 
   begin
      This_NPC.NpcDialog(This_Player,
      '�ܿ�ϧ����û�ж���������㹻ԭ�ϡ�');
   end;
end;

procedure _yong1;                         
begin
   This_Npc.NpcDialog(This_Player,
   '�һ���������ս�¢�������Ʒ��\'+
   '������50��\'+
   'ѫ��֮��4��\ \'+
   '����<����/@makey1>\'+
  
   '|{cmd}<�ر�/@exit>');
end;

Procedure _makey1;
begin
   
   
      if This_Player.MyShengwan >= 50 then
      begin
   
       
        DuanZaoMB('ѫ��֮��','ѫ��֮��','ѫ��֮��','ѫ��֮��','����ս�¢�');
        This_Player.MyShengwan := This_Player.MyShengwan - 50;
      end  
    else                                                                                        
    begin
    This_Npc.NpcDialog(This_Player,          
    '�������㣬�޷����졣\ \');
    end;
   
end;
procedure _yong6;                         
begin
   This_Npc.NpcDialog(This_Player,
   '�һ����߷��¢�������Ʒ��\'+
   '������50��\'+
   'ѫ��֮��4��\ \'+
   '����<����/@makey2>\'+
  
   '|{cmd}<�ر�/@exit>');
end;

Procedure _makey2;

begin
     if This_Player.MyShengwan >= 50 then
     begin
   
   DuanZaoMB('ѫ��֮��','ѫ��֮��','ѫ��֮��','ѫ��֮��','���߷��¢�');
   This_Player.MyShengwan := This_Player.MyShengwan - 50;
   end  
    else                                                                                        
    begin
    This_Npc.NpcDialog(This_Player,          
    '�������㣬�޷����졣\ \');
    end;
end;

procedure _yong11;                         
begin
   This_Npc.NpcDialog(This_Player,
   '�һ����ߵ��¢�������Ʒ��\'+
   '������50��\'+
   'ѫ��֮��4��\ \'+
   '����<����/@makey3>\'+
  
   '|{cmd}<�ر�/@exit>');
end;

Procedure _makey3;
begin
    if This_Player.MyShengwan >= 50 then
    begin
   
   DuanZaoMB('ѫ��֮��','ѫ��֮��','ѫ��֮��','ѫ��֮��','���ߵ��¢�');
   This_Player.MyShengwan := This_Player.MyShengwan - 50;
   end  
    else                                                                                        
    begin
    This_Npc.NpcDialog(This_Player,          
    '�������㣬�޷����졣\ \');
    end;
end;


procedure _yong2;                         
begin
   This_Npc.NpcDialog(This_Player,
   '�һ�����ս�¢�������Ʒ��\'+
   '������50��\'+
   '����ս�¢٣�ѫ��֮��3��\ \'+
   '����<����/@makey4>\'+
  
   '|{cmd}<�ر�/@exit>');
end;

Procedure _makey4;
begin
    if This_Player.MyShengwan >= 50 then
    begin

   DuanZaoMB('����ս�¢�','ѫ��֮��','ѫ��֮��','ѫ��֮��','����ս�¢�');
      This_Player.MyShengwan := This_Player.MyShengwan - 50;
      end  
    else                                                                                        
    begin
    This_Npc.NpcDialog(This_Player,          
    '�������㣬�޷����졣\ \');
    end;
end;


procedure _yong7;                         
begin
   This_Npc.NpcDialog(This_Player,
   '�һ����߷��¢�������Ʒ��\'+
   '������150��\'+
   '���߷��¢٣�ѫ��֮��3��\ \'+
   '����<����/@makey5>\'+
  
   '|{cmd}<�ر�/@exit>');
end;

Procedure _makey5;
begin
    if This_Player.MyShengwan >= 150 then
    begin
   
   DuanZaoMB('���߷��¢�','ѫ��֮��','ѫ��֮��','ѫ��֮��','���߷��¢�');
   This_Player.MyShengwan := This_Player.MyShengwan - 150;
   end  
    else                                                                                        
    begin
    This_Npc.NpcDialog(This_Player,          
    '�������㣬�޷����졣\ \');
    end;
end;


procedure _yong12;                         
begin
   This_Npc.NpcDialog(This_Player,
   '�һ����ߵ��¢�������Ʒ��\'+
   '������150��\'+
   '���ߵ��¢٣�ѫ��֮��3��\ \'+
   '����<����/@makey6>\'+
  
   '|{cmd}<�ر�/@exit>');
end;

Procedure _makey6;
begin
    if This_Player.MyShengwan >= 150 then
    begin
   
   DuanZaoMB('���ߵ��¢�','ѫ��֮��','ѫ��֮��','ѫ��֮��','���ߵ��¢�');
   This_Player.MyShengwan := This_Player.MyShengwan - 150;
   end  
    else                                                                                        
    begin
    This_Npc.NpcDialog(This_Player,          
    '�������㣬�޷����졣\ \');
    end;
end;



procedure _yong3;                         
begin
   This_Npc.NpcDialog(This_Player,
   '�һ�����ս�¢�������Ʒ��\'+
   '������300��\'+
   '����ս�¢ڣ�ѫ��֮��3��\ \'+
   '����<����/@makey7>\'+
  
   '|{cmd}<�ر�/@exit>');
end;

Procedure _makey7;
begin
    if This_Player.MyShengwan >= 300 then
    begin
  
   DuanZaoMB('����ս�¢�','ѫ��֮��','ѫ��֮��','ѫ��֮��','����ս�¢�');
    This_Player.MyShengwan := This_Player.MyShengwan - 300;
   end  
    else                                                                                        
    begin
    This_Npc.NpcDialog(This_Player,          
    '�������㣬�޷����졣\ \');
    end;
end;                                                                                                  


procedure _yong8;                         
begin
   This_Npc.NpcDialog(This_Player,
   '�һ����߷��¢�������Ʒ��\'+
   '������300��\'+
   '���߷��¢ڣ�ѫ��֮��3��\ \'+
   '����<����/@makey8>\'+
  
   '|{cmd}<�ر�/@exit>');
end;

Procedure _makey8;
begin
    if This_Player.MyShengwan >= 300 then
    begin
  
   DuanZaoMB('���߷��¢�','ѫ��֮��','ѫ��֮��','ѫ��֮��','���߷��¢�');
    This_Player.MyShengwan := This_Player.MyShengwan - 300;
   end  
    else                                                                                        
    begin
    This_Npc.NpcDialog(This_Player,          
    '�������㣬�޷����졣\ \');
    end;
end;                                                                                                  


procedure _yong13;                         
begin
   This_Npc.NpcDialog(This_Player,
   '�һ����ߵ��¢�������Ʒ��\'+
   '������300��\'+
   '���ߵ��¢ڣ�ѫ��֮��3��\ \'+
   '����<����/@makey9>\'+
  
   '|{cmd}<�ر�/@exit>');
end;

Procedure _makey9;
begin
    if This_Player.MyShengwan >= 300 then
    begin
  
   DuanZaoMB('���ߵ��¢�','ѫ��֮��','ѫ��֮��','ѫ��֮��','���ߵ��¢�');
    This_Player.MyShengwan := This_Player.MyShengwan - 300;
   end  
    else                                                                                        
    begin
    This_Npc.NpcDialog(This_Player,          
    '�������㣬�޷����졣\ \');
    end;
end; 


procedure _yong4;                         
begin
   This_Npc.NpcDialog(This_Player,
   '�һ�����ս�¢�������Ʒ��\'+
   '������400��\'+
   '����ս�¢ۣ�ѫ��֮��3��\ \'+
   '����<����/@makey10>\'+
  
   '|{cmd}<�ر�/@exit>');
end;

Procedure _makey10;
begin
    if This_Player.MyShengwan >= 400 then
    begin
   
    DuanZaoMB('����ս�¢�','ѫ��֮��','ѫ��֮��','ѫ��֮��','����ս�¢�');
     This_Player.MyShengwan := This_Player.MyShengwan - 400;
   end  
    else                                                                                        
    begin
    This_Npc.NpcDialog(This_Player,          
    '�������㣬�޷����졣\ \');
    end;
end;                                                                                                  


procedure _yong9;                         
begin
   This_Npc.NpcDialog(This_Player,
   '�һ����߷��¢�������Ʒ��\'+
   '������400��\'+
   '���߷��¢ۣ�ѫ��֮��3��\ \'+
   '����<����/@makey11>\'+
  
   '|{cmd}<�ر�/@exit>');
end;

Procedure _makey11;
begin
    if This_Player.MyShengwan >= 400 then
    begin
  
   DuanZaoMB('���߷��¢�','ѫ��֮��','ѫ��֮��','ѫ��֮��','���߷��¢�');
    This_Player.MyShengwan := This_Player.MyShengwan - 400;
   end  
    else                                                                                        
    begin
    This_Npc.NpcDialog(This_Player,          
    '�������㣬�޷����졣\ \');
    end;
end;                                                                                                  


procedure _yong14;                         
begin
   This_Npc.NpcDialog(This_Player,
   '�һ����ߵ��¢�������Ʒ��\'+
   '������400��\'+
   '���ߵ��¢ۣ�ѫ��֮��3��\ \'+
   '����<����/@makey12>\'+
  
   '|{cmd}<�ر�/@exit>');
end;

Procedure _makey12;
begin
    if This_Player.MyShengwan >= 400 then
    begin
   
   DuanZaoMB('���ߵ��¢�','ѫ��֮��','ѫ��֮��','ѫ��֮��','���ߵ��¢�');
   This_Player.MyShengwan := This_Player.MyShengwan - 400;
   end  
    else                                                                                        
    begin
    This_Npc.NpcDialog(This_Player,          
    '�������㣬�޷����졣\ \');
    end;
end; 

procedure _yong5;                         
begin
   This_Npc.NpcDialog(This_Player,
   '�һ�����ս�¢�������Ʒ��\'+
   '������500��\'+
   '����ս�¢ܣ�ѫ��֮��3��\ \'+
   '����<����/@makey13>\'+
  
   '|{cmd}<�ر�/@exit>');
end;

Procedure _makey13;
begin
    if This_Player.MyShengwan >= 500 then
    begin
  
    DuanZaoMB('����ս�¢�','ѫ��֮��','ѫ��֮��','ѫ��֮��','����ս�¢�');
    This_Player.MyShengwan := This_Player.MyShengwan - 500;
   end  
    else                                                                                        
    begin
    This_Npc.NpcDialog(This_Player,          
    '�������㣬�޷����졣\ \');
    end;
end;                                                                                                  


procedure _yong10;                         
begin
   This_Npc.NpcDialog(This_Player,
   '�һ����߷��¢�������Ʒ��\'+
   '������500��\'+
   '���߷��¢ܣ�ѫ��֮��3��\ \'+
   '����<����/@makey14>\'+
  
   '|{cmd}<�ر�/@exit>');
end;

Procedure _makey14;
begin
    if This_Player.MyShengwan >= 500 then
    begin
  
   DuanZaoMB('���߷��¢�','ѫ��֮��','ѫ��֮��','ѫ��֮��','���߷��¢�');
    This_Player.MyShengwan := This_Player.MyShengwan - 500;
   end  
    else                                                                                        
    begin
    This_Npc.NpcDialog(This_Player,          
    '�������㣬�޷����졣\ \');
    end;
end;                                                                                                  


procedure _yong15;                         
begin
   This_Npc.NpcDialog(This_Player,
   '�һ����ߵ��¢�������Ʒ��\'+
   '������500��\'+
   '���ߵ��¢ܣ�ѫ��֮��3��\ \'+
   '����<����/@makey15>\'+
  
   '|{cmd}<�ر�/@exit>');
end;

Procedure _makey15;
begin
    if This_Player.MyShengwan >= 500 then
    begin
  
   DuanZaoMB('���ߵ��¢�','ѫ��֮��','ѫ��֮��','ѫ��֮��','���ߵ��¢�');
    This_Player.MyShengwan := This_Player.MyShengwan - 500;
   end  
    else                                                                                        
    begin
    This_Npc.NpcDialog(This_Player,          
    '�������㣬�޷����졣\ \');
    end;
end;                                                                                                  
                                                                                                  
procedure _yx1;                         
begin
   This_Npc.NpcDialog(This_Player,
   '�һ���������ս�¢�������Ʒ��\'+
   '������600��\'+
   '����ս�¢�,ѫ��֮��3��\ \'+
   '����<����/@makey16>\'+
  
   '|{cmd}<�ر�/@exit>');
end;

Procedure _makey16;
begin
    if This_Player.MyShengwan >= 600 then
  begin
  
   DuanZaoMB('����ս�¢�','ѫ��֮��','ѫ��֮��','ѫ��֮��','����ս�¢�');
    This_Player.MyShengwan := This_Player.MyShengwan - 600;
   end  
    else                                                                                        
    begin
    This_Npc.NpcDialog(This_Player,          
    '�������㣬�޷����졣\ \');
    end;
end;

procedure _yx6;                         
begin
   This_Npc.NpcDialog(This_Player,
   '�һ����Ƿ��¢�������Ʒ��\'+
   '������600��\'+
   '���߷��¢ݣ�ѫ��֮��3��\ \'+
   '����<����/@makey17>\'+
  
   '|{cmd}<�ر�/@exit>');
end;

Procedure _makey17;
begin
    if This_Player.MyShengwan >= 600 then
    begin
 
   DuanZaoMB('���߷��¢�','ѫ��֮��','ѫ��֮��','ѫ��֮��','���Ƿ��¢�');
     This_Player.MyShengwan := This_Player.MyShengwan - 600;
   end  
    else                                                                                        
    begin
    This_Npc.NpcDialog(This_Player,          
    '�������㣬�޷����졣\ \');
    end;
end;

procedure _yx11;                         
begin
   This_Npc.NpcDialog(This_Player,
   '�һ����ǵ��¢�������Ʒ��\'+
   '������600��\'+
   '���ߵ��¢�ѫ��֮��3��\ \'+
   '����<����/@makey18>\'+
  
   '|{cmd}<�ر�/@exit>');
end;

Procedure _makey18;
begin
    if This_Player.MyShengwan >= 600 then
    begin
  
   DuanZaoMB('���ߵ��¢�','ѫ��֮��','ѫ��֮��','ѫ��֮��','���ǵ��¢�');
    This_Player.MyShengwan := This_Player.MyShengwan - 600;
   end  
    else                                                                                        
    begin
    This_Npc.NpcDialog(This_Player,          
    '�������㣬�޷����졣\ \');
    end;
end;


procedure _yx2;                         
begin
   This_Npc.NpcDialog(This_Player,
   '�һ�����ս�¢�������Ʒ��\'+
   '������700��\'+
   '����ս�¢٣�ѫ��֮��3��\ \'+
   '����<����/@makey19>\'+
  
   '|{cmd}<�ر�/@exit>');
end;

Procedure _makey19;
begin
    if This_Player.MyShengwan >= 700 then
    begin

   DuanZaoMB('����ս�¢�','ѫ��֮��','ѫ��֮��','ѫ��֮��','����ս�¢�');
      This_Player.MyShengwan := This_Player.MyShengwan - 700;
   end  
    else                                                                                        
    begin
    This_Npc.NpcDialog(This_Player,          
    '�������㣬�޷����졣\ \');
    end;
end;


procedure _yx7;                         
begin
   This_Npc.NpcDialog(This_Player,
   '�һ����Ƿ��¢�������Ʒ��\'+
   '������800��\'+
   '���Ƿ��¢٣�ѫ��֮��3��\ \'+
   '����<����/@makey20>\'+
  
   '|{cmd}<�ر�/@exit>');
end;

Procedure _makey20;
begin
    if This_Player.MyShengwan >= 800 then
    begin

   DuanZaoMB('���Ƿ��¢�','ѫ��֮��','ѫ��֮��','ѫ��֮��','���Ƿ��¢�');
      This_Player.MyShengwan := This_Player.MyShengwan - 800;
   end  
    else                                                                                        
    begin
    This_Npc.NpcDialog(This_Player,          
    '�������㣬�޷����졣\ \');
    end;
end;


procedure _yx12;                         
begin
   This_Npc.NpcDialog(This_Player,
   '�һ����ǵ��¢�������Ʒ��\'+
   '������800��\'+
   '���ǵ��¢٣�ѫ��֮��3��\ \'+
   '����<����/@makey21>\'+
  
   '|{cmd}<�ر�/@exit>');
end;

Procedure _makey21;
begin
    if This_Player.MyShengwan >= 800 then
    begin

   DuanZaoMB('���ǵ��¢�','ѫ��֮��','ѫ��֮��','ѫ��֮��','���ǵ��¢�');
      This_Player.MyShengwan := This_Player.MyShengwan - 800;
   end  
    else                                                                                        
    begin
    This_Npc.NpcDialog(This_Player,          
    '�������㣬�޷����졣\ \');
    end;
end;



procedure _yx3;                         
begin
   This_Npc.NpcDialog(This_Player,
   '�һ�����ս�¢�������Ʒ��\'+
   '������900��\'+
   '����ս�¢ڣ�ѫ��֮��3��\ \'+
   '����<����/@makey22>\'+
  
   '|{cmd}<�ر�/@exit>');
end;

Procedure _makey22;
begin
    if This_Player.MyShengwan >= 900 then
    begin

   DuanZaoMB('����ս�¢�','ѫ��֮��','ѫ��֮��','ѫ��֮��','����ս�¢�');
      This_Player.MyShengwan := This_Player.MyShengwan - 900;
   end  
    else                                                                                        
    begin
    This_Npc.NpcDialog(This_Player,          
    '�������㣬�޷����졣\ \');
    end;
end;                                                                                                  


procedure _yx8;                         
begin
   This_Npc.NpcDialog(This_Player,
   '�һ����Ƿ��¢�������Ʒ��\'+
   '������900��\'+
   '���Ƿ��¢ڣ�ѫ��֮��3��\ \'+
   '����<����/@makey23>\'+
  
   '|{cmd}<�ر�/@exit>');
end;

Procedure _makey23;
begin
    if This_Player.MyShengwan >= 900 then
  begin
   
   DuanZaoMB('���Ƿ��¢�','ѫ��֮��','ѫ��֮��','ѫ��֮��','���Ƿ��¢�');
   This_Player.MyShengwan := This_Player.MyShengwan - 900;
   end  
    else                                                                                        
    begin
    This_Npc.NpcDialog(This_Player,          
    '�������㣬�޷����졣\ \');
    end;
end;                                                                                                  


procedure _yx13;                         
begin
   This_Npc.NpcDialog(This_Player,
   '�һ����ǵ��¢�������Ʒ��\'+
   '������900��\'+
   '���ǵ��¢ڣ�ѫ��֮��3��\ \'+
   '����<����/@makey24>\'+
  
   '|{cmd}<�ر�/@exit>');
end;

Procedure _makey24;
begin
    if This_Player.MyShengwan >= 900 then
  begin
  
   DuanZaoMB('���ǵ��¢�','ѫ��֮��','ѫ��֮��','ѫ��֮��','���ǵ��¢�');
    This_Player.MyShengwan := This_Player.MyShengwan - 900;
   end  
    else                                                                                        
    begin
    This_Npc.NpcDialog(This_Player,          
    '�������㣬�޷����졣\ \');
    end;
end; 


procedure _yx4;                         
begin
   This_Npc.NpcDialog(This_Player,
   '�һ�����ս�¢�������Ʒ��\'+
   '������1000��\'+
   '����ս�¢ۣ�ѫ��֮��3��\ \'+
   '����<����/@makey25>\'+
  
   '|{cmd}<�ر�/@exit>');
end;

Procedure _makey25;
begin
    if This_Player.MyShengwan >= 1000 then
 begin
  
   DuanZaoMB('����ս�¢�','ѫ��֮��','ѫ��֮��','ѫ��֮��','����ս�¢�');
    This_Player.MyShengwan := This_Player.MyShengwan - 1000;
   end  
    else                                                                                        
    begin
    This_Npc.NpcDialog(This_Player,          
    '�������㣬�޷����졣\ \');
    end;
end;                                                                                                  


procedure _yx9;                         
begin
   This_Npc.NpcDialog(This_Player,
   '�һ����Ƿ��¢�������Ʒ��\'+
   '������1100��\'+
   '���Ƿ��¢ۣ�ѫ��֮��3��\ \'+
   '����<����/@makey26>\'+
  
   '|{cmd}<�ر�/@exit>');
end;

Procedure _makey26;
begin
    if This_Player.MyShengwan >= 1100 then
    begin
  
   DuanZaoMB('���Ƿ��¢�','ѫ��֮��','ѫ��֮��','ѫ��֮��','���Ƿ��¢�');
    This_Player.MyShengwan := This_Player.MyShengwan - 1100;
   end  
    else                                                                                        
    begin
    This_Npc.NpcDialog(This_Player,          
    '�������㣬�޷����졣\ \');
    end;
end;                                                                                                  


procedure _yx14;                         
begin
   This_Npc.NpcDialog(This_Player,
   '�һ����ǵ��¢�������Ʒ��\'+
   '������1100��\'+
   '���ǵ��¢ۣ�ѫ��֮��3��\ \'+
   '����<����/@makey27>\'+
  
   '|{cmd}<�ر�/@exit>');
end;

Procedure _makey27;
begin
    if This_Player.MyShengwan >= 1100 then
   begin
  
   DuanZaoMB('�µ����¢�','ѫ��֮��','ѫ��֮��','ѫ��֮��','���ǵ��¢�');
    This_Player.MyShengwan := This_Player.MyShengwan - 1100;
   end  
    else                                                                                        
    begin
    This_Npc.NpcDialog(This_Player,          
    '�������㣬�޷����졣\ \');
    end;
end; 

procedure _yx5;                         
begin
   This_Npc.NpcDialog(This_Player,
   '�һ�����ս�¢�������Ʒ��\'+
   '������1200��\'+
   '����ս�¢ܣ�ѫ��֮��3��\ \'+
   '����<����/@makey28>\'+
  
   '|{cmd}<�ر�/@exit>');
end;

Procedure _makey28;
begin
    if This_Player.MyShengwan >= 1200 then
    begin
  
    DuanZaoMB('����ս�¢�','ѫ��֮��','ѫ��֮��','ѫ��֮��','����ս�¢�');
      This_Player.MyShengwan := This_Player.MyShengwan - 1200;
    end  
    else                                                                                        
    begin
    This_Npc.NpcDialog(This_Player,          
    '�������㣬�޷����졣\ \');
    end;
end;                                                                                                  


procedure _yx10;                         
begin
   This_Npc.NpcDialog(This_Player,
   '�һ����Ƿ��¢�������Ʒ��\'+
   '������1200��\'+
   '���Ƿ��¢ܣ�ѫ��֮��3��\ \'+
   '����<����/@makey29>\'+
  
   '|{cmd}<�ر�/@exit>');
end;

Procedure _makey29;
begin
    if This_Player.MyShengwan >= 1200 then
    begin
    
    DuanZaoMB('���Ƿ��¢�','ѫ��֮��','ѫ��֮��','ѫ��֮��','���Ƿ��¢�');
    This_Player.MyShengwan := This_Player.MyShengwan - 1200;
    end  
    else                                                                                        
    begin
    This_Npc.NpcDialog(This_Player,          
    '�������㣬�޷����졣\ \');
    end;
end;                                                                                                  


procedure _yx15;                         
begin
   This_Npc.NpcDialog(This_Player,
   '�һ����ǵ��¢�������Ʒ��\'+
   '������1200��\'+
   '���ǵ��¢ܣ�ѫ��֮��3��\ \'+
   '����<����/@makey30>\'+
  
   '|{cmd}<�ر�/@exit>');
end;

Procedure _makey30;
begin
    if This_Player.MyShengwan >= 1200 then
    begin
   
    DuanZaoMB('���ǵ��¢�','ѫ��֮��','ѫ��֮��','ѫ��֮��','���ǵ��¢�');
     This_Player.MyShengwan := This_Player.MyShengwan - 1200;
    end  
    else                                                                                        
    begin
    This_Npc.NpcDialog(This_Player,          
    '�������㣬�޷����졣\ \');
    end;
end;        

procedure _wz1;                         
begin
   This_Npc.NpcDialog(This_Player,
   '�һ�����ѫ��(ս)������Ʒ��\'+
   '������1500��\'+
   '����ս�¢ݣ�ѫ��֮��3��\ \'+
   '����<����/@makey31>\'+
  
   '|{cmd}<�ر�/@exit>');
end;

Procedure _makey31;
 begin
     if This_Player.MyShengwan >= 1500 then
    begin
          
        DuanZaoMB('����ս�¢�','ѫ��֮��','ѫ��֮��','ѫ��֮��','����ѫ��(ս)');
        This_Player.MyShengwan := This_Player.MyShengwan - 1500; 
        
    end  
    else                                                                                        
    begin
    This_Npc.NpcDialog(This_Player,          
    '�������㣬�޷����졣\ \');
    end;
 end;
 
 
procedure _wz2;                         
begin
   This_Npc.NpcDialog(This_Player,
   '�һ�����ѫ��(��)������Ʒ��\'+
   '������1500��\'+
   '���Ƿ��¢ݣ�ѫ��֮��3��\ \'+
   '����<����/@makey32>\'+
  
   '|{cmd}<�ر�/@exit>');
end;

Procedure _makey32;
begin
    if This_Player.MyShengwan >= 1500 then
  begin
     DuanZaoMB('���Ƿ��¢�','ѫ��֮��','ѫ��֮��','ѫ��֮��','����ѫ��(��)');
     This_Player.MyShengwan := This_Player.MyShengwan - 1500;
  end  else
    begin
    This_Npc.NpcDialog(This_Player,          
    '�������㣬�޷����졣\ \');
    end;


end;                                                                                                  


procedure _wz3;                         
begin
   This_Npc.NpcDialog(This_Player,
   '�һ����ǵ��¢�������Ʒ��\'+
   '������1500��\'+
   '���ǵ��¢ݣ�ѫ��֮��3��\ \'+
   '����<����/@makey33>\'+
  
   '|{cmd}<�ر�/@exit>');
end;

Procedure _makey33;
begin
    if This_Player.MyShengwan >= 1500 then
   begin
    
     DuanZaoMB('���ǵ��¢�','ѫ��֮��','ѫ��֮��','ѫ��֮��','����ѫ��(��)');
      This_Player.MyShengwan := This_Player.MyShengwan - 1500;
     end  else
    begin
    This_Npc.NpcDialog(This_Player,          
    '�������㣬�޷����졣\ \');
    end;

end;       


                                                                                          
                                                                                                    


//�ű�ִ�е����
Begin
   This_Npc.NpcDialog(This_Player,
   '�������������������ѫ�£�\'+
   '������Ʒ����Ҫ����ʱ�䣬�ٷְ������ɹ���\'+
   '<���ϲ�����Ҫ��һ��������������Ų�����!/c=red> \'+
   'ѫ�·�Ϊ����ѫ�£�����ѫ�£�������ѫ�£�\'+   
   '����ѫ��������5�����ſ�������������ѫ�£�\'+
   'ѫ��ӵ��ǿ����������Ҫ200�����������������\'+    
   '|{cmd}<�һ�����ѫ��/@yongzhe>\'+     
   '|{cmd}<�һ�����ѫ��/@yinx>\'+     
   '|{cmd}<�һ�����ѫ��/@wangz>'); 

end.    