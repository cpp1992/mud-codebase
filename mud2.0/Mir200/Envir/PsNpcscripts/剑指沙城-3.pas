{
*******************************************************************}

Program Mir2;



Procedure _doexit;
begin
   This_NPC.CloseDialog(This_Player);
end;

//==============================================================�������� 


procedure _shamen;
begin
   if This_Player.YBNum >= 5 then 
begin
This_Player.Flyto('3',674,332);
end else
   begin
      This_NPC.NpcDialog(This_Player,
      '�Բ�����Ԫ�����㡣');
  end;
end;


procedure _fuhuo;
begin
   if This_Player.YBNum >= 5 then 
begin
This_Player.Flyto('3',650,292);
end else
   begin
      This_NPC.NpcDialog(This_Player,
      '�Բ�����Ԫ�����㡣');
  end;
end;


procedure _yifu;
begin
   if This_Player.YBNum >= 5 then 
begin
This_Player.Flyto('3',665,284);
end else
   begin
      This_NPC.NpcDialog(This_Player,
      '�Բ�����Ԫ�����㡣');
  end;
end;


procedure _wuqi;
begin
   if This_Player.YBNum >= 5 then 
begin
This_Player.Flyto('3',637,311);
end else
   begin
      This_NPC.NpcDialog(This_Player,
      '�Բ�����Ԫ�����㡣');
  end;
end;



   begin
      This_NPC.NpcDialog(This_Player,
	+'�ҿ���ֱ�Ӱ����͵�ɳ�Ϳ˻ʹ�Ŷ��\'
	+'ÿ����һ����Ҫ��ȡ5��Ԫ����·�ѣ�'
    +'|{cmd}<ɳ������/@shamen>   <ɳ�����/@fuhuo>\\'
    +'|{cmd}<ɳ�·���/@yifu>    <ɳ������/@wuqi>\\' 
      );
   end.
