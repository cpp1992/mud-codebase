{********************************************************************

*******************************************************************}

PROGRAM Mir2;



Procedure _doexit;
Begin
   This_Npc.CloseDialog(This_Player);
end;

procedure _Exit;
begin
  This_Npc.CloseDialog(This_Player);
end;


Procedure _rule;
Begin
   This_Npc.NpcDialog(This_Player,
   '���λĿ��ֻ���ṩ�����һ�������д�Ļ��ᣬʤ���޹ؽ�Ҫ��\'+
   '�κδ���ʹ�þ����������Ϊ����������������Ϊ�������н����\'+
   '�����в����ۼ�PKֵ�����������������κ���Ʒ��������ϵ�С�\'+
   '���������޶�120��ͬʱ������һ����������������̲��䡣\'+
   '�����У�����ʹ�ù���Ƶ�����˵���ң����ܵ�����30���ӣ����\'+
   '�����Ĵ�����\ \'+
   '|{cmd}<��һҳ/@rule1>');
end;

Procedure _rule1;
Begin
   This_Npc.NpcDialog(This_Player,
   '�����ڱ�����ʽ��ʼǰ�����߱�������������������˵�\'+
   '��ң����ܵ����������ǽ��Ե÷���ߵ�3���л���й�����\'+
   'ͬʱ����3���л���ѡ���÷���ߵĸ��˹ھ������й�����\'+
   '�ر�����������������������ʼǰ������������󣬼���������\'+
   '���˺��лὫ�ܵ����ദ�֣�����һ�ο۳�1000�֣��۷��ۼ�\'+
   '����5000��ȡ���ʸ�\ \'+
   '|{cmd}<��������/@enter>                      ^<�뿪/@doexit>');
end;


Procedure _Enter;
begin
   if (This_Player.GoldNum >= 1000) and (This_Player.Level >=10) then
   begin
      if CheckOtherMapHum('F003') < 120 then
      begin
         if (This_Player.GetBagItemCount('�������Ѿ�')>=1) or (This_Player.GetBagItemCount('�������Ѿ��')>=1) 
             or (This_Player.GetBagItemCount('�سǾ�')>=1) or (This_Player.GetBagItemCount('�л�سǾ��')>=1) 
             or (This_Player.GetBagItemCount('�л�سǾ�')>=1) or (This_Player.GetBagItemCount('�سǾ��')>=1)  then
         begin
             This_Npc.NpcDialog(This_Player,
             'Я���������Ѿ��سǾ��л�سǾ�\'+
             '���ܽ����л���������ͼ��\'+
             '���л���������ͼ�У�����ʹ����Щ�����뿪������\'+
             '���޷��ٴν��������������ع���\ \'+
             '|{cmd}<ȷ��/@doexit>');
         end  else
         begin
             This_Player.DecGold(1000);
             This_Player.RandomFlyTo('F003');
         end;   
      end else
      begin
         This_Npc.NpcDialog(This_Player,
         '��Ǹ�����ڲ��������������Ժ�������\ \'+
         '|{cmd}<ȷ��/@doexit>');
      end;
   end else
   begin
      This_Npc.NpcDialog(This_Player,
      '�����Ǯ���������߼���̫���ˣ�\'+
      '�����1000����볡�ѣ�����10�������������ҡ�\ \'+
      '|{cmd}<�뿪/@doexit>');
   end;
end;


Begin
      This_Npc.NpcDialog(This_Player,
      '����μ��޲���л������������ﲻ��PKֵ��Ҳ�����\'+
      '����Ʒ�������ͨ�������ڵ�NPC�뿪������\'+
      '�ҽ���ȡ1000�����Ϊ�볡�ѣ�������Ҫ�ﵽ10�����ϡ�\' +
      '�ٷ�Ҳ����֯��ʽ�ı���������ʽ�����о��й����޶��ˡ�\ \'+
      '|{cmd}<����/@fenter>                       ^<�鿴��ʽ��������/@rule>\'+
      '|{cmd}<�Ժ�����/@doexit>');
end.