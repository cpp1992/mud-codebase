{
*******************************************************************}

program mir2;

{$I common.pas}

procedure _DoExit;
begin
  This_Npc.CloseDialog(This_Player);
end;

//==============================================================��������
procedure _renwu20;
begin
 if (This_Player.GetV(103,1) = 2) then
 begin
 This_Npc.NpcDialog(This_Player,
 '�����Աߵ���ڴ��������ֱ�ӵ�������ɭ�֣�\'+
 '��Ҫ��<ʰ����/c=red>����֪���������\ \'+
 '|{cmd}<�õ�,�����ȥ(����)/@doexit>\'
 );
 end
 else if This_Player.FreeBagNum >3 then
 begin
 This_Player.SetV(103,1,2);        //������
 This_Player.UpdateTaskDetail(103,1);
 This_Player.Give('˫������',1);
 This_Npc.CloseDialog(This_Player);
 //This_player.AutoGotoMap('1',557,540); // �Զ�Ѱ· ʰ���� 
 end else
 begin 
 This_NPC.NpcDialog(This_Player,
 '��������������ı����������ң�\ \'+
 '|{cmd}<�õ�/@doexit>\'
 );
 end; 
end; 

procedure dorenwu20;
begin
   This_Npc.NpcDialog(This_Player,
    '�����Աߵ���ڴ��������ֱ�ӵ�������ɭ�֣�\'+
    '��Ҫ��<ʰ����/c=red>����֪���������\ \'+
   '|{cmd}<�õ�,�����ȥ(����)/@doexit>\');
end;

procedure _gointo;
var
  temp : integer;
begin
  if CompareText(This_Player.MapName,'0') = 0 then
  begin
    temp := random(8) + 1;
    if temp = 1 then
    begin
      This_Player.Flyto('1',537,507);
    end
    else if temp = 2 then
    begin
      This_Player.Flyto('1',530,507);
    end
    else if temp = 3 then
    begin
      This_Player.Flyto('1',528,505);
    end
    else if temp = 4 then
    begin
      This_Player.Flyto('1',520,497);
    end
    else if temp = 5 then
    begin
      This_Player.Flyto('1',524,493);
    end
    else if temp = 6 then
    begin
      This_Player.Flyto('1',520,501);
    end
    else if temp = 7 then
    begin
      This_Player.Flyto('1',510,503);
    end
    else
    begin
      This_Player.Flyto('1',504,497);
    end;
  end
  else
    exit;
end;

//==============================================================��������

var
  RW103 : integer;
begin
   RW103 := This_Player.GetV(103,1);
   if RW103 = 2 then 
   begin
      dorenwu20;
   end else if RW103 = 1 then
   begin
      This_Npc.NpcDialog(This_Player,
      '��ֻ֪������ɭ�������̫ƽ�������Աߵ���ڴ�\'+
      '�������ֱ�ӵ�������ɭ�֣�\'+
      '��Ҫ��<ʰ����/c=red>����֪���������\'+
      '���ڱ���Ķ�Ѩ��������ǳ�Σ�գ������õľݵ㣬\'+
      'ȥǰ����Ҫ���ó����׼����������һ��˫�����ᡣ\'+
      'ϣ�����԰�������ٳɳ����˷����գ�\ \'+
      '|{cmd}<�ҽ���(����)/@renwu20>          ^<ǰ������ɭ��/@gointo>\');
   end else
   begin 
      This_Npc.NpcDialog(This_Player,
      '��������ʲô���飿\ \|{cmd}<ǰ������ɭ��/@gointo>');
   end;
end. 