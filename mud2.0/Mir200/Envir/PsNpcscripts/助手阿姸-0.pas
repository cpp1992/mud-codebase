{********************************************************************

*******************************************************************}

procedure _DoExit;
begin
  This_Npc.CloseDialog(This_Player);
end;

procedure _Exit;
begin
  This_Npc.CloseDialog(This_Player);
end;

procedure domain;
var str : string;
begin
    if (This_Player.Level < 11) and (This_Player.GetV(11,7) <= 0) then
    str := '|{cmd}<��������/@new01>\'
    else
    str := '';

    This_NPC.NpcDialog(This_Player,
     'ʮ�����ˣ�û�뵽�������ٻᡣ�����ҿ���귨ͨʷ��\'
    +'����Ϊ�˰������ǵ�æ�����ʱ����Ǩ����û���ҵ�����֮���ˣ�\'
    +'���е����갡~\ \'
    +str
   );
end;


procedure _new01;
begin
   This_NPC.NpcDialog(This_Player,
   '��ô���ѧ����?\'
   +'�������㼸������\'
   +'����㶼��ԵĻ�\'
   +'�һ����һ�������\'
   +'������ȥ�Ҵ��������\'
   +'�������һ�ݹ�����\'
   +'|{cmd}<�ʰ�/@quest11>\'
   +'|{cmd}<û��Ȥ/@exit>'
   );

end;

procedure _quest11;
begin
   This_NPC.NpcDialog(This_Player,
   '��,�ҿ�ʼ����,������𰸰�!\'
   +'��һ��:\'
   +'�򿪰����Ŀ�ݼ���ʲô?\\'
   +'|{cmd}<F9/@quest2>\'
   +'|{cmd}<F10/@wrong>\'
   +'|{cmd}<F11/@wrong>\'
   +'|{cmd}<F12/wrong>'
   );

end;

procedure _wrong;
begin
   This_NPC.NpcDialog(This_Player,
   '�ܱ�Ǹ,��ش����\'
   +'�㻹��Ҫ����ѧϰ\'
   +'�����������½������ȥ\'
   +'|{cmd}<����һ��/@quest11>\'
   +'|{cmd}<�õ�/@exit>'
   
   );

end;

procedure _quest2;
begin
   This_NPC.NpcDialog(This_Player,
   '����,�����ڶ���:\'
   +'������ʽһ���ж�����?\\'
   +'|{cmd}<3��/@wrong>\'
   +'|{cmd}<4��/@wrong>\'
   +'|{cmd}<5��/@quest3>\'
   +'|{cmd}<6��/@wrong>'
   );

end;

procedure _quest3;
begin
   This_NPC.NpcDialog(This_Player,
   '�����,���������ÿ�ֹ���ģʽ���÷���?\'
   +'����������:\'
   +'��ͬһ������������˵����������ʲô?\\'
   +'|{cmd}<!/@wrong>\'
   +'|{cmd}<!!/@quest4>\'
   +'|{cmd}<!~/@wrong>'
   );

end;

procedure _quest4;
begin
   This_NPC.NpcDialog(This_Player,
   '��������������һ��\'
   +'��β鿴���˵�װ��?\\'
   +'|{cmd}<ctrl+���/@wrong>\'
   +'|{cmd}<alt+���/@wrong>\'
   +'|{cmd}<ctrl+�Ҽ�/@quest5>\'
   +'|{cmd}<alt+�Ҽ�/@wrong>'
   
   );

end;

procedure _quest5;
begin
   This_NPC.NpcDialog(This_Player,
   '�ڴӶ���ʬ������ȡ��Ʒ��ʱ��\'
   +'��õķ�����ʲô?\\'
   
   +'|{cmd}<���˫��ʬ��/@wrong>\'
   +'|{cmd}<��סctrl+������/@wrong>\'
   +'|{cmd}<ctrl�����ͬʱ��ס/@wrong>\'
   +'|{cmd}<alt�����ͬʱ��ס/@right1>'
   );

end;

