{****************************************
ģ�⹥ɳ
���ߣ����ľͺ�
���ݣ�ÿ��14:00-14:15��18:00-18:15���Խ���ģ�⹥ɳ���
50�����Ͻ��룬ɱ���س���ʿ���Ի��һ����Ԫ����
����ɱ����������ҿ����ڻʹ�������ȡԪ����������
��һ�����ʻ�ü�Ʒְҵ������
14:20-14:25��18:20-18:25Ϊ�콱ʱ�䣬25�Ժ���ջ��ͼ����
��������������˽ű��г�ͻ���������޸�
�õ�����V(71��1-10)
**********************************************}


PROGRAM Mir2;
Procedure _doexit;
begin
   This_Npc.CloseDialog(This_Player);
end;

procedure domain;
begin
    This_NPC.NpcDialog(This_Player,
    '��ӭ����Ц�����ִ���\|'
	+'ÿ��14:00-15:00��18:00-19:00���Խ���ģ�⹥ɳ���\|'
    +'45�����Ͻ��룬ɱ���س���ʿ���Ի��һ����Ԫ����\|'
    +'����ɱ����������һ�����ʻ�ü�Ʒְҵ������\|'
    +'|{cmd}<����ģ�⹥ɳ/@mngs>\');
end;
procedure mngs2;
begin
This_Player.FlyTo('3~1',693+random(5),349+random(5));  //������䷶Χ����ֹ���Ž���ȥ 

end; 

procedure _mngs; 
begin
if  ((GetHour = 14) and (GetMin < 60)) or 
((GetHour = 18) and (GetMin < 60)) then begin 
    if This_Player.Level >= 45 then
  begin                 
   This_Player.CallOut(This_Npc,5, 'mngs2');
    This_Player.RandomFlyTo('Q002~2');
    This_Npc.NpcDialog(This_Player,
   '��ɳ��ʼ��5�����빥ɳ����');
   This_Npc.NpcNotice('ǿ���'+This_Player.Name+
   '������ģ�⹥ɳ��');
   end else
    This_Npc.NpcDialog(This_Player,
   '���ĵȼ�������');   
end else
     This_Npc.NpcDialog(This_Player,
   '���ڻʱ�䣡');  
  end;
  

Begin
  domain;
end.