{********************************************************************

*******************************************************************}
procedure _exit; 
begin
    This_NPC.CloseDialog(This_Player);
    exit;
end;

procedure _normal;
begin
   This_NPC.NpcDialog(This_Player,
   '���˹�Ĺ�н�������ս�������֡�\'
   +'������ֺ�������\ '
   +'��ֻҪ����������־�������\ \'
   +'|{cmd}<�ر�/@exit>              '
   );

end;

procedure _normal_Drug;
begin
   This_NPC.NpcDialog(This_Player,
   '���˹�Ĺ�н�������ս�������֡�\'
   +'������ֺ�������\ '
   +'��ֻҪ����������־�������\ \'
   +'|{cmd}<�ر�/@exit>              ^<��������ҽ��/@DoDrug>'
   );

end;

procedure _DoDrug;
begin
   IF This_Player.GetS(80,12) = 10 then
   begin 
   This_NPC.NpcDialog(This_Player,
   '�������������ϴ��ˣ�����һ���¶�����ͷ������ǳ�Σ�գ�\'
   +'�㻹�ǿ��ȥ�ɡ�\ \'
   +'|{cmd}<���㿴���������������ҽ��ҩ1��/@DoDrug_1>\'
   +'|{cmd}<Ŷ��������˼���ϴ���/@exit>\'
   );
   end else
   IF This_Player.GetS(80,12) = 11 then
   begin 
   This_NPC.NpcDialog(This_Player,
   '��ô������û��ȥ����������С���ܰ����ҵİ�������Ϊ�ܶ���\'
   +'һ�������ҽ��������������û�п����ˣ�����Щ��պö���\'
   +'ζҩ�������о�����ȥ������5����������\ \' 
   +'|{cmd}<���Ѵ����ˣ�����/@DoDrug_2>\'
   +'|{cmd}<Ŷ�������Ͼ�ȥ/@exit>\'
   );
   end else
   IF This_Player.GetS(80,12) = 12 then
   begin 
   This_NPC.NpcDialog(This_Player,
   'ҩ�Ѿ������ˣ�����������С��ɣ�������Ҫ��Ϣ�ˣ�����\'
   +'�����С���������лл��'+This_Player.Name+'��\ \'
   +'|{cmd}<�һ�����Լ���ģ��ټ�����ҽ/@DoDrug_3>\'
   );
   end else
   This_NPC.NpcDialog(This_Player,
   '�������������ϴ��ˣ�����һ���¶�����ͷ������ǳ�Σ�գ�\'
   +'�㻹�ǿ��ȥ�ɡ�\ \'
   +'|{cmd}<Ŷ��������˼���ϴ���/@exit>\'
   );
end;

procedure _DoDrug_1;
begin
   IF (This_Player.GetS(80,12) = 10) and (This_Player.GetBagItemCount('����ҽ��ҩ1') >= 1) then
   begin 
   This_Player.SetS(80,12,11);
   This_Player.Take('����ҽ��ҩ1',1); 
   This_NPC.NpcDialog(This_Player,
   '��ô������û��ȥ����������С���ܰ����ҵİ�������Ϊ�ܶ���\'
   +'һ�������ҽ��������������û�п����ˣ�����Щ��պö���\'
   +'ζҩ�������о�����ȥ������5����������\ \' 
   +'|{cmd}<���Ѵ����ˣ�����/@DoDrug_2>\'
   +'|{cmd}<Ŷ�������Ͼ�ȥ/@exit>\'
   );
   end else
   This_NPC.NpcDialog(This_Player,
   '��û�д�������ҽ��ҩ1�����ǲ���Ū���ˣ�\'
   +'�㻹�ǻ�ȥ�����Ұɡ�\ \'
   +'|{cmd}<�Ұ�ҩŪ���ˣ������������¿�ʼ��/@DoDrug_1_1>'
   );
end;

procedure _DoDrug_1_1;
begin
   IF (This_Player.GetS(80,12) = 10) then
   begin 
   This_Player.SetS(80,12,0);
   This_NPC.NpcDialog(This_Player,
   '�����Ѿ����ã���ǰ������ʡҩ�����¿�ʼ�����ˮ���ϰ壩��\'
   );
   end;
end;

procedure _DoDrug_2;
begin
   IF (This_Player.GetS(80,12) = 11) and (This_Player.GetBagItemCount('����') >= 5) then
   begin 
   This_Player.SetS(80,12,12);
   This_Player.Take('����',5); 
   This_NPC.NpcDialog(This_Player,
   'лл��'+This_Player.Name+'�����������Ѿ��㹻�ˡ�\'
   +'�ⶼ����Ĺ��͡�\'
   +'������Ҫ��ʼ��ҩ�ˣ�����Ϊ�����ɡ�\' 
   +'�ټ�\'
   );
   end else
   This_NPC.NpcDialog(This_Player,
   '���Ѳ������޷���ʼ��ҩ�ġ�\'
   );
end;

procedure _DoDrug_3;
begin
   IF (This_Player.GetS(80,12) = 12) and (This_Player.FreeBagNum > 0) then
   begin 
   This_Player.SetS(80,12,13);
   This_Player.Give('����ҽ��ҩ1',1); 
   This_Npc.CloseDialog(This_Player);
   end else
   This_NPC.NpcDialog(This_Player,
   '��İ���̫���ˡ�\'
   );
end;

procedure _QUEST;
begin
   This_NPC.NpcDialog(This_Player,
   '���ҵ�����? ����������˾Ϳ�����\'
   +'��֪��һ����Ѩ, �����˽������Ѩ��\'
   +'�����Ļ���\'
   +'����5000���, �Ҿ͸�����... \ \'
   +'|{cmd}<��/@Q315_1> \'
   +'|{cmd}<����/@Q315_2>  '
   );