procedure _right1;
begin
    if This_Player.GetV(11,7) <= 0 then
    begin
        if This_Player.FreeBagNum > 0 then
        begin
           This_Player.Give('������',1);
           This_Player.SetV(11,7,1);
           This_NPC.NpcDialog(This_Player,
           '��Ȼ���Ѿ�֪�������������������\'
           +'���Ҿ͸���һ������Ű�\'
           +'������ȥ�����Ǵ��������\'
           +'���ͻ��������һ������ô��\\'
           +'|{cmd}<ȷ��/@exit>\'
           +'|{cmd}<��ѧһ��/@main>'
           );
        end else
        This_NPC.NpcDialog(This_Player,
       '��İ���̫���ˣ�'
       );
    end else
    This_NPC.NpcDialog(This_Player,
       '�����ҵ���ȥ�Ҵ��������\'
       +'�������һ���ô���Ŷ!~\\'
       +'|{cmd}<ȷ��/@exit>\'
       +'|{cmd}<��ѧһ��/@main>'
       );
end;


procedure _Wear;
begin
   This_NPC.NpcDialog(This_Player,
   '����, ����㰴��F9(��������)��\'
   +'F10(״̬����) ���ھͻᱻ�򿪡�\'
   +'���·�����Ʒ�϶������״̬���ڣ�\'
   +'������Ӧ��λ�÷źã���Ϳ��Դ�������Щ��Ʒ�ˡ�\'
   +'������λ�� : �·�������  ����������, ���������Ͻ�\'
   +'���򣭷�����������, ���������������\'
   +'��ָ�������������\ \'
   +'|{cmd}<����/@Main>'
   
   
   );

end;

procedure _Move;
begin
   This_NPC.NpcDialog(This_Player,
   '������    ��Ϊ�������ж����ƶ����������ƶ���Ʒ��\'
   +'|����Ҽ�    ���������ط����ס�Ҽ��Ļ�,\'
   +'           ����Գ��Ǹ������ܶ�����Ŷ��\        '
   +'|Shift+���  ǿ�й���.\ '
   +'|{cmd}<����/@Main>��<����/@Move2>'
   );

end;

procedure _Move2;
begin
   This_NPC.NpcDialog(This_Player,
   'Ctrl+���   ����. \'
   +'|Ctrl+�Ҽ�   ���ܹ�����������ҵ���Ϣ, \'
   +'            �������ú� F10һ��. \'
   +'|Alt+���    �ռ���Ʒ <ȡ��/@Getitem>.\'
   +'|˫��        �����˫�������ڵ��ϵ���Ʒ����Ϳ��Լ�����. \'
   +'            �����˫���ڰ��������Ʒ���㽫ʹ����\'
   +'|{cmd}<����/@Move>'
   );

end;

procedure _Getitem;
begin
   This_NPC.NpcDialog(This_Player,
   '������Щ��ȥ�ļ�����¹���ǵȣ����\'
   +'�������ǵ�ʬ���ϵõ�һ��һ���������,\'
   +'��ʳ��ֲ���ϣ�����Եõ�һЩ����Ҫ����Ʒ\'
   +'����֩����˵������Եõ�֩��Ķ���.\ '
   +'����һЩ��Ĺ��Ҳ���Դ��������ϵõ�һЩ��Ʒ\\'
   +'|{cmd}<����/@Move>'
   );

end;

procedure _Fight;
begin
   This_NPC.NpcDialog(This_Player,
   '��������˵���㶼����������������й���.\ '
   +'����������㲻�ܽ��й���\ '
   +'��Ҳ���԰�סShift + �����ǿ�й���.\ '
   +'|{cmd}<����/@Main>'
   );

end;

