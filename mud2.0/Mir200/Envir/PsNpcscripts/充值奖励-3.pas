{********************************************************************

*******************************************************************}

program Mir2;

var
sum:Integer;
mei:Integer;  
sum1:Integer;  
sum2:Integer;
sum3:Integer;
sum4:Integer; 
sum6:Integer;
sum7:Integer;   
Procedure _doexit;
begin
   This_Npc.CloseDialog(This_Player);
end;

procedure _jiangli1;    //������ȡÿ�ճ�ֵ������ �ط� 
var today , mei: integer; 
begin
   begin
      today := GetDateNum(GetNow);// ��ȡ��ǰ����        //

   if This_Player.GetV(99,98) <> today then     // ��ʼ�� 
   begin
   This_Player.SetV(99,98,today);      // 
   This_Player.SetV(99,99,0);          // ÿ�� ��ʼ�� ��  ��ֵ�� ����Ϊ 0 �γ�ʼ��  ���� ��ʼ�� ��ֵ�� 
   mei := This_Player.getV(99,99);
   end else
   mei := This_Player.getV(99,99);   //��ֵ mei=  This_Player.getV(99,99);  ��ֵ���� 
   
	 This_NPC.NpcDialog(This_Player,
	  '| ����������ճ�ֵ���<'+inttostr(mei)+'/c=red>Ԫ�����\|'  //��ȡ ÿ�� ��ֵ ����  ��ʾ    inttostr(mei)
    +'��ֵ������Ԫ��1:10\|'          //�����ʯ1:1�����1:1��
    +'<ÿ�ճ�ֵ/c=red>'+'  '+'�ۻ���ֵ50Ԫ������ȡ'+'  '+'<��ȡ/@lq20>\|'
	 
      );                
   end;
end;

procedure _lq20;          //��ȡ   
var today , mei: integer;
begin 
      mei := This_Player.getV(99,99);  //ֱ��  mei := This_Player.getV(99,99); ȡֵ 
      today := GetDateNum(GetNow);// ��ȡ��ǰ����

    if This_Player.GetV(99,1) <> today then     

        begin  
           This_Player.setV(99,1,today);
           This_Player.SetV(99,2,0);  //��ȡ ����  ÿ�� �����Լ�����ȡ ���� ����ֵ �޷���ȡ 

        end else  
        sum7:= This_Player.getV(99,2);
             
      if  mei >= 50 then  
      begin   
        if   sum7 < 1 then
         begin 
          if  This_Player.FreeBagNum >= 6 then  
            begin 
              
               
                   This_Player.Give('50Ԫ��',1);
                   This_Player.Give('50������',1);
                   This_Player.Give('100������',1);
                   This_Player.Give('���ʯ',100);
                   This_Player.setV(99,2,sum7 + 1) ; 
                   ServerSay('���<' + This_Player.Name + '>��ȡ���׳������', 2);				   
               
               
             
             end else
              This_NPC.NpcDialog(This_Player,
              'û���㹻�İ����ռ�!\'); 
              end else
                This_NPC.NpcDialog(This_Player,
               '���Ѿ���ȡ��ÿ�ճ�ֵ����!');
              end else 
                This_NPC.NpcDialog(This_Player,
               '����ճ�ֵ����50Ԫ!');
         
end; 


          //������ �ܳ�ֵ ���� 

procedure _jiangli; 
begin
   begin 
   if  This_Player.GetV(88,88)< 1
    then  
   begin 
   This_Player.setV(88,88,0)
   sum := This_Player.getV(88,88);
   end else
   sum := This_Player.getV(88,88);
   end; 
	 This_NPC.NpcDialog(This_Player,
	  '| ���������ǰ�ۻ��ܳ�ֵ<'+inttostr(sum)+'/c=red>Ԫ�����\|'   
    +'��ֵ������Ԫ��1:10         ���͵ȶ��ֵ����:���ʯ+�����\|' 
    +'<�׳����/c=red>'+'  '+'�ۻ���ֵ50Ԫ������ȡ'+'  '+'<��ȡ/@lq5>\|'
	  +'<��������/c=red>'+'  '+'�ۻ���ֵ200Ԫ������ȡ'+'  '+'<��ȡ/@lq1>\|'
    +'<�м�����/c=red>'+'  '+'�ۻ���ֵ500Ԫ������ȡ'+'  '+'<��ȡ/@lq2>\|'
	  +'<�߼�����/c=red>'+'  '+'�ۻ���ֵ1000Ԫ������ȡ'+'  '+'<��ȡ/@lq3>\|'
	  +'<��������/c=red>'+'  '+'�ۻ���ֵ2000Ԫ������ȡ'+'  '+'<��ȡ/@lq4>\|'
      );                
end;

procedure _lq5;
begin 
    begin 
      if This_Player.getV(88,6) < 0  then 
        begin  
           This_Player.setV(88,6,0)
           sum1:= This_Player.getV(88,6);
        end else  
        sum6:= This_Player.getV(88,6);
    end;         
      if  sum >= 50 then  begin   
        if   sum6 < 1 then
         begin 
       if  This_Player.FreeBagNum >= 10 then  
            begin 
              case This_Player.Job of
               0 : 
               begin
                   This_Player.Give('�þ�֮��',1);
                   This_Player.Give('ʥս����',1);
                   This_Player.Give('ʥս����',2);
                   This_Player.Give('ʥս��ָ',2);
                   if This_Player.Gender = 0 then
                   This_Player.Give('��ħ���',1)
                   else
                   This_Player.Give('ʥս����',1);
                   This_Player.setV(88,6,sum6 + 1) ;  
               end;
               1 : 
               begin
                   This_Player.Give('����Ȩ��',1);
                   This_Player.Give('��������',1);
                   This_Player.Give('��������',2);
                   This_Player.Give('�����ָ',2);
                   if This_Player.Gender = 0 then
                   This_Player.Give('��������',1)
                   else
                   This_Player.Give('��������',1);
                   This_Player.setV(88,6,sum6 + 1) ;  
               end;
               2 : 
               begin
                   This_Player.Give('���ƽ�',1);
                   This_Player.Give('��������',1);
                   This_Player.Give('��������',2);
                   This_Player.Give('�����ָ',2);

                   This_Player.GiveBindItem('���������',2);
                  
                   if This_Player.Gender = 0 then//�����Ů
                   This_Player.Give('�������',1)
                   else
                   This_Player.Give('��ʦ����',1);
                   This_Player.setV(88,6,sum6 + 1) ;  
               end;
              end;
             
             end else
              This_NPC.NpcDialog(This_Player,
              'û���㹻�İ����ռ�!\'); 
              end else
                This_NPC.NpcDialog(This_Player,
               '���Ѿ����һ����!');
              end else 
                This_NPC.NpcDialog(This_Player,
               '���ֵ����50Ԫ!');
         
end; 





 
procedure _lq1;
begin 
    begin 
      if This_Player.getV(88,1) < 0  then 
        begin  
           This_Player.setV(88,1,0)
           sum1:= This_Player.getV(88,1);
        end else  
        sum1:= This_Player.getV(88,1);
    end;         
      if  sum >= 200 then  begin   
        if   sum1 < 1 then
         begin 
       if  This_Player.FreeBagNum >= 5 then  
            begin 
             case This_Player.Job of
               0 : 
               begin
                   This_Player.Give('����',1);
                   This_Player.Give('200������', 1);
                   This_Player.Give('100Ԫ��' , 3);
                   This_Player.Give('�ͼ���������' , 1);
                   This_Player.setV(88,1,sum1 + 1) ;  
                   ServerSay('���<' + This_Player.Name + '>��ȡ��200Ԫ�������', 2);					   
               end;
               1 : 
               begin
                   This_Player.Give('�Ȼ귨��',1);
                    This_Player.Give('200������', 1);
                     This_Player.Give('100Ԫ��' , 3);
                     This_Player.Give('�ͼ���������' , 1);
                   This_Player.setV(88,1,sum1 + 1) ;
				   ServerSay('���<' + This_Player.Name + '>��ȡ��200Ԫ�������', 2);
               end;
               2 : 
               begin
                   This_Player.Give('��ң��',1);
                   This_Player.Give('200������' , 1);
                    This_Player.Give('100Ԫ��' , 3);
                    This_Player.Give('�ͼ���������' , 1);
                   This_Player.setV(88,1,sum1 + 1) ;
                   ServerSay('���<' + This_Player.Name + '>��ȡ��200Ԫ�������', 2);				   
               end;
              end;
             
             This_Player.setV(88,1,sum1 + 1) ;  
             end else
              This_NPC.NpcDialog(This_Player,
              'û���㹻�İ����ռ�!\'); 
              end else
                This_NPC.NpcDialog(This_Player,
               '���Ѿ����һ����!');
              end else 
                This_NPC.NpcDialog(This_Player,
               '���ֵ����200Ԫ!');
         
end; 
procedure _lq2;
begin
    begin 
      if This_Player.getV(88,2) < 0  then 
        begin  
           This_Player.setV(88,2,0)
           sum2:= This_Player.getV(88,2);
        end else  
        sum2:= This_Player.getV(88,2);
    end;
   
    if  sum >= 500 then 
    begin 
    if   sum2 < 1 then
         begin 
       if  This_Player.FreeBagNum >= 2 then  
            begin 
             case This_Player.Job of
               0 : 
               begin
                   This_Player.Give('����',1);
                   This_Player.Give('500������' , 1);
                   This_Player.Give('�м���������' , 1);
                    This_Player.setV(88,2,sum2 + 1) ; 
                    ServerSay('���<' + This_Player.Name + '>��ȡ��500Ԫ�������', 2);					
               end;
               1 : 
               begin
                   This_Player.Give('����',1);
                    This_Player.Give('500������' , 1);
                    This_Player.Give('�м���������' , 1);
                   This_Player.setV(88,2,sum2 + 1) ; 
                   ServerSay('���<' + This_Player.Name + '>��ȡ��500Ԫ�������', 2);				   
               end;
               2 : 
               begin
                   This_Player.Give('����',1);
                   This_Player.Give('500������' , 1);
                   This_Player.Give('�м���������' , 1);
                    This_Player.setV(88,2,sum2 + 1) ;  
					ServerSay('���<' + This_Player.Name + '>��ȡ��500Ԫ�������', 2);
               end;
              end;
              
             end else
              This_NPC.NpcDialog(This_Player,
              'û���㹻�İ����ռ�!\'); 
              end else
                This_NPC.NpcDialog(This_Player,
               '���Ѿ����һ����!');
              end else 
                This_NPC.NpcDialog(This_Player,
               '���ֵ����500Ԫ!');
end;
procedure _lq3;
begin
   begin 
      if This_Player.getV(88,3) < 0  then 
        begin  
           This_Player.setV(88,3,0)
           sum3:= This_Player.getV(88,3);
        end else  
        sum3:= This_Player.getV(88,3);
    end;

    if  sum >= 1000 then 
    begin 
    if   sum3 < 1 then
         begin 
       if  This_Player.FreeBagNum >= 2 then  
            begin 
             case This_Player.Job of
               0 : 
               begin
                   This_Player.Give('����ʥ��(ս)',1);
                   This_Player.Give('1000������' , 2);
                   This_Player.Give('�߼���������', 1);
                   This_Player.setV(88,3,sum3 + 1) ; 
                  ServerSay('���<' + This_Player.Name + '>��ȡ��1000Ԫ�������', 2);				   
               end;
               1 : 
               begin
                  This_Player.Give('����ʥ��(��)',1);
                   This_Player.Give('1000������' , 2);
                    This_Player.Give('�߼���������', 1);
                  This_Player.setV(88,3,sum3 + 1) ; 
				  ServerSay('���<' + This_Player.Name + '>��ȡ��1000Ԫ�������', 2);
               end;
               2 : 
               begin
                   This_Player.Give('����ʥ��(��)',1);
                   This_Player.Give('1000������' , 2);
                    This_Player.Give('�߼���������', 1);
                   This_Player.setV(88,3,sum3 + 1) ;
                ServerSay('���<' + This_Player.Name + '>��ȡ��1000Ԫ�������', 2);				   
               end;
              end;
              
             end else
              This_NPC.NpcDialog(This_Player,
              'û���㹻�İ����ռ�!\'); 
              end else
                This_NPC.NpcDialog(This_Player,
               '���Ѿ����һ����!');
              end else 
                This_NPC.NpcDialog(This_Player,
               '���ֵ����1000Ԫ!');
end;

procedure _lq4;
begin
    begin 
      if This_Player.getV(88,4) < 0  then 
        begin  
           This_Player.setV(88,4,0)
           sum4:= This_Player.getV(88,4);
        end else  
        sum4:= This_Player.getV(88,4);
    end;
    if  sum >= 2000 then 
    begin 
    if   sum4 < 1 then
         begin 
       if  This_Player.FreeBagNum >= 7 then  
            begin 
             This_Player.SysGiveGift('�ռ���������',1,true);
              This_Player.Give('��ҳ', 1000);
             This_Player.Give('1000Ԫ��' , 3);
             This_Player.setV(88,4,sum4 + 1) ;  
			 ServerSay('���<' + This_Player.Name + '>��ȡ��2000Ԫ�������', 2);
             end else
              This_NPC.NpcDialog(This_Player,
              'û���㹻�İ����ռ�!\'); 
              end else
                This_NPC.NpcDialog(This_Player,
               '���Ѿ����һ����!');
              end else 
                This_NPC.NpcDialog(This_Player,
               '���ֵ����2000Ԫ!');
end;


procedure _newYB(); 
begin
    if This_Player.GetV(11,10) <> 888 then
	begin
		This_Player.SetV(11,10,888);
		This_NPC.YBDealDialogShowMode(This_Player,true);
	end else
	begin
		This_NPC.YBDealDialogShowMode(This_Player,false);
	end;
end;

Procedure _GetYB;
var 
d2,d3 : integer;
s1 , td : double;
begin
	s1 := GetNow;
	d2 := This_Player.GetS(23,1);
    td := ConvertDBToDateTime(d2);
	d3 := minusDataTime(s1,td);
	if (d3 >= 300) or (This_Player.GetS(23,2) < 3) then
	begin
		This_Player.QueryAwardCode(This_Player.Name);
		This_Npc.CloseDialog(This_Player);
	end else
	   This_Npc.NpcDialog(This_Player,
	   '�����̫�죬������ȡ3��û�гɹ���������5���ӣ���' + inttostr(300 - d3) + '����ٴγ��ԣ�'
	   );
end;

Procedure _YB;
var
num: integer;
begin
num := This_Player.GetS(23,2);
   This_Npc.NpcDialog(This_Player,
	   '��ǰ��ֵ' + inttostr(num) + 'Ԫ����'
	   );
end;


Begin     
    This_Npc.NpcDialog(This_Player,
    '|���ã���ֵ�󣬿���������ȡԪ����\ '+
    '|��ֵ�����·���Ѫ���ڵ����Ĺ����е����ֵ��ť\ '+
    '|��ֵ֧��΢�ţ�֧�����ȶ��ֳ�ֵ��ʽ\ '+
    '|�׳�<50/c=red>Ԫ������ȡ�׳��������ں�������װ\ '+
    '|�ۼ�<200/c=red>Ԫ������ȡ����������һ��+�ͼ����ң���ְҵ���� \'+
    '|�ۼ�<500/c=red>Ԫ������ȡ���켶����һ��+�м����ң���ְҵ����\ '+
    '|�׳�<1000/c=red>Ԫ������ȡ����������һ��+�׽�����ʹ��(�ƺ�����)����ְҵ����\'+
    '|{cmd}<��ȡԪ��/@GetYB>     ^<��ֵ����/@jiangli>\'+
    '|{cmd}<ÿ�ճ�ֵ����/@jiangli1> \'
 
    );

end.