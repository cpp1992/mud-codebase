program mir2;
var
s1,s2,s3,s4,s5 : integer;
n1,n2,n3,n4,n5 : string;
str :string;
num,num1,num2 :integer;
procedure _DoExit;

begin
  This_Npc.CloseDialog(This_Player);
end;

procedure _Exit;
begin
  This_Npc.CloseDialog(This_Player);
end;
procedure domain;
begin
str := This_NPC.InputStr; 
num1 :=  StrToIntDef(This_NPC.InputStr,-1); 
if getg(78,1) < 0 then
    SetG(78,1,0);
if getg(78,2) < 0 then
    SetG(78,2,0);
if getg(78,3) < 0 then
    SetG(78,3,0);
if getg(78,4) < 0 then
    SetG(78,4,0);
if getg(78,5) < 0 then
    SetG(78,5,0);
s1 := getg(78,1);
s2 := getg(78,2);
s3 := getg(78,3);
s4 := getg(78,4);
s5 := getg(78,5);
This_NPC.NpcDialog(This_Player,
 '��Ŀǰ��Ԫ��������Ϊ'+inttostr(This_Player.GetV(78,1))+' \|'
 
   +'<1.�귨��½����˥���ÿ���λ��ʿ�Ŀ�������!/c=red>\|'
   +'<2.�����������Ԫ�������Ի��һ�������Լӳ�/c=red>\|'
   +'|��һ�������ȫ����30-30�� �����<'+n1+'����Ԫ����'+inttostr(s1)+' /c=red>\'
   +'|�ڶ��������ȫ����25-25�� �����<'+n2+'����Ԫ����'+inttostr(s2)+' /c=red>\'
   +'|�����������ȫ����20-20�� �����<'+n3+'����Ԫ����'+inttostr(s3)+' /c=red>\'
   +'|�����������ȫ����15-15�� �����<'+n4+'����Ԫ����'+inttostr(s4)+' /c=red>\'
   +'|�����������ȫ����10-10�� �����<'+n5+'����Ԫ����'+inttostr(s5)+' /c=red>\'
   +'|�������󣺻��ȫ����5-5�� \' 
   +'|{cmd}<����/@jxyb>   ^<��ȡ����/@lqsx>      ^<ˢ��/@main>');
end;
procedure _lqsx;
begin
   if This_Player.GetV(78,1) = s1 then 
   begin 
   This_Player.AddPlayerAbil(0,10,3600);
   This_Player.AddPlayerAbil(1,10,3600);
   This_Player.AddPlayerAbil(2,10,3600);
   This_Player.AddPlayerAbil(4,50,3600);
   end else
   if This_Player.GetV(78,1) = s2 then 
   begin 
   This_Player.AddPlayerAbil(0,10,3600);
   This_Player.AddPlayerAbil(1,10,3600);
   This_Player.AddPlayerAbil(2,10,3600);
   This_Player.AddPlayerAbil(4,50,3600);
   end else
   if This_Player.GetV(78,1) = s3 then 
   begin 
   This_Player.AddPlayerAbil(0,10,3600);
   This_Player.AddPlayerAbil(1,10,3600);
   This_Player.AddPlayerAbil(2,10,3600);
   This_Player.AddPlayerAbil(4,50,3600);
   end else
    if This_Player.GetV(78,1) = s4 then 
   begin 
   This_Player.AddPlayerAbil(0,5,3600);
   This_Player.AddPlayerAbil(1,5,3600);
   This_Player.AddPlayerAbil(2,5,3600);
   This_Player.AddPlayerAbil(4,20,3600);
   end else
   if This_Player.GetV(78,1) = s5 then 
   begin 
   This_Player.AddPlayerAbil(0,5,3600);
   This_Player.AddPlayerAbil(1,5,3600);
   This_Player.AddPlayerAbil(2,5,3600);
   This_Player.AddPlayerAbil(4,20,3600);
   end else
   if (This_Player.GetV(78,1) < s5) and (This_Player.GetV(78,1) > 0) then 
   begin 
   This_Player.AddPlayerAbil(0,5,3600);
   This_Player.AddPlayerAbil(1,5,3600);
   This_Player.AddPlayerAbil(2,5,3600);
   This_Player.AddPlayerAbil(4,10,3600);
   end;
end;
procedure _jxyb; 
begin    
        This_NPC.InputDialog(This_Player,'��������Ҫ�������',0,111) ;
end;
 
