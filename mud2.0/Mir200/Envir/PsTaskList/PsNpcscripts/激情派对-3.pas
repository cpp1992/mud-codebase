{****************************************
�����ɶ� �� �콵�Ʊ� 
���ߣ����ľͺ�
���ݣ������ɶԣ���һ����ʱ�䣬�ڸ�npc�������ȡ�����Ԫ����Խ����npc�����Ԫ���;���Խ�� ��
�콵�Ʊ� :��һ��ʱ�䣬���ǵ����ˢ����Ʒ����ҿ������ᣡ 
 
**********************************************}

PROGRAM Mir2;
 var

px, py :Integer;
Procedure _doexit;
begin
   This_Npc.CloseDialog(This_Player);
end;

procedure domain;
begin
    
    This_NPC.NpcDialog(This_Player,
    '��ӭ����Ц�����ִ���,<�����ɶ�/c=red>��<21��/c=red>�����Ǿ��У�\|'
	+'<�����ɶԣ�/c=red>��һ����ʱ�䣬\|'
	+'�ڸ�npc�������ȡ�������Ʒ��\|'
	+'Խ����npc�������Ʒ�;���Խ�ࡣ\|'
	+'�����ɶԳ���<10����/c=red>��\|'
	+'<�콵�Ʊ�: /c=red>���ɶԽ���֮��\|'
	+'���ǵ����ˢ����Ʒ����ҿ������ᣡ\|' 
	+'Խ����NPC����ý���Խ�ࡣ\|'
    +'|{cmd}<�μӼ����ɶ�/@jqpd>\');
end;

procedure _jqpd; 
   begin
if This_Player.Level >1 then
  begin                 
    This_Player.CallOut(This_Npc, 1, 'jqpd');
    This_Player.FlyTo('3',355+random(6),335+random(6));
    This_Npc.NpcDialog(This_Player,
   '��úð������Ҹ���ʱ�⡣'
   ); 
   
   end;
    end;

procedure jqpd; 
begin
px:= This_player.My_X;
py:= This_Player.My_Y;
       
     if  (GetHour = 21) and (GetMin < 10) then   
    begin
        if (This_Player.MapName = '3') and (( px > 353) and (px < 357))  and ((py < 337) and (py >333))  then
        begin
       This_Player.Give('����',10000);
       This_Player.CallOut(This_Npc, 1, 'jqpd');
	     end else
	     if (This_Player.MapName = '3') and (( px > 352) and (px < 358))  and ((py < 338) and (py >332))   then
        begin
       This_Player.Give('����',10000);
       This_Player.CallOut(This_Npc, 1, 'jqpd');
        end else 
        if (This_Player.MapName = '3') and (( px > 351) and (px < 359))  and ((py < 339) and (py >331))  then
        begin
       This_Player.Give('����',10000);
       This_Player.CallOut(This_Npc, 1, 'jqpd');
       end else
        This_Player.CallOut(This_Npc, 1, 'jqpd');
       
    end else 
         This_Npc.NpcDialog(This_Player,
       'Ŀǰ���ڿ���ʱ��,��21��׼ʱ����!');
end;



procedure Execute;
var   
gmin : integer;
begin
  if  (GetHour = 21) and (GetMin = 10)    then  
  begin
  This_NPC.NPCSay('��������￪ʼ�����ɶԣ�10���Ӻ������'); 
  This_NPC.NpcNotice('�����ɶ��Ѿ���ʼ���뵽����ҩ���Աߵ����ʼ��') ; 
  end; 
   if  (GetHour = 21) and (GetMin = 10)  then
  begin
  This_NPC.NPCDropItem('����ҩ',150,40);
  This_NPC.NPCDropItem('�������',150,15);
  This_NPC.NPCDropItem('1������',100,15);
  This_NPC.NPCDropItem('�޸���ˮ ',100,10);
  This_NPC.NPCDropItem('��Ѩ��Ӿ���',100,10);
  This_NPC.NPCDropItem('����ѩ˪',100,10);
  end;       
end; 

Begin
  domain;  
end.