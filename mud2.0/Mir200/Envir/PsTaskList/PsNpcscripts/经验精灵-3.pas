{
*******************************************************************}

program Mir2;

  
  
  
procedure _jy100;
begin
  if (This_Player.GetBagItemCount('100�����') > 0) then
  begin
      This_Player.Give('����',1000000);
      This_Player.Take('100�����',1);
      ServerSay('��ҡ��' + This_Player.Name + '������ɹ��һ�100������ȼ��������',3); 
  end
  else
    This_Npc.NpcDialog(This_Player,
      'С����û��100�������Ҫ�ҵ�!'
    );
end;

procedure _jy1000;
begin
  if (This_Player.GetBagItemCount('1000�����') > 0) then
  begin
      This_Player.Give('����',10000000);
      This_Player.Take('1000�����',1);
      ServerSay('��ҡ��' + This_Player.Name + '������ɹ��һ�1000������ȼ��������',3); 
  end
  else
    This_Npc.NpcDialog(This_Player,
      'С����û��1000�������Ҫ�ҵ�!'
    );
end;





begin

 This_Npc.NpcDialog(This_Player,
   '�����ˣ���������ʲô����\' +
   '�����ӵ�д�˵�еľ�����ᣬ���Ե�������һ��ɾ���\' +
   '|{cmd}<����100�������Ҫ������/@jy100>\' +
   '|{cmd}<����1000�������Ҫ������/@jy1000>\'
    );  
end.