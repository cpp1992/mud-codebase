{
*******************************************************************}

program Mir2;

 

procedure _DoExit;
begin
  This_Npc.CloseDialog(This_Player);
end;


procedure _killpig;
var
x1 , x2 , x3 , x4 :integer;
td : double;
begin
   x1 := This_Player.GetS(13,1);
   x2 := This_Player.GetS(13,2);
   x3 := This_Player.GetS(13,3);
   td := GetNow;
   x4 := GetDateNum(td);
   if x3 = x4 then
   begin
      This_Npc.NpcDialog(This_Player,
      '���������Ҳ��������һ�εĻ���Ҳ���Ի��һ�����');
   end else if (This_Player.Level >= 40) and (x1 = 5) and (x2 = x4) then
   begin
      This_Npc.NpcDialog(This_Player,
      '̫��л�ˣ����Ǹ���Ľ�����\ \'+
      '|{cmd}<��ȡ����/@finishpig>');
   end else if (This_Player.Level >= 40) and (x1 = 4) and (x2 = x4) then
   begin
      This_Npc.NpcDialog(This_Player,
      '�Ͽ�ȥɱ��5����Ұ��ɣ�');    
   end else if (This_Player.Level >= 40) and (x1 = 2) and (x2 = x4) then
   begin
      This_Npc.NpcDialog(This_Player,
      '�Ͽ�ȥɱ��5����Ұ��ɣ�'); 
      This_Player.SetS(13,1,4);
      //����ֻ��ʹ������Ŷ�����ʹ�û�ŶԴ�ֽ��м���������ʹ��16�������99���ֶ� 
      This_Player.SetV(16,99,0); 
   end;
end;

procedure _finishpig;
var
x1 , x2 , x3 , x4 , temp :integer;
td : double;
begin
   x1 := This_Player.GetS(13,1);
   x2 := This_Player.GetS(13,2);
   x3 := This_Player.GetS(13,3);
   td := GetNow;
   x4 := GetDateNum(td);
   if x3 = x4 then
   begin
      This_Npc.NpcDialog(This_Player,
      '���������Ҳ��������һ�εĻ���Ҳ���Ի��һ�����');
   end else if (This_Player.Level >= 40) and (x1 = 5) and (x2 = x4) then
   begin
      if This_Player.FreeBagNum >= 1 then
      begin
         This_Npc.NpcDialog(This_Player,
         '̫��л���ˣ�����������5000000�㾭�飬\'+
         //'��Ԫ��˫������Ի��50000�ڹ����飡\'+
         '���������Ҳ��������һ�εĻ���Ҳ���Ի��һ�����');
         //This_Player.Give('��Ԫ��',1);
         This_Player.Give('����',5000000);
         This_Player.SetS(13,3,x4);
         This_Player.SetS(13,1,0);
         This_Npc.CreateMon('D2008',52,51,50,'��Ұ��08',1);
         This_Npc.CreateMon('D2008',52,51,50,'��Ұ��08',5);
         This_Npc.CreateMon('D2008',52,51,50,'��Ұ��08',5);
         This_Npc.CreateMon('D2009',41,44,50,'��Ұ��08',1);
         This_Npc.CreateMon('D2009',41,44,50,'��Ұ��08',5);
         This_Npc.CreateMon('D2009',41,44,50,'��Ұ��08',5);
         This_Npc.CreateMon('D2010',155,231,50,'��Ұ��08',1);
         This_Npc.CreateMon('D2010',155,231,50,'��Ұ��08',5);
         This_Npc.CreateMon('D2010',155,231,50,'��Ұ��08',5);
         This_Npc.CreateMon('D2011',32,31,50,'��Ұ��08',1);
         This_Npc.CreateMon('D2011',32,31,50,'��Ұ��08',5);
         This_Npc.CreateMon('D2011',32,31,50,'��Ұ��08',5);
         This_Npc.CreateMon('D2012',48,47,50,'��Ұ��08',1);
         This_Npc.CreateMon('D2012',48,47,50,'��Ұ��08',5);
         This_Npc.CreateMon('D2012',48,47,50,'��Ұ��08',5);
      end else
      begin
         This_Npc.NpcDialog(This_Player,
         '������һ�°�������������һ�����ϵİ����ռ��������Ұɣ�');
      end;
   end else if (This_Player.Level >= 40) and (x1 = 4) and (x2 = x4) then
   begin
      temp := This_Player.GetV(16,99);
      if (temp <= 4) then
      begin
         This_Npc.NpcDialog(This_Player,
         '�������Ѿ�ɱ����'+IntToStr(temp)+'ֻ��Ұ������Ŭ���ɣ�\'+
         '����ɱ��5ֻ��Ұ���Ժ������ҡ�');
      end else
      begin
         This_Npc.NpcDialog(This_Player,
         '�㻹û��ɱ��5ֻ��Ұ������Ŭ���ɣ�');
      end;   
   end else
   begin
      This_Npc.NpcDialog(This_Player,
      '�㻹û�н������񣬲�����ȡ������'); 
   end;
end;


var
temp ,temp2 : integer;
td : double;
Begin
   td := GetNow;
   temp := GetDateNum(td);
   temp2 := This_Player.GetS(13,1);
   if (This_Player.Level >= 40) and (temp = This_Player.GetS(13,2)) and ( (temp2 = 2) or (temp2 = 4) or (temp2 = 5) ) then
   begin
      This_Npc.NpcDialog(This_Player,
      '�𾴵���ʿ���ǳ���л���������ң�������ߴ�������ڤ���ȡ�\'+
      '�ݺ����ħ�����������ȸ����Ĺ�������кܴ���춯��ϣ\'+
      '�����ܰ���ȥ��Щ�ط�����<5ֻ��Ұ��/c=red>��\'+
      '���֮���Ҿͻ�����һ�����\ \'+
      '|{cmd}<�õģ������ȥ/@killpig>                  ^<���Ѿ�ɱ���˰�Ұ����/@finishpig>');
   end else
   begin
      This_Npc.NpcDialog(This_Player,
      '��˵ÿ��ֻҪ�����ػʹ������ǩһ������\'+
      '���ܻ�÷��Ľ�������֪���ǲ�����ġ�\');
   end;
end.