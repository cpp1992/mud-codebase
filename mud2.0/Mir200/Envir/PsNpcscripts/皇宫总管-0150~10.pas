PROGRAM Mir2;

{$I common.pas}

Procedure _doexit;
begin
   This_Npc.CloseDialog(This_Player);
end;

procedure domain;
begin
    This_NPC.NpcDialog(This_Player,
    '��ӭ����Ц�����ִ���,��յ�ǰ��ͼ���ﲢ����ɱ����������ҿ�������������ȡ������\'
	+'��һ�����ʻ�ü�Ʒ��ʱ��������ȡʱ��Ϊ15:20-15��25��19:20-19:25��\'
    +'|{cmd}<��ȡ����/@lqjl>\');
end;

procedure _lqjl; 

begin
if This_Npc.CheckCurrMapMon = 0 then //���ڹ����Ƿ����
    begin  
    if  ((GetHour = 15) and (GetMin > 20) and (GetMin < 25)) or 
((GetHour = 19) and (GetMin > 20) and (GetMin < 25)) then begin//��ȡ����ʱ��
      if  This_Player.GetV(71,10) = 10 then begin //  ɱ�����������˽�б���
   if random(100) < 10 then    
        begin
            if  This_Player.FreeBagNum >= 2 then  
             case   This_Player.Job   of              //��ְҵ10%����������
                0 : begin
                   This_Player.Give('����',1);
                   This_NPC.NpcDialog(This_Player,
                '�����Ѿ��ѷ������İ���!'); 
                	This_Player.SetV(71,10,0) ;//��ձ�����ֹ��Чˢ
                    end;
                1  :  begin 
                   This_Player.Give('����',1);
			                This_NPC.NpcDialog(This_Player,
                      '�����ѷ������İ���!');
                      	This_Player.SetV(71,10,0) ;
			                end;
                 2 :  
                   begin 
                   This_Player.Give('����',1);
			                This_NPC.NpcDialog(This_Player,
                      '�����ѷ������İ���!') ;
                      	This_Player.SetV(71,10,0) ;
                   end; 
               else
              This_NPC.NpcDialog(This_Player,
              'û���㹻�İ����ռ�!');  
  end else This_Player.ScriptRequestAddYBNum(200);  //90%������Ԫ��1000
	This_Player.SetV(71,10,0) ;    //��ձ�����ֹ��Чˢ
	end else
  This_Npc.NpcDialog(This_Player,
        '����������ɱ!');
	end else
  This_Npc.NpcDialog(This_Player,
        '������ȡʱ��!');
	end else
  This_Npc.NpcDialog(This_Player,
        '������û���������еĹ���!');
    end;
 end;

procedure Execute;
 begin
if  ((GetHour = 14) and (GetMin = 0)) or 
((GetHour = 18) and (GetMin=0)) then begin           //��ʱˢ��ʱ���
This_NPC.CreateMon('3~1',632,278,5,'�سǷ�ʦ',10);
This_NPC.CreateMon('3~1',649,258,5,'�س�սʿ',10);
This_NPC.CreateMon('3~1',636,292,5,'�سǵ�ʿ',10);
This_NPC.CreateMon('0150~10',11,16,5,'�سǵ�ʿ',3);
This_NPC.CreateMon('0150~10',11,16,5,'�س�սʿ',3);
This_NPC.CreateMon('0150~10',11,16,5,'�سǷ�ʦ',3);
This_NPC.CreateMon('0150~10',11,16,5,'�سǽ���',1);
This_NPC.CreateMon('0150~10',11,16,5,'�س�̫ξ',1);
This_NPC.CreateMon('0150~10',11,16,5,'�سǹ���',1);
This_NPC.NpcNotice('ģ�⹥ɳ��ʼ�����λ��ʿ������ģ�⹥ɳ������ս��');
end else if  ((GetHour = 14) and (GetMin = 59)) or   //��ʱ��յ�ͼ����ʱ��
((GetHour = 18) and (GetMin=59)) then begin        
This_NPC.ClearMon('3~1');
This_NPC.ClearMon('0150~10');
This_NPC.NpcNotice('ģ�⹥ɳ���������λ��ʿ�´�����'); 
 end;
 end; 
 
 
Begin
  domain;
  
end.