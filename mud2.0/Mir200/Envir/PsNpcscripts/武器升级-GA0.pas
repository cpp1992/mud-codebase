{********************************************************************
*******************************************************************}

program mir2;

procedure _DoExit;

begin
  This_Npc.CloseDialog(This_Player);
end;

procedure _Exit;
begin
  This_Npc.CloseDialog(This_Player);
end;



var
ck_name : array[1..300] of string;
ck_value : array[1..300] of integer; 
procedure OnInitialize;
begin
ck_name[1] :='����Ȩ��'
ck_name[2] :='���ƽ�';
ck_name[3] :='�þ�֮��';
ck_name[4] :='����';
ck_name[5] :='ŭն';
ck_name[6] :='��ң��';
ck_name[7] :='����֮��';
ck_name[8] :='����';
ck_name[9] :='�Ȼ귨��';
ck_name[10] :='����';
ck_name[11] :='����';
ck_name[12] :='����';
ck_name[13] :='����ʥ��(ս)';
ck_name[14] :='����ʥ��(��)';
ck_name[15] :='����ʥ��(��)';
ck_name[16] :='�Ͻ��Ȼ귨��';
ck_name[17] :='�����ң��';
ck_name[18] :='�ƽ�þ�';
ck_name[19] :='����֮��';
ck_name[20] :='ͨ�Ƶ���';
ck_name[21] :='�����'
ck_name[22] :='����֮��';
ck_name[23] :='����֮��';
ck_name[24] :='����֮��';;


ck_value[1] :=20;
ck_value[2] :=20;
ck_value[3] :=20;
ck_value[4] :=30;
ck_value[5] :=30;
ck_value[6] :=30;
ck_value[7] :=60;
ck_value[8] :=60;
ck_value[9] :=60;
ck_value[10] :=300;
ck_value[11] :=300;
ck_value[12] :=300;
ck_value[13] :=300;
ck_value[14] :=300;
ck_value[15] :=300;
ck_value[16] :=300;
ck_value[17] :=300;
ck_value[18] :=300;
ck_value[19] :=300;
ck_value[20] :=300;
ck_value[21] :=300;
ck_value[22] :=300;
ck_value[23] :=300;
ck_value[24] :=300;
end; 

procedure _Checkup_1;
begin
   This_Player.setv(88,1,1);
   This_Player.setv(88,2,0);
   This_Player.setv(88,3,0);
   This_Player.setv(88,4,0); 
   This_NPC.Click_CommitItem(This_Player,1,'������������'); 
end; 
procedure _Checkup_2;
begin
   This_Player.setv(88,1,0);
   This_Player.setv(88,2,1);
   This_Player.setv(88,3,0);
   This_Player.setv(88,4,0);
   This_NPC.Click_CommitItem(This_Player,1,'������������'); 
end; 
procedure _Checkup_3;
begin
   This_Player.setv(88,1,0);
   This_Player.setv(88,2,0);
   This_Player.setv(88,3,1);
   This_Player.setv(88,4,0);
   This_NPC.Click_CommitItem(This_Player,1,'������������'); 
end; 
procedure _Checkup_4;
begin
   This_Player.setv(88,1,0);
   This_Player.setv(88,2,0);
   This_Player.setv(88,3,0);
   This_Player.setv(88,4,1);
   This_NPC.Click_CommitItem(This_Player,1,'������������'); 
end; 

procedure CommitItem(AType:word);
var
i,ck_num,ck_kind,ck_gold,ck_rand:integer; 
ck_str,ck_red:string;