procedure _Talk;
begin
   This_NPC.NpcDialog(This_Player,
   '/���� ���ܹ������ߵ���ҽ����޾������ƵĽ���.\'
   +'     �������촰�ڵ����֣����Զ���������ֵ���ҽ���\'
   +'|!    ���ܹ�Ⱥ����Ϣ(��Ϣ��ɫ�ǻ�ɫ�ģ�������19�������\'
   +'     ֻ����8���Ժ����ʹ��.\'
   +'|!!   �ܹ��������Ա������Ϣ.\'
   +'|!~   �������������ߵ��л��Ա������Ϣ����Ϣ����ɫ����ɫ��\ \'
   +'|{cmd}<����/@Main>,<����/@Talk2>'
   
   
   
   );

end;

procedure _Talk2;
begin
   This_NPC.NpcDialog(This_Player,
   '@�ܾ�˽��   �ܾ�������Ϣ. ����������ֻ��Ҫ��ʹ��һ��\'
   +'|@�ܾ�����  ���ԶԾ����ĳ�˽������Σ�����������һ��\'
   +'|@�ܾ�����   �˹���ֻ�Ǿܾ�Ⱥ������Ϣ������������һ�� \'
   +'|@�˳�����   �����л�.\'
   +'|@��������   ��������лᡣ\'
   +'|@��������   �����л����ˡ�\'
   +'|�����      ʹ�����������Բ鿴��ȥ�����¼.\ \'
   +'|{cmd}<����/@Talk>'
   );

end;

procedure _Skill;
begin
   This_NPC.NpcDialog(This_Player,
   'ÿ��ְҵ��ʼ�ܹ�ѧϰ���ܵĵȼ�Ҫ����7��.\'
   +'|սʿ����ѧϰ<��������/@Onehand>, |��ʿ����ѧϰ<������/@Heal>\'
   +'|ħ��ʦ����ѧϰ<������/@Fireball>.\'
   +'|��Щ�鶼�����ڸ��ص�����򵽵�. \ '
   +'������ȼ��Ժ���һЩ����Ҳ�Ƿǳ���Ҫ�ģ�����Щ�����򲻵���\'
   +'��ֻ��ͨ���ͱ���ս�����ߺ�������ҽ������õ�����.\ \'
   +'|{cmd}<����/@Main>'
   );

end;

procedure _Onehand;
begin
   This_NPC.NpcDialog(This_Player,
   '��Ϊһ��սʿ�������ѧϰ�ڵȼ��ﵽ7���Ժ�������ѧϰ��\'
   +'����ļ��������ˣ�������ֻ���������ʹ���������Խ��Խ��\ \'
   +'|{cmd}<����/@Skill>'
   );

end;

procedure _Heal;
begin
   This_NPC.NpcDialog(This_Player,
   '��Ϊһ����ʿ�������ѧϰ�ڵȼ��ﵽ7���Ժ�������ѧϰ��\'
   +'����ļ��������ˣ����������������ʹ�����ܹ������ɵ�\'
   +'�������Լ���������.\ \'
   +'|{cmd}<����/@Skill>'
   );

end;

procedure _Fireball;
begin
   This_NPC.NpcDialog(This_Player,
   '��Ϊһ��ħ��ʦ�������ѧϰ�ڵȼ��ﵽ7���Ժ�������ѧϰ��\'
   +'����ļ��������ˣ�����Խ��Խ�߱�ɱ������.\ \'
   
   +'|{cmd}<����/@Skill>'
   
   );

end;

procedure _Hotkey;
begin
   This_NPC.NpcDialog(This_Player,
   'F1~F8    ���ܵĿ�ݼ�\'
   +'F9       ��������\'
   +'F10      ״̬����\'
   +'F11      ����״̬����\'
   +'Ctrl+H   �ı乥��ģʽ\'
   +'Ctrl+F   �ı����� \'
   +'Ctrl+A   <��������/@Slave> �ı����Ĺ���ģʽ\ \'
   +'|{cmd}<����/@Main>'
   );

end;

procedure _Slave;
begin
   This_NPC.NpcDialog(This_Player,
   '�����Ĺ������ָħ��ʦ���ߵ�ʿͨ��ħ�����ƵĹ��.\ \'
   +'|{cmd}<����/@Hotkey>'
   
   );

end;

//�ű�ִ�е����
begin
  domain;
end.