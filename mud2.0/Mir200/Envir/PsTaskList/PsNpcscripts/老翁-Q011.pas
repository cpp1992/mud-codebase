{********************************************************************

*******************************************************************}
program mir2;

{$I common.pas}

procedure _Exit;
begin
  This_Npc.CloseDialog(This_Player);
end;

Procedure domain;
begin
   This_NPC.NpcDialog(This_Player,
   '�㾹Ȼ����������, ������\'
   +'�ҿ���Ӧ��������ҵ���˼.. ����.. \'
   +'���ú�������·��, ����������ɹŴ��˷��崴��İ����󹹳ɡ����� \'
   +'�����˽�������𣿵��ǲ��ܰ׸�����..  \ \'
   +'|{cmd}<��/@QUEST_1_1>3000��� \'
   +'|{cmd}<����/@QUEST_1_2>���\'
   );

end;

procedure _QUEST_1_2;
begin
   This_NPC.NpcDialog(This_Player,
   '�㲻��Ǯ����Ҳû�취..  \ '
   +'���ȥ��.. \ \'
   +'|{cmd}<ȡ��/@exit>'
   );

end;

procedure _QUEST_1_1;
begin
    if This_Player.GoldNum >= 3000 then
    begin
        This_Player.DecGold(3000);
   This_NPC.NpcDialog(This_Player,
   '�����ˣ���������Ͽ��Է�Ϊ3����\'
   +'�������������Ҳ�����, ���Ǿ�˵�Ǹ�����-��-��-��-��-��-Ǭ-��-��ԭ��\'
   +'��֪����һ���鱨��? \'
   +'�����֪����\'
   +'��ô�뽻���5000.. \ \'
   +'|{cmd}<��/@QUEST_1_1_1> \'
   +'|{cmd}<����/@QUEST_1_2>'
   );
    end else
   This_NPC.NpcDialog(This_Player,
   '��ûǮ����Ҳû�취 \'
   +'���ˣ��ټ�.. \ \'
   +'|{cmd}<ȡ��/@exit>'
   );

end;

procedure _QUEST_1_1_1;
begin
    if This_Player.GoldNum >= 5000 then
    begin
        This_Player.DecGold(5000);
   This_NPC.NpcDialog(This_Player,
   '��֪����һ���󣬶���? ���Ѿ���Ǯ�ˣ��͸������. \'
   +'��̫��������Ϊ��������˳ʱ�뷽��\'
   +'��->��->��->Ǭ->��->��->��->��->�룬���˳��. \'
   +'��֪�����һ������?? \'
   +'������Ҳ֪���ҵ��Ը��˰�?�ٸ���10000��Ҿ͸�����. \ \'
   +'|{cmd}<��/@QUEST_1_1_1_1> \'
   +'|{cmd}<����/@QUEST_1_2>'
   );
    end else
   This_NPC.NpcDialog(This_Player,
   '��ûǮ����Ҳû�취 \'
   +'���ˣ��ټ�.. \ \'
   +'|{cmd}<ȡ��/@exit>'
   );

end;

procedure _QUEST_1_1_1_1;
begin
    if This_Player.GoldNum >= 10000 then
    begin
        This_Player.DecGold(10000);
   This_NPC.NpcDialog(This_Player,
   '���������һ����..\ '
   +'���շ����ԭ��\'
   +'Ǭ->��->��->��->��->��->��->��->Ǭ.. \'
   +'���ڸ�������鱨����Ҫ.. һ��Ҫ�úü�ס \ '
   +'�������������󷨵ķ��򣬵�Ȼ��Ҫ��Ǯ��\'
   +'��ѧ���ͽ�5000���. \ \'
   +'|{cmd}<��/@QUEST_1_1_1_1_1>��ķ��� \'
   +'|{cmd}<����/@QUEST_1_2>'
   );
    end else
   This_NPC.NpcDialog(This_Player,
   '��ûǮ����Ҳû�취 \'
   +'���ˣ��ټ�.. \ \'
   +'|{cmd}<ȡ��/@exit>'
   );

end;


procedure _QUEST_1_1_1_1_1;
begin
    if This_Player.GoldNum >= 5000 then
    begin
        This_Player.DecGold(5000);
   This_NPC.NpcDialog(This_Player,
   '��֪����ķ��򣬶��𣿺ã�������\'
   +'�Ǻ���.. \ '
   +'�뷽����12ʱ, ��������1ʱ, \'
   +'������9ʱ, �㷽����11ʱ.. \'
   +'��������Ҳ�ǲ�����.. \ '
   +'��ȥ������.. \ '
   +'�Ǻ���˵�Ļ�����Ҫ�в��С�ĵ�.. \ \'
   +'|{cmd}<����/@QUEST2>'
   );
    end else
   This_NPC.NpcDialog(This_Player,
   '��ûǮ����Ҳû�취 \'
   +'���ˣ��ټ�.. \ \'
   +'|{cmd}<ȡ��/@exit>'
   );

end;

procedure _QUEST2;
begin

   This_NPC.NpcDialog(This_Player,
   '�ã����Ƚ����Ǹ��󿴿�\'
   +'������ɲ���ʹ��������;�\'
   +'ף�����... �ټ� \ \'
   +'|{cmd}<ȡ��/@exit>'
   +''
   );

This_Player.Flyto('Q014',54,54);

end;   

begin
  domain;
end. 