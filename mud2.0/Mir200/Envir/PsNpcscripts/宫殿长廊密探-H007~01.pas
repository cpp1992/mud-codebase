{
*******************************************************************}

program Mir2;

 

procedure _DoExit;
begin
  This_Npc.CloseDialog(This_Player);
end;


procedure _start928;
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
      '����������ʲô���㲻���Ѿ���ɽ������������');
   end else if (x2 = x4) and (x1 = 3) then
   begin
      if This_Player.Level >= 51 then
      begin
         if This_Player.FreeBagNum >= 1 then
         begin
            This_Npc.NpcDialog(This_Player,
            '��ζ�����ˣ���Ȼ�Ҿ��鷳�ˣ�\'+
            '���Ǹ�������800000�㾭�飬\'+
            //'��Ԫ��˫������Ի��50000�ڹ����飡\ \'+
            '|{cmd}<лл�ˣ�/@doexit>');
            //This_Player.Give('��Ԫ��',1);
            This_Player.Give('����',800000);
            This_Player.SetS(13,1,0);
            This_Player.SetS(13,3,x4);
         end else
         begin
            This_Npc.NpcDialog(This_Player,
            '������һ�°�������������һ�����ϵİ����ռ��������Ұɣ�');
         end;
      end else
      begin
         This_Npc.NpcDialog(This_Player,
         '�𾴵���ʿ�����������ʱ���ﲻ���ң�\'+
         'ȥ�����һʹ�߰ɣ������������Ҫ��İ�����\'+
         '��ÿ�컹���������ػʹ������ǩһ������\'+
         '��÷���齱����\');
      end;
   end else
   begin
      This_Npc.NpcDialog(This_Player,
      '�㻹ûȥ�ҹ����ػʹ����\'+
      '�����������Ҫ��İ�����\'+
      '��ÿ�컹�����ڻʹ������ǩһ������\'+
      '��÷���齱����\'); 
   end;
end;



Begin
   if This_Player.Level >= 51 then
   begin
      This_Npc.NpcDialog(This_Player,
      '�𾴵���ʿ�������������ҵ���\ \'+
      '|{cmd}<�ǻʹ�������������/@start928>\'+
      '|{cmd}<��Ǹ���һ���������/@doexit>\ \');
   end else
   begin
      This_Npc.NpcDialog(This_Player,
      '�𾴵���ʿ�����������ʱ���ﲻ���ң�ȥ������<�ʹ��/c=red>��\'+
      '�����������Ҫ��İ�����\'+
      '��ÿ�컹���������ػʹ������ǩһ��������÷���齱����\');
   end;
end.