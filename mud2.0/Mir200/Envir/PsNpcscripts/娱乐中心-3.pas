
{�������� 
���ߣ����ľͺ�
���ݣ�������ֻ�����֣��Ͻ����ڶĲ���һ�к���Ը����
�˻��Զ�ģʽ
}
PROGRAM Mir2;
var 
str :string;
num,num1 :integer;
i : Integer;
j : Integer;
k : Integer;
Procedure _doexit;
begin
   This_Npc.CloseDialog(This_Player);
end;
procedure domain;
begin
This_Player.SetV(0, 1, (Random(6) + 1));
This_Player.SetV(0, 2, (Random(6) + 1));
This_Player.SetV(0, 3, (Random(6) + 1)); 
i:=This_Player.GetV(0, 1);
j:=This_Player.GetV(0, 2);
k:=This_Player.GetV(0, 3);
num:= i+j+k ;
    str := This_NPC.InputStr;
    This_NPC.NpcDialog(This_Player,
       '���ӭ���١���˹ά��˹���������ġ���\|'
      +'                   '+'<ÿ��Ͷע������Ҫ100Ԫ��/c=red>��|\'
     +' ������ֻ�����֣��Ͻ����ڶĲ���һ�к���Ը����\|'
    +'{cmd}<��Ҫ���/@md> ^<��Ҫ��С/@mx> ^<��Ҫ����/@mbz> \|'
      +'{cmd}<�򶨿���/@DoPlayDice>');
end;

procedure _mx;
begin


 begin
  if This_Player.GetV(74,1)< 1  then 
  begin    
        This_NPC.InputDialog(This_Player,'��������Ҫ�������',0,111) ;
  end else This_NPC.NpcDialog(This_Player,'���Ѿ�Ͷ��ע�ˣ�'+'{cmd}<����/@main>') ;
 end;
end;
procedure p111;
begin
   num1 :=  StrToIntDef(This_NPC.InputStr,-1);//����ǰ��������ֵ��ַ�������-1
   if This_NPC.InputOK  then             
    begin
        if (num1 < 100) or  (num1 > 65534)  then 
       begin 
       This_NPC.NpcDialog(This_Player,'Ͷע����ʹ�ô���100С��65534�İ���������!') ;
       end 
        else if (num1 >= 100) and (num1 < 65535) then
         begin
           if  This_Player.YBNum >= num1 then 
           begin
                This_Player.PsYBConsum(This_NPC,'xin',20001,num1,1);
                This_NPC.NpcDialog(This_Player,'������'+inttostr(num1)+'Ԫ����С��'+'{cmd}<����/@main>') ;
                This_Player.setv(74,1,1);   //�޶���Ͷ���ӵ���ң���ֻ����3��ѡ����ͬһʱ��ѡһ��
                This_Player.setv(73,1,1); // �޶�ѡ�����ע�����ͣ�������Ϊѡ��С
				
           end else
           This_NPC.NpcDialog(This_Player,'��û���㹻��Ԫ����'+inttostr(num1)+'��С!' +'{cmd}<����/@main>') ;
         end;
    end; 
 end;
procedure _md;

 begin
  if This_Player.GetV(74,1)< 1  then 
  begin    
        This_NPC.InputDialog(This_Player,'��������Ҫ�������',0,112) ;
  end else This_NPC.NpcDialog(This_Player,'���Ѿ�Ͷ��ע�ˣ�'+'{cmd}<����/@main>') ;
 end;

procedure p112;
begin 
    num1 :=  StrToIntDef(This_NPC.InputStr,-1);//����ǰ��������ֵ��ַ�������-1
   if This_NPC.InputOK  then 
        if (num1 < 100) or  (num1 > 65534) then 
       begin 
       This_NPC.NpcDialog(This_Player,'Ͷע����ʹ�ô���100С��65534�İ���������!') ;
       end 
        else if (num1 >= 100) and (num1 < 65535) then
         begin
           if  This_Player.YBNum >= num1 then 
           begin
                This_Player.PsYBConsum(This_NPC,'xin',20001,num1,1);
                This_NPC.NpcDialog(This_Player,'������'+inttostr(num1)+'Ԫ���Ĵ�'+'{cmd}<����/@main>') ;
                This_Player.setv(74,1,1);   //�޶���Ͷ���ӵ���ң���ֻ����3��ѡ����ͬһʱ��ѡһ��
                This_Player.setv(73,2,1); // �޶�ѡ�����ע�����ͣ�������Ϊѡ�˴� 
           end else
           This_NPC.NpcDialog(This_Player,'��û���㹻��Ԫ����'+inttostr(num1)+'�Ĵ�!' +'{cmd}<����/@main>') ;
         end;
    end;

