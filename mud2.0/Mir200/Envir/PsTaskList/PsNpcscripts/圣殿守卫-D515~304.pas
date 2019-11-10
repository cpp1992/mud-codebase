{
*******************************************************************}
Program Mir2;

Procedure _Exit;
begin
   This_NPC.CloseDialog(This_Player);
end;

Procedure _mount;
var
LFNum : integer;
begin
   LFNum := This_Player.NickLinFu;
   This_NPC.NpcDialog(This_Player,
   '������ӵ��ʥ�������'+ IntToStr(LFNum)+'\ \'+
   '|{cmd}<����/@main>');
end;

Procedure _goback;
begin
   if compareText(This_Player.MapName,'D515~304') = 0 then
     This_Player.RandomFlyTo('0122~1');
end;

Procedure notEnoughNick;
begin
   This_NPC.NpcDialog(This_Player,
   '��û���㹻��ʥ���������ȡ���ء�');
end;

Procedure NotEnoughBag;
begin
   This_NPC.NpcDialog(This_Player,
   '������İ����Ѿ����ˣ�����ô��ʥ���еı��ظ����أ�\'+
   '����������һ�°����������Ұɡ�');
end;

Procedure UseNick_OK;
begin
   This_NPC.NpcDialog(This_Player,
   '����������е�ʥ��̲����޾���ϡ���䱦��\'+
   'ֻҪ�������ذ�ʥ��������ң��Ϳ��Բ��ϻ�ñ��أ�\'+
   '���ҵ�ʥ�����Խ�࣬�õ��ı����Խ���棡\'+
   '���������Ԥ�����������ռ䡣 \ \'+
   '|{cmd}<�һ�1��/@useNick1>             ^<�һ�10��/@useNick10>             ^<�һ�100��/@useNick100>\ \'+
   '|{cmd}<������ͥ/@goback>            ^<��ѯʥ���������/@mount>');
end;

Procedure _useNick1;
begin
   if This_Player.NickLinFu >= 1 then
   begin
      if This_Player.FreeBagNum >= 6 then
      begin
         //����������ʥ�������ȡ�����Ľӿڣ�����Ĳ���1��2��3�ֱ�ָ�һ�1�š�10�ź�100��ʥ������������ 
         This_NPC.UseNick(This_Player,1);
      end else
      begin
         This_NPC.NpcDialog(This_Player,
         '������İ����Ѿ����ˣ�����ô��ʥ���еı��ظ����أ�\'+
         '����������һ�°����������Ұɡ�');
      end;
   end else
   begin
      This_NPC.NpcDialog(This_Player,
      '��û���㹻��ʥ���������ȡ���ء�');
   end;
end;

Procedure _useNick10;
begin
   if This_Player.NickLinFu >= 10 then
   begin
      if This_Player.FreeBagNum >= 6 then
      begin
         This_NPC.UseNick(This_Player,2);
      end else
      begin
         This_NPC.NpcDialog(This_Player,
         '������İ����Ѿ����ˣ�����ô��ʥ���еı��ظ����أ�\'+
         '����������һ�°����������Ұɡ�');
      end;
   end else
   begin
      This_NPC.NpcDialog(This_Player,
      '��û���㹻��ʥ���������ȡ���ء�');
   end;
end;

Procedure _useNick100;
begin
   if This_Player.NickLinFu >= 100 then
   begin
      if This_Player.FreeBagNum >= 6 then
      begin
         This_NPC.UseNick(This_Player,3);
      end else
      begin
         This_NPC.NpcDialog(This_Player,
         '������İ����Ѿ����ˣ�����ô��ʥ���еı��ظ����أ�\'+
         '����������һ�°����������Ұɡ�');
      end;
   end else
   begin
      This_NPC.NpcDialog(This_Player,
      '��û���㹻��ʥ���������ȡ���ء�');
   end;
end;

Begin
   
   This_NPC.NpcDialog(This_Player,
   '����������ּ�⣬ \'+
   '�����Ѿ���������ȡʥ������еı�� \ \'+
   '|{cmd}<������ͥ/@goback>');
end.