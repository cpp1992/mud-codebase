{
/************************************************************************}


PROGRAM Mir2;

{$I common.pas}

Procedure _doexit;
begin
   This_Npc.CloseDialog(This_Player);
end;


Procedure _newskill22;
begin
   if This_Player.GetBagItemCount('�ż���Ƭ(��)') >= 5 then
   begin
      This_Player.Take('�ż���Ƭ(��)',5);
      This_Player.Give('�ż���Ƭ(��)',1);
      This_Npc.NpcDialog(This_Player,
      '��Ȼ������ɽׯ��һֱû��ȥ����\'+
      '�����ս�������귨����Ϣ���ǻ����������š�\'+
      '������Щ������������������һ��ʱ����о���\'+
      '����Ҳ�ܹ���ʶһЩ���㻹��Ҫ��æ��\'+
      '10���ż���Ƭ(С)/���Խ����1���ż���Ƭ(��)��\'+
      '5���ż���Ƭ�п���ƴ�ӳ�1���ż���Ƭ(��)\ \'+
      '|{cmd}<����ż���Ƭ(С)/@newskill21>                 ^<ƴ�ӹż���Ƭ(��) /@newskill22>\'+
      '|{cmd}<û����/@doexit>');
   end else
   begin
      This_Npc.NpcDialog(This_Player,
      '��û���㹻�Ĺż���Ƭ(��)����\ \'+
      '|{cmd}<�˳�/@doexit>');
   end; 
end;

Procedure _newskill21;
begin
   if This_Player.GetBagItemCount('�ż���Ƭ(С)') >= 10 then
   begin
      This_Player.Take('�ż���Ƭ(С)',10);
      This_Player.Give('�ż���Ƭ(��)',1);
      This_Npc.NpcDialog(This_Player,
      '��Ȼ������ɽׯ��һֱû��ȥ����\'+
      '�����ս�������귨����Ϣ���ǻ����������š�\'+
      '������Щ������������������һ��ʱ����о���\'+
      '����Ҳ�ܹ���ʶһЩ���㻹��Ҫ��æ��\'+
      '10���ż���Ƭ(С)/���Խ����1���ż���Ƭ(��)��\'+
      '5���ż���Ƭ�п���ƴ�ӳ�1���ż���Ƭ(��)\ \'+
      '|{cmd}<����ż���Ƭ(С)/@newskill21>                 ^<ƴ�ӹż���Ƭ(��) /@newskill22>\'+
      '|{cmd}<û����/@doexit>');
   end else
   begin
      This_Npc.NpcDialog(This_Player,
      '��û���㹻�Ĺż���Ƭ(С)����\ \'+
      '|{cmd}<�˳�/@doexit>');
   end; 
end;

Begin
   This_Npc.NpcDialog(This_Player,
   '��Ȼ������ɽׯ��һֱû��ȥ����\'+
   '�����ս�������귨����Ϣ���ǻ����������š�\'+
   '������Щ������������������һ��ʱ����о���\'+
   '����Ҳ�ܹ���ʶһЩ������Ҫ��æ��\'+
   '10���ż���Ƭ(С)/���Խ����1���ż���Ƭ(��)��\'+
   '5���ż���Ƭ�п���ƴ�ӳ�1���ż���Ƭ(��)\ \'+
   '|{cmd}<����ż���Ƭ(С)/@newskill21>                 ^<ƴ�ӹż���Ƭ(��) /@newskill22>\'+
   '|{cmd}<û����/@doexit>');
end.