procedure p111;
begin
   num :=  StrToIntDef(This_NPC.InputStr,-1);//����ǰ��������ֵ��ַ�������-1
   if This_NPC.InputOK  then             
    begin
        if (num < 50) or  (num > 65534)  then 
       begin 
       This_NPC.NpcDialog(This_Player,'����һ������50Ԫ�����ܶ�ܴ���65534��ֻ��ʹ�ð���������!') ;
       end 
        else if (num >= 50) and (num1 < 65535) then
         begin
           if  This_Player.YBNum >= num then 
           begin
                This_Player.PsYBConsum(This_NPC,'xin',20001,num,1);
               This_Player.CallOut(This_NPC,1,'jxyb'); 
			   ServerSay('�������<' + This_Player.Name + '>������Ԫ������������ȡ���Լӳɣ�', 2);
				
           end else
           This_NPC.NpcDialog(This_Player,'��û���㹻��Ԫ������!' +'{cmd}<����/@main>') ;
         end;
    end; 
 end;
 
 
 
procedure jxyb;
begin
num :=  StrToIntDef(This_NPC.InputStr,-1);//����ǰ��������ֵ��ַ�������-1
if This_Player.getV(78,1) < 0 then  This_Player.SetV(78,1,0);
num1 := This_Player.getV(78,1);
num2 :=num + num1;
s1 := getg(78,1);
s2:= getg(78,2);       
s3 := getg(78,3);    
s4 := getg(78,4);
s5 := getg(78,5);
if num2 > s1 then 
 begin
    if (num1 < s5) or (num1 = s5) then
    begin 
    SetG(78,5,s4);
    SetG(78,4,s3);
    SetG(78,3,s2);
    SetG(78,2,s1);
    SetG(78,1,num2);   
    This_Player.SetV(78,1,num1+num); 
    n1 := This_Player.Name;
     end else 
     if num1 = s4 then 
      begin 
    SetG(78,4,s3);
    SetG(78,3,s2);
    SetG(78,2,s1);
    SetG(78,1,num2);   
    This_Player.SetV(78,1,num1+num); 
    n1 := This_Player.Name;
     end else
     if num1 = s3 then 
      begin 
    SetG(78,3,s2);
    SetG(78,2,s1);
    SetG(78,1,num2);   
    This_Player.SetV(78,1,num1+num); 
    n1 := This_Player.Name;
     end else
      if num1 = s2 then 
      begin 
    SetG(78,2,s1);
    SetG(78,1,num2);   
    This_Player.SetV(78,1,num1+num); 
    n1 := This_Player.Name;
     end else
      if num1 = s1 then 
      begin 
    SetG(78,1,num2);   
    This_Player.SetV(78,1,num1+num); 
    n1 := This_Player.Name;
     end;
     
         
 end else 
 if (s2 < num2) and ((num2< s1) or (num2 = s1)) then
 begin
    if (num1 < s5) or (num1 = s5) then
    begin 
    SetG(78,5,s4);
    SetG(78,4,s3);
    SetG(78,3,s2);
    SetG(78,2,num2);   
    This_Player.SetV(78,1,num1+num); 
    n2 := This_Player.Name;
     end else 
     if num1 = s4 then 
      begin 
    SetG(78,4,s3);
    SetG(78,3,s2);
    SetG(78,2,num2);   
    This_Player.SetV(78,1,num1+num); 
    n2 := This_Player.Name;
     end else
     if num1 = s3 then 
      begin 
    SetG(78,3,s2);
    SetG(78,2,num2);   
    This_Player.SetV(78,1,num1+num); 
    n2 := This_Player.Name;
     end else
      if num1 = s2 then 
      begin 
    SetG(78,2,num2);   
    This_Player.SetV(78,1,num1+num); 
    n2 := This_Player.Name;
     end;               

end else 
if (s3 < num2) and ((num2< s2) or (num2 = s2)) then
 begin
    if (num1 < s5) or (num1 = s5) then
    begin 
    SetG(78,5,s4);
    SetG(78,4,s3); 
    SetG(78,3,num2);   
    This_Player.SetV(78,1,num1+num); 
    n3 := This_Player.Name;
     end else 
     if num1 = s4 then 
      begin 
    SetG(78,4,s3);
    SetG(78,3,num2);   
    This_Player.SetV(78,1,num1+num); 
    n3 := This_Player.Name;
     end else
     if num1 = s3 then 
      begin 
    SetG(78,3,num2);   
    This_Player.SetV(78,1,num1+num); 
    n3 := This_Player.Name;
     end;                           
end else 
if (s4 < num2) and ((num2< s3) or (num2 = s3)) then
 begin
    if (num1 < s5) or (num1 = s5) then
    begin 
    SetG(78,5,s4); 
    SetG(78,4,num2);   
    This_Player.SetV(78,1,num1+num); 
    n4 := This_Player.Name;
     end else 
     if num1 = s4 then 
      begin 
    SetG(78,4,num2);   
    This_Player.SetV(78,1,num1+num); 
    n4 := This_Player.Name;
     end;                   
end else 
if (s5 < num2) and ((num2< s4) or (num2 = s5)) then
                                              begin
                                           SetG(78,5,num2);
                                          This_Player.SetV(78,1,num1+num);
                                           n5:=This_Player.Name;

end else 
if num2 < s5 then  
begin
This_Player.SetV(78,1,num1+num);
end;
end;
begin
domain;
end. 