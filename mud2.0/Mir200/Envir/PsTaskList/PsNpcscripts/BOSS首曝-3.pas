{****************************************
boss����
���ߣ����ľͺ�
���ݣ�ȫ���״�ɱ���ض���ͼboss�����Զ����һ��Ԫ���Ľ��������������ǰ�����ʾ��ֻҪ����ҵ���ͻ���ʾ�ѻ�ɱ��
����������Ҫ��ɱ�߱��˵��npc���¡�
���� G��71��,1-18��  V(72,11-18)
**********************************************}
PROGRAM Mir2;
var 
sum,sum1:Integer;  

str1,str2,str3,str4,str5,str6,str7,str8,str9 :String;
name1,name2,name3,name4,name5,name6,name7,name8,name9 :String; 
 
Procedure _doexit;
begin
   This_Npc.CloseDialog(This_Player);
end;

procedure domain; 

begin

	 This_NPC.NpcDialog(This_Player,
'�ض���ͼȫ���״λ�ɱBOSS��õ�һ��Ԫ���Ľ���\|' 
 +'{cmd}<�鿴��/@sxbd>\');  
 end;
 Procedure _sxbd;
 begin                                  
 if GetG(71,11)= 1 then 
  begin 
  str1 := '�ѱ���ɱ';
  end
  else   str1 := 'δ����ɱ';
 if GetG(71,12)= 1 then 
   begin
   str2 := '�ѱ���ɱ';
   end
   else str2 := 'δ����ɱ';      
 if GetG(71,13)= 1 then 
  begin 
  str3 := '�ѱ���ɱ';
    end
    else  str3 := 'δ����ɱ';  
if GetG(71,14)= 1 then 
  begin  
  str4 := '�ѱ���ɱ';
  end
  else   str4 := 'δ����ɱ';
if GetG(71,15)= 1 then 
  begin 
  str5 := '�ѱ���ɱ';
  end
  else   str5 := 'δ����ɱ';    
if GetG(71,16)= 1 then 
  begin 
  str5 := '�ѱ���ɱ';
  end
  else   str6 := 'δ����ɱ';  
  if GetG(71,17)= 1 then 
  begin 
  str7 := '�ѱ���ɱ';
  end
 else  str7 := 'δ����ɱ'; 
 if GetG(71,18)= 1 then 
  begin 
  str8 := '�ѱ���ɱ';
  end
  else   str8 := 'δ����ɱ';
  if This_Player.GetV(72,11)= 10 then
     begin
     name1 := This_Player.name;
     end
     else name1 := '';
   if This_Player.GetV(72,12)= 10 then
     begin
     name2 := This_Player.name;
     end
     else name2 := '';
     if This_Player.GetV(72,13)= 10 then
     begin
     name3 := This_Player.name;
     end
     else name3 := '';
     if This_Player.GetV(72,14)= 10 then
     begin
     name4 := This_Player.name;
     end
     else name4 := '';
  if This_Player.GetV(72,15)= 10 then
     begin
     name5 := This_Player.name;
     end
     else name5 := '';   
  if This_Player.GetV(72,16)= 10 then
     begin
     name6 := This_Player.name;
     end
     else name6 := ''; 
     if This_Player.GetV(72,17)= 10 then
     begin
     name7 := This_Player.name;
     end
     else name7 := '';    
       if This_Player.GetV(72,18)= 10 then
     begin
     name8 := This_Player.name;
     end
     else name8 := '';    
      if This_Player.GetV(72,19)= 10 then
     begin
     name9 := This_Player.name;
     end
     else name9 := ''; 
      This_NPC.NpcDialog(This_Player,
  '<�������/c=red>'+ str1 +'<�����ɱ�������/c=red>'+name1+' \|'  
 +'<�������/c=red>'+ str2 +'<�����ɱ�������/c=red>'+name2+' \|'
 +'<ţħ��/c=red>'+ str3 +'<�����ɱ�������/c=red>'+name3+' \|'
 +'<��֮ţħ��/c=red>'+str4 +'<�����ɱ�������/c=red>'+name4+' \|'
 +'<˫ͷѪħ/c=red>'+ str5 +'<�����ɱ�������/c=red>'+name5 +' \|'
 +'<˫ͷ���/c=red>'+ str6 +'<�����ɱ�������/c=red>'+name6+' \|'
 +'<ħ������/c=red>'+ str7 +'<�����ɱ�������/c=red>'+name7+' \|'
 +'<��Ȫ����/c=red>'+ str8 +'<�����ɱ�������/c=red>'+name8 +' \|'
 +'{cmd}<ˢ�°�/@sxbd>\');                          
end;     
     
     
     
     
Begin
  domain;
  
end.  
   
   
   
   
   
   
   
   
   