end;

procedure _Q315_2;
begin
   This_NPC.NpcDialog(This_Player,
   '�㲻����?\'
   +'�ã���Ҳ���ɸ�����֮�����ܲ��ܽ������\'
   +'�ټ���...  \ \'  
   );
end;

procedure _Q315_1;
begin
   This_NPC.NpcDialog(This_Player,
   '��Ȼ��Ҫ���� \ '
   +'�Ǿͺú����ҽ���. \'
   +'�ҽ�������ط�֮�󣬷����кʹ�������һ���Ĺ���\'
   +'��Щ�����ǲ�������\'
   +'������һʱҲ�Ǵ��������������˰�.. \ \'
   +'|{cmd}<����/@Q315_1_1> \'
   +'|{cmd}<ȡ��/@exit>'
   );

end;

procedure _Q315_1_1;
begin
   This_NPC.NpcDialog(This_Player,
   '�ұ���Щ����׷���ţ������ҵ��ó�\'
   +'���Ǻ����Һܾ��ȵط���������һλ����\'
   +'�Ҹ���λ���˴�����ǲ�֪��ʲôԭ���������������Ű������ԭ��\'
   +'�Һܺ������������\'
   +'��������Ҫ��Ҫȥ�Ǹ��ط�����.. \ \'
   +'|{cmd}<����/@Q315_1_2> \'
   +'|{cmd}<ȡ��/@exit>'
   );

end;

procedure _Q315_1_2;
begin
   This_NPC.NpcDialog(This_Player,
   '��Ҳ��ƾ��������ʢȥ�ҹ��Ǹ��ط�\'
   +'�������ǻ���·\'
   +'���Ǻ���֪���Ǹ��ط��������˽��İ������ԭ��\'
   +'ֻҪ֪�����ԭ��\'
   +'���벻��̫�ѵ�.. \ \'
   +'|{cmd}<����/@Q315_1_3> \'
   +'|{cmd}<ȡ��/@exit>'
   );

end;

procedure _Q315_1_3;
begin
   This_NPC.NpcDialog(This_Player,
   '�Ҽ�����������֣����ֵ����Ӻ���������ʿ\'
   +'�Һ�������ִ��һ�̣��������˵����ң�\'
   +'���Ǹ�����ȴһ�����鶼û��. \'
   +'�ҾͿ�ʼ�ܿ���Щ���������������Ů��\'
   +'�㲻���ú��������治������λŮ������ô���Ǹ��ط���.. \'
   +'�ҳ�������λŮ���ǲ������ָ���.. \ \'
   +'|{cmd}<����/@Q315_1_4> \'
   +'|{cmd}<ȡ��/@exit>'
   );

end;

procedure _Q315_1_4;
begin
   This_NPC.NpcDialog(This_Player,
   '�Һ���λ����Ů�Ӵ..\'
   +'���������ۺ�����Ķ���, ��Ϊ������Ķ�����\'
   +'�����ֺ���������Ҽǵú����.. \'
   +'����ҵ����ڻ��ǵ�\'
   +'�ҿ��Դ���ȥ����Ҫȥ��? \ \'
   +'|{cmd}<�˽�/@price>������Ʒ����ͼ�Ǯ \'
   +'|{cmd}<ȥѰ��/@Q315_1_4_1> \'
   +'|{cmd}<ȡ��/@exit>'
   );

end;

procedure _price;
begin
   This_NPC.NpcDialog(This_Player,
   '��λŮ�ӳ��۵���Ʒ�� ���������ߣ�ħ��. \'
   +'���� : ���� 1 + ����18���ϵĽ�� 5 \'
   +'���� : ���� 1 + ����18���ϵĽ��  4 \'
   +'ħ�� : ���� 1 + ����18���ϵĽ�� 3 \'
   +'ף���� : ��� 50�� + ̫��ˮ(��) 5 \'
   +'���ϲ���׼����֮��ȥ����λŮ��\'
   +'��Ȼ������λŮ��֮��Ҳ����������Ʒ. \ \'
   +'|{cmd}<����/@price1>'
   );

end;

procedure _price1;
begin
   This_NPC.NpcDialog(This_Player,
   '���������ߣ�ħ��ÿ��ֻ����һ��\'
   +'��һ��һ��Ҫ��ס... \ '
   +'���ˣ������ȥ�Ǹ��ط���? \ \'
   +'|{cmd}<ȥ/@Q315_1_4_1> \'
   +'|{cmd}<ȡ��/@exit>'
   );

end;

procedure _Q315_1_4_1();
begin
    if This_Player.GetV(11,1) = 13 then
    This_Player.FlyTo('Q011',13,13);
end;

procedure _Q316;
begin
   This_NPC.NpcDialog(This_Player,
   '�Ҳ���������������Ǹ��ط���? \'
   +'�Ҳ����ظ�������ͬ�������.. \'
   +'�������������� \'
   +'��Ҳ�����ڰ�������Ǹ��ط���.. \ \'
   +'|{cmd}<ȡ��/@exit>'
   );

end;

procedure domain;
begin
    if This_Player.GetS(80,12) = 10 then
    _normal_Drug
    else 
    if (This_Player.GetS(80,12) = 11) or (This_Player.GetS(80,12) = 12) then
    _DoDrug
    else
    if This_Player.GetV(11,1) = 13 then 
    _QUEST
    else
    _normal;
end;

begin
    domain; 
end.