begin
     ck_gold := 0;  //��ʼ�� 
     ck_str := '';  //��ʼ��
     ck_red := '';  //��ʼ��
  
   if This_Player.getv(88,1)= 1 then 
   begin 
    
    for ck_kind := 1 to 300 do
     
     begin

       if ck_name[ck_kind] = This_Item.ItemName then 
       begin                             
         ck_num := This_Item.AddPa1; 
         ck_gold := ck_value[ck_kind];
         if (ck_num > 0) and (ck_num < 7) then
         begin
           for i:= 1 to ck_num do
           begin
           ck_gold := ck_gold*2;
           end;
         end;  
       end;
     end;
     
     if ck_num > 6 then

     begin
     This_Player.NotifyClientCommitItem(0,'�޷����������'+This_Item.ItemName+'�Ѽ������������ԣ�');  
     end else
     if ck_gold > 0 then
     begin                                                                                             
       if This_Player.YBNum >= ck_gold then
 
       begin
         ck_rand := random(100);
        
         if ck_rand < 19 then
         begin 
         This_Player.NotifyClientCommitItem(0,'����ʧ�ܣ������������δ�����仯');
         This_NPC.NotifyClientUPdBagItem(This_Player,This_Item);
         This_NPC.Click_CommitItem(This_Player,1,'������������'); 
         This_Player.PsYBConsum(This_NPC,'xin',20150,ck_gold,1);
         end else
         if ck_rand < 79 then
         begin 
         This_Item.AddPa1 := This_Item.AddPa1 + 1;   //����+1 
         This_Player.PsYBConsum(This_NPC,'xin',20150,ck_gold,1);
         ck_str :='����+1'; 
         ck_red :='���ֹ���';
         This_NPC.Click_CommitItem(This_Player,1,'������������'); 
     
        
         end;  

         if ck_str <> '' then 
         begin
         This_Player.NotifyClientCommitItem(0,'�����ɹ������'+This_Item.ItemName+'������'+ck_str+'��');
         This_NPC.NpcNotice('��ϲ��'+This_Player.Name+'����������'+This_Item.ItemName+'ʱ������'+ck_str+'��');
         This_NPC.NotifyClientUPdBagItem(This_Player,This_Item);
         This_NPC.Click_CommitItem(This_Player,1,'������������'); 
         end;   
         
         
       end else
       begin
       This_Player.NotifyClientCommitItem(0,'�޷����������Ԫ�����㣬��Ҫ'+inttostr(ck_gold)+'Ԫ����'); 
       end;
     end else 
     begin
        This_Player.NotifyClientCommitItem(0,'����Ʒ������������Ͷ���������װ����');   
     end;
   end else  
   if This_Player.getv(88,2)= 1 then 
   begin 
    
    for ck_kind := 1 to 300 do
     
     begin

       if ck_name[ck_kind] = This_Item.ItemName then 
       begin                             
         ck_num := This_Item.AddPa2; 
         ck_gold := ck_value[ck_kind];
         if (ck_num > 0) and (ck_num < 7) then
         begin
           for i:= 1 to ck_num do
           begin
           ck_gold := ck_gold*2;
           end;
         end;  
       end;
     end;
     
     if ck_num > 6 then

     begin
     This_Player.NotifyClientCommitItem(0,'�޷����������'+This_Item.ItemName+'�Ѽ������������ԣ�');  
     end else
     if ck_gold > 0 then
     begin                                                                                             
       if This_Player.YBNum >= ck_gold then
 
       begin
         ck_rand := random(100);
        
         if ck_rand < 19 then
         begin 
         This_Player.NotifyClientCommitItem(0,'����ʧ�ܣ������������δ�����仯');
         This_NPC.NotifyClientUPdBagItem(This_Player,This_Item);
         This_NPC.Click_CommitItem(This_Player,1,'������������'); 
         This_Player.PsYBConsum(This_NPC,'xin',20150,ck_gold,1);
         end else
         if ck_rand < 79 then
         begin 
         This_Item.AddPa2 := This_Item.AddPa2 + 1;   //ħ��+1 
         This_Player.PsYBConsum(This_NPC,'xin',20150,ck_gold,1);
         ck_str :='ħ��+1'; 
         ck_red :='���ֹ���';
         This_NPC.Click_CommitItem(This_Player,1,'������������'); 
     
        
         end;  

         if ck_str <> '' then 
         begin
         This_Player.NotifyClientCommitItem(0,'�����ɹ������'+This_Item.ItemName+'������'+ck_str+'��');
         This_NPC.NpcNotice('��ϲ��'+This_Player.Name+'����������'+This_Item.ItemName+'ʱ������'+ck_str+'��');
         This_NPC.NotifyClientUPdBagItem(This_Player,This_Item);
         This_NPC.Click_CommitItem(This_Player,1,'������������'); 
         end;   
         
         
       end else
       begin
       This_Player.NotifyClientCommitItem(0,'�޷����������Ԫ�����㣬��Ҫ'+inttostr(ck_gold)+'Ԫ����'); 
       end;
     end else 
     begin
        This_Player.NotifyClientCommitItem(0,'����Ʒ������������Ͷ���������װ����');   
     end; 
   end else  
   if This_Player.getv(88,3)= 1 then 
   begin 
    
    for ck_kind := 1 to 300 do
     
     begin

       if ck_name[ck_kind] = This_Item.ItemName then 
       begin                             
         ck_num := This_Item.AddPa3; //����+1 
         ck_gold := ck_value[ck_kind];
         if (ck_num > 0) and (ck_num < 7) then
         begin
           for i:= 1 to ck_num do
           begin
           ck_gold := ck_gold*2;
           end;
         end;  
       end;
     end;
     
     if ck_num > 6 then

     begin
     This_Player.NotifyClientCommitItem(0,'�޷����������'+This_Item.ItemName+'�Ѽ������������ԣ�');  
     end else
     if ck_gold > 0 then
     begin                                                                                             
       if This_Player.YBNum >= ck_gold then
 
       begin
         ck_rand := random(100);
        
         if ck_rand < 19 then
         begin 
         This_Player.NotifyClientCommitItem(0,'����ʧ�ܣ������������δ�����仯');
         This_NPC.NotifyClientUPdBagItem(This_Player,This_Item);
         This_NPC.Click_CommitItem(This_Player,1,'������������'); 
         This_Player.PsYBConsum(This_NPC,'xin',20150,ck_gold,1);
         end else
         if ck_rand < 79 then
         begin 
         This_Item.AddPa3 := This_Item.AddPa3 + 1;   //����+1 
         This_Player.PsYBConsum(This_NPC,'xin',20150,ck_gold,1);
         ck_str :='����+1'; 
         ck_red :='���ֹ���';
         This_NPC.Click_CommitItem(This_Player,1,'������������'); 
     
        
         end;  

         if ck_str <> '' then 
         begin
         This_Player.NotifyClientCommitItem(0,'�����ɹ������'+This_Item.ItemName+'������'+ck_str+'��');
         This_NPC.NpcNotice('��ϲ��'+This_Player.Name+'����������'+This_Item.ItemName+'ʱ������'+ck_str+'��');
         This_NPC.NotifyClientUPdBagItem(This_Player,This_Item);
         This_NPC.Click_CommitItem(This_Player,1,'������������'); 
         end;   
         
         
       end else
       begin
       This_Player.NotifyClientCommitItem(0,'�޷����������Ԫ�����㣬��Ҫ'+inttostr(ck_gold)+'Ԫ����'); 
       end;
     end else 
     begin
        This_Player.NotifyClientCommitItem(0,'����Ʒ������������Ͷ���������װ����');   
     end; 
   end else  
   if This_Player.getv(88,4)= 1 then 
   begin 
    
    for ck_kind := 1 to 300 do
     
     begin

       if ck_name[ck_kind] = This_Item.ItemName then 
       begin                             
         ck_num := This_Item.AddPa4; 
         ck_gold := ck_value[ck_kind];
         if (ck_num > 0) and (ck_num < 7) then
         begin
           for i:= 1 to ck_num do
           begin
           ck_gold := ck_gold*2;
           end;
         end;  
       end;
     end;
     
     if ck_num > 6 then

     begin
     This_Player.NotifyClientCommitItem(0,'�޷����������'+This_Item.ItemName+'�Ѽ������������ԣ�');  
     end else
     if ck_gold > 0 then
     begin                                                                                             
       if This_Player.YBNum >= ck_gold then
 
       begin
         ck_rand := random(100);
        
         if ck_rand < 19 then
         begin 
         This_Player.NotifyClientCommitItem(0,'����ʧ�ܣ������������δ�����仯');
         This_NPC.NotifyClientUPdBagItem(This_Player,This_Item);
         This_NPC.Click_CommitItem(This_Player,1,'������������'); 
         This_Player.PsYBConsum(This_NPC,'xin',20150,ck_gold,1);
         end else
         if ck_rand < 79 then
         begin 
         This_Item.AddPa4 := This_Item.AddPa4 + 1;   //����+1 
         This_Player.PsYBConsum(This_NPC,'xin',20150,ck_gold,1);
         ck_str :='����+1'; 
         ck_red :='���ֹ���';
         This_NPC.Click_CommitItem(This_Player,1,'������������'); 
     
        
         end;  

         if ck_str <> '' then 
         begin
         This_Player.NotifyClientCommitItem(0,'�����ɹ������'+This_Item.ItemName+'������'+ck_str+'��');
         This_NPC.NpcNotice('��ϲ��'+This_Player.Name+'����������'+This_Item.ItemName+'ʱ������'+ck_str+'��');
         This_NPC.NotifyClientUPdBagItem(This_Player,This_Item);
         This_NPC.Click_CommitItem(This_Player,1,'������������'); 
         end;   
         
         
       end else
       begin
       This_Player.NotifyClientCommitItem(0,'�޷����������Ԫ�����㣬��Ҫ'+inttostr(ck_gold)+'Ԫ����'); 
       end;
     end else 
     begin
        This_Player.NotifyClientCommitItem(0,'����Ʒ������������Ͷ���������װ����');   
     end;
   end;
end;

function xin(price, num: Integer):boolean; 
begin
   result := true; 
 
end;

begin
  This_Npc.NpcDialog(This_Player,
   '|����������װ����<������������/c=red>\'
  +'|������һ����Ҫ<20Ԫ��/c=red>,װ��Խ�߼�����Խ��\'
  +'|������������,������һ�ζ���Ҫ<300Ԫ��/c=red>,\'
  +'|ÿ����һ��Ԫ��������2�����ɹ���80%ʧ��Ԫ���۳���\'
  +'|<����������������ֵ������ħ���������+7/c=red>\'
  +'|<ע�⣺ÿ���������ʱ�������5�룬�������ֵ�����û��ӳ����/c=red>\'
  +'|{cmd}<��������/@Checkup_1>    ^<����ħ��/@Checkup_2>\'
  +'|{cmd}<��������/@Checkup_3>    ^<��������/@Checkup_4>\'  
  );
end.
   