{ 
*******************************************************************}

program Mir2;

 

procedure _DoExit;
begin
  This_Npc.CloseDialog(This_Player);
end;


procedure _mission928;
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
      '�������Ѿ���������ˣ��������������ɣ�');
   end else if (x2 = x4) and (x1 = 1) then
   begin
      This_Npc.NpcDialog(This_Player,
      '�𾴵���ʿ���ǳ���л���������ң�\'+
      '��ֻ��Ҫ����1000��ң��Ϳ��Եõ��ҵ����200000�㾭��\'+
      //'��1����Ԫ������Ԫ��˫������Ի��50000�ڹ����顣\ \'+
      '|{cmd}<�õģ�������/@mission928_1>');
   end else
   begin
      This_Npc.NpcDialog(This_Player,
      '�㻹ûȥ�ҹ����ػʹ����\'+
      '�����������Ҫ��İ�����\'+
      '��ÿ�컹���������ػʹ������ǩһ������\'+
      '��÷���齱����\'); 
   end;
end;

procedure _mission928_1;
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
      '�������Ѿ���������ˣ��������������ɣ�');
   end else if (x2 = x4) and (x1 = 1) then
   begin
      if This_Player.GoldNum >= 1000 then
      begin
         if This_Player.FreeBagNum >= 1 then
         begin
            This_Npc.NpcDialog(This_Player,
            '̫��л�ˣ����Ǹ�������\'+
            '���������Ҳ������һ�ν�Ҹ��ҵĻ���Ҳ���Ի��һ������\ \');
            This_Player.DecGold(1000);
            This_Player.Give('����',200000);
            //This_Player.Give('��Ԫ��',1);
            This_Player.SetS(13,1,0);
            This_Player.SetS(13,3,x4);
         end else
         begin
            This_Npc.NpcDialog(This_Player,
            '��������һ�°�������������1�����ϵĿռ��������Ұɣ�');
         end;
      end else
      begin
         This_Npc.NpcDialog(This_Player,
         'ֻ��Ҫ����1000��ң����������ˣ��͸Ͽ콻���Ұɣ�');
      end;
      

      
   end else
   begin
      This_Npc.NpcDialog(This_Player,
      '�㻹ûȥ�ҹ����ػʹ����\'+
      '�����������Ҫ��İ�����\'+
      '��ÿ�컹���������ػʹ������ǩһ������\'+
      '��÷���齱����\'); 
   end;
end;



Begin
   if This_Player.GetS(13,1) = 1 then
   begin
      This_Npc.NpcDialog(This_Player,
      '��...��Ư����ˮ��������������Ʒ����\'+
      '�ţ�С������������ʲô�£�\ \'+
      //'|{cmd}<����ҪЩˮ����������ҵ㣿/@duihua>\ \'+
      '|{cmd}<�����ػʹ����������/@mission928>');
   end else
   begin
      This_Npc.NpcDialog(This_Player,
      '��...��Ư����ˮ��������������Ʒ����\'+
      '�ţ�С������������ʲô�£�\ \'
      );
   end;
end.