{
/************************************************************************}



PROGRAM Mir2;

Procedure _doexit;
begin
   This_Npc.CloseDialog(This_Player);
end;

Procedure _qingtie;
begin
   if This_Player.GetBagItemCount('����')>= 1 then
   begin
      This_Player.Take('����',1);
      This_Npc.CreateMon('M100',131,154,100,'��ħ����15',5);
      This_Npc.NpcDialog(This_Player,
      'Я���̻��Ĺ����Ѿ�����������ͨ���\'+
      '����������ȥѰ�������ˣ�Ҫץ��Ŷ�����ñ�����ȥ�ˡ�\ \'+
      '|{cmd}<�ر�/@doexit>');
   end else
   begin
      This_Npc.NpcDialog(This_Player,
      '������û�����������ǲ�������û��������ѽ��\ \'+
      '|{cmd}<�ر�/@doexit>');
   end;
end;


Begin
   This_Npc.NpcDialog(This_Player,
   '�ɲ�Ůò�����Ӽ��ˣ���ô���õ�һ�ԣ����������Ե�����\'+
   '���뿴���������̻��𣿽�����������Я���̻������ع����\'+
   '����֣��������ϣ�����Եõ�Ư�����̻���\ \'+
   '|{cmd}<������/@qingtie>                        ^<�뿪/@doexit>');
end.