procedure _mbz;

 begin
  if This_Player.GetV(74,1)< 1  then 
  begin    
        This_NPC.InputDialog(This_Player,'��������Ҫ�������',0,113) ;
  end else This_NPC.NpcDialog(This_Player,'���Ѿ�Ͷ��ע�ˣ�'+'{cmd}<����/@main>') ;
 end;

procedure p113;
begin 
    num1 :=  StrToIntDef(This_NPC.InputStr,-1);//����ǰ��������ֵ��ַ�������-1
   if This_NPC.InputOK  then  
        if  (num1 < 100) or  (num1 > 65534) then 
       begin 
       This_NPC.NpcDialog(This_Player,'Ͷע����ʹ�ô���100С��65534�İ���������!') ;
       end 
        else if (num1 >= 100) and (num1 < 65535) then
         begin
           if  This_Player.YBNum >= num1 then 
           begin
                This_Player.PsYBConsum(This_NPC,'xin',20001,num1,1);
                This_NPC.NpcDialog(This_Player,'������'+inttostr(num1)+'Ԫ���ı��ӣ�'+'{cmd}<����/@main>') ;
                This_Player.setv(74,1,1);   //�޶���Ͷ���ӵ���ң���ֻ����3��ѡ����ͬһʱ��ѡһ��
                This_Player.setv(73,3,1); // �޶�ѡ�����ע�����ͣ�������Ϊѡ�˱��� 
           end else
           This_NPC.NpcDialog(This_Player,'��û���㹻��Ԫ����'+inttostr(num1)+'�ı���!' +'{cmd}<����/@main>') ;
         end;
    
end;

procedure _AfterPlayDice();//ע��������Ҫ�»���
begin
 
     if (This_Player.getv(73,1)=1) //�޶�ѡ��С����Ҳ���3���ӵ�����3��10��������ִ�����½�������
	 and (num >2) and (num <11)// and ((i <> j) or (i <> k) or (k <> j)) 
   then
      begin
      This_Npc.NpcDialog(This_Player,'���ӵ���������' + IntToStr(i) + IntToStr(j)+IntToStr(k)+'һ��|\'
       +inttostr(num)+'�㣬��ϲ����������С�����һ�����ʣ�') ;
       This_Player.ScriptRequestAddYBNum(num1 *2);
       This_Player.setv(74,1,0);//������������б�����ʼ����������
       This_Player.setv(73,1,0); 
       num1 := 0;
      This_Player.SetV(0, 1, 0);
      This_Player.SetV(0, 2, 0);
      This_Player.SetV(0, 3, 0);
      end
      else 
      if(This_Player.getv(73,2)=1)//�޶�ѡ�˴����Ҳ���3���ӵ�����11��18���Ұ������ӵ������ִ�����½�������
	  and (num >=11) and (num <19)// and ((i <> j) or (i <> k) or (k <> j))
     then
      begin
      
       This_Player.ScriptRequestAddYBNum(num1 *2);
       This_Player.setv(74,1,0);//���ֱ�����ʼ���ǷǱ���ģ�����������б�����ʼ����
       This_Player.setv(73,2,0); 
       str:= '';
      This_Player.SetV(0, 1, 0);
      This_Player.SetV(0, 2, 0);
      This_Player.SetV(0, 3, 0);
      This_Npc.NpcDialog(This_Player,'���ӵ���������' + IntToStr(i) + IntToStr(j)+IntToStr(k)+'һ��|\'
       +inttostr(num)+'�㣬��ϲ���������˴󣬻��һ�����ʣ�'+'{cmd}<����Ͷע/@main>') ;
      end else 
      
      if (This_Player.getv(73,3)=1) //�޶�ѡ�˱��ӵ���Ҳ���3���ӵ����������� ִ�����½�������
	  and ((i = j) and (i = k) and (k = j))  then 
	  
      begin
      
       This_Player.ScriptRequestAddYBNum(num1 *4);
       This_Player.setv(74,1,0);//���ֱ�����ʼ���ǷǱ���ģ�����������б�����ʼ����
       This_Player.setv(73,3,0);
       Str := '';
       This_Player.SetV(0, 1, 0);
      This_Player.SetV(0, 2, 0);
      This_Player.SetV(0, 3, 0);
        This_Npc.NpcDialog(This_Player,'���ӵ���������' + IntToStr(i) + IntToStr(j)+IntToStr(k)+'һ��|\'
       +inttostr(num)+'�㣬��ϲ���������˱��ӣ�����������ʣ�'+'{cmd}<����Ͷע/@main>') ;
      end else  
      begin
      This_Player.setv(74,1,0);//��ʹʧ��Ҳ��Ҫ������ʼ���������ֱ�����ʼ���ǷǱ����
       This_Player.setv(73,3,0);
       This_Player.setv(73,2,0); 
       This_Player.setv(73,1,0);
      Str := '';
      This_Player.SetV(0, 1, 0);
      This_Player.SetV(0, 2, 0);
      This_Player.SetV(0, 3, 0);
      This_Npc.NpcDialog(This_Player,'���ӵ���������' + IntToStr(i) + IntToStr(j)+IntToStr(k)+'һ��|\'
       +inttostr(num)+'�㣬�ܱ�Ǹ��û�����У�'+'{cmd}<����Ͷע/@main>') ;
      end;
end;
procedure DoPlayDice();
begin    
         if  This_Player.getv(73,1)=1  then   //��С 
         begin 
           if num < 11 then
           begin if random(100) < 90  then //ҡ��С����90%�Ļ���������� ��������������������С�����ѭ��90%�Ļ���������Ӵ�С 
		             begin		         
           This_Player.SetV(0, 1, (Random(6) + 1));
           This_Player.SetV(0, 2, (Random(6) + 1));
           This_Player.SetV(0, 3, (Random(6) + 1));
           i:=This_Player.GetV(0, 1);
           j:=This_Player.GetV(0, 2);
           k:=This_Player.GetV(0, 3);
           num:= i+j+k ;
           This_Player.CallOut(This_NPC, 1, 'DoPlayDice'); // 
                 end else This_Npc.PlayDice(This_Player, 3, '@AfterPlayDice');		   
           end else
           begin
           This_Npc.PlayDice(This_Player, 3, '@AfterPlayDice');
           end ;
         end else
         if  This_Player.getv(73,2)=1  then
         begin if random(100) < 90  then
         begin
           if num > 10 then
           begin
           This_Player.SetV(0, 1, (Random(6) + 1));
           This_Player.SetV(0, 2, (Random(6) + 1));
           This_Player.SetV(0, 3, (Random(6) + 1));
           i:=This_Player.GetV(0, 1);
           j:=This_Player.GetV(0, 2);
           k:=This_Player.GetV(0, 3);
           num:= i+j+k ;
           This_Player.CallOut(This_NPC, 1, 'DoPlayDice'); 
            end else This_Npc.PlayDice(This_Player, 3, '@AfterPlayDice');	
           end else
           begin
           This_Npc.PlayDice(This_Player, 3, '@AfterPlayDice');
           end;
         end else 
         if  This_Player.getv(73,3)=1  then
         begin if random(100) < 90  then
         begin
           if (i=j) and (j=k) then
           begin
           This_Player.SetV(0, 1, (Random(6) + 1));
           This_Player.SetV(0, 2, (Random(6) + 1));
           This_Player.SetV(0, 3, (Random(6) + 1));
           i:=This_Player.GetV(0, 1);
           j:=This_Player.GetV(0, 2);
           k:=This_Player.GetV(0, 3);
           num:= i+j+k ;
           This_Player.CallOut(This_NPC, 1, 'DoPlayDice'); //ע��������Ҫ@
            end else This_Npc.PlayDice(This_Player, 3, '@AfterPlayDice');	
           end else 
           begin 
           This_Npc.PlayDice(This_Player, 3, '@AfterPlayDice');
           end;
         end else  This_Player.CallOut(This_NPC, 1, 'DoPlayDice');
end;
procedure _DoPlayDice(); //������//ע��������Ҫ�»���
begin
if This_Player.getv(74,1)=1 then 
    begin    
           This_Player.CallOut(This_NPC, 1, 'DoPlayDice');
           This_NPC.NpcDialog(This_Player,'1��3���ʼͶ���ӣ�') ; 
    end else 
  This_Npc.NpcDialog(This_Player,'��û����ע������Ͷ����!'	) ;
end;
function xin(price, num: Integer):boolean; 
begin
   result := true;  
end;
Begin
  domain;
end.