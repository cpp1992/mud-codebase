{Ԫ���齱
���ߣ����ľͺ�
���ݣ�ȫ��ÿ������Ϊ300�Σ�����һ��ֻ�ܳ�20�Σ�ÿ�齱һ����Ҫ1Ԫ��
}



PROGRAM Mir2;

{$I common.pas}
var
today:integer; 
num:integer;
Snum :integer; 
Snum0 :string ;
num0 :string ;
Procedure _doexit;
begin
   This_Npc.CloseDialog(This_Player);
end;

procedure domain;

begin
    Snum0 :=inttostr(200-Snum);//ȫ��ʣ��齱����
    num0 :=inttostr(20-Snum);//����ʣ��齱����
    This_NPC.NpcDialog(This_Player,
       '���ӭ���١�Ц�����֡��齱���ġ���\|'
      +'          '+'ÿ�齱һ����Ҫ<10Ԫ��/c=red>��|\'
	+'         '+'ȫ��ÿ������Ϊ200��'+' '+'<��ʣ/C=red>'+snum0+'<��/C=red>\|'
    +'          '+'����һ��ֻ�ܳ�20��'+' '+'<��ʣ/C=red>'+num0+'<��/C=red>\|'
     +' ����������װ������Ʒ�ȶ������ڳ齱�л��\|'
	 +' ��һ����������Ħ��\|'
     +' ��Ʒ����������ֵ �Ķ������ж�Ŷ���\|'
     +'               '+'{cmd}<��Ҫ�齱/@cj>\');
end;

procedure _cj;
var 
Rdm_int : integer; 
WpName : string;

begin
    today := GetDateNum(GetNow);
    if This_Player.GetV(63,3) <> today then
    begin
       This_Player.SetV(63,3,today);
       This_Player.SetV(63,4,0);
    end;

   if GetG(65,1) <> today then
   begin
       SetG(65,1,today);
       SetG(65,2,0);
   end;
   Snum := GetG(65,2)
   num := This_Player.GetV(63,4);
   
    if Snum < 200 then//���Ը���ȫ���齱�������ޣ��������ʾ��Ŀ���ͬʱ�޸�
    begin 
        if num < 20 then//���ĸ��˳齱��������
begin
     Rdm_int := random(100);
     if This_Player.YBNum > 0 then   
     begin 
       if This_Player.FreeBagNum >= 2 then  
       begin
	   if Rdm_int < 1 then  
                begin
                case random(18) of
                    0 : WpName := '������ˮ';
                    1 : WpName := '���콣';
                    2 : WpName := '��Ѫħ��';
					3 : WpName := 'ʥսͷ��';
					4 : WpName := '��â����';
                    5 : WpName := '��â����';
                    6 : WpName := '��â��ָ';
					7 : WpName := '�����ָ';
                    8 : WpName := '��������';
                    9 : WpName := '��������';
					10: WpName := '��������';
                    11 :WpName := '��������';
					12: WpName := '��ʦ����';
					13 :WpName := '�������';
					14: WpName := '��������';
                    15 :WpName := '��������';
                    16 :WpName := 'ʥս����';
					17: WpName := '��ħ���';
					
                end;
            end else if Rdm_int < 5 then  
                begin
                case random(12) of
                    1 : WpName := '����';
					2 : WpName := 'ʥս����';
                    3 : WpName := 'ʥս����';
                    4 : WpName := '�����ָ';
					5 : WpName := 'ʥս��ָ';
                    6 : WpName := '��������';
                    7 : WpName := '��������';
					8 : WpName := '��������';
					9  :WpName := '�����ָ';
					10 : WpName := 'ʥս��ָ';
                    11 :WpName := '��������';
							
                end;
            end else if Rdm_int < 20 then 
                begin
                case random(10) of
                    0 : WpName := '��ͭ����';
                    1 : WpName := '����';
                    2 : WpName := '���ƽ�';
					3 : WpName := '������';
                    4 : WpName := '����ͷ��';
                    5 : WpName := '��ħ����';
                    6 : WpName := '��������';
                    7 : WpName := '̩̹��ָ';
                    8 : WpName := '������ָ';
                    9 : WpName := '����ͷ��';
                end;
            end else if Rdm_int < 100 then 
                begin
                case random(7) of
                    0 : WpName := '�þ�֮��';
                    1 : WpName := '����Ȩ��';
                    2 : WpName := '�޼���';
					3 : WpName := '5������';
                    4 : WpName := 'ף����';
                    5 : WpName := '���ʯ';
					6 : WpName := '����';
                end;
       end;
            
            This_Player.PsYBConsum(This_NPC,'xin',20001,10,1);//1Ϊ�۳�Ԫ������
            This_Player.Give(WpName , 1);
			 setG(65,2,Snum + 1);
           This_Player.setV(63,4, num + 1);
            This_NPC.NpcDialog(This_Player,
            WpName + '�ѷ������İ���!\|'
            +'{cmd}<����ʹ��10Ԫ����ȡװ��/@cj>');
        end else
        This_NPC.NpcDialog(This_Player,
        'û���㹻�İ����ռ�!\|'
        +'{cmd}<����/@main>');
         end else
         This_NPC.NpcDialog(This_Player,
        'û���㹻��Ԫ�������ɳ�ȡ\|'
        +'{cmd}<����/@main>');
		end else
        This_NPC.NpcDialog(This_Player,'������ѳ齱20�Σ�');
    end else
    This_NPC.NpcDialog(This_Player,'���շ�����200���޶�齱�Ѿ����꣡');
end;
function xin(price, num: Integer):boolean; 
begin
   result := true; 
 
end;

Begin
  domain;
end.