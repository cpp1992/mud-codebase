{********************************************************************

*******************************************************************}

program Mir2;

{$I common.pas}

procedure _DoExit;
begin
  This_Npc.CloseDialog(This_Player);
end;

procedure _Exit;
begin
  This_Npc.CloseDialog(This_Player);
end;

procedure _ruhejh;
begin
   This_Npc.NpcDialog(This_Player,
   '�������Ů�ԣ���ô����Ȩ��������߾ܾ��Է�����飬\��������룺@������� ����Ϳ��Խ������Ե�����ˣ�\��������룺@�ܾ���� ���㽫�ܾ��������Զ������飬\ָ��ֻ������һ�ξͿ�������Ч��\ \|{cmd}<����/@main>'
   );
end;

procedure domain;
begin
   This_Npc.NpcDialog(This_Player,
   '������ʲô��\ \' 
   +'|{cmd}<��ν��/@ruhejh>\'
   +'|{cmd}<���/@jiehun>\'
   +'|{cmd}<���/@lihun>\'
   +'|{cmd}<������Ϣ/@xiaoxi>\'
   +'|{cmd}<�뿪/@doexit>'
   );
end;


procedure _jiehun;
begin
  This_Npc.NpcDialog(This_Player,
  '����߱�����������ӵ������ָ������ֵ��5������\���������������Է�������Ե�����߲�ͬ����飬\��ָ���ߺ���ò���ȥ�ˡ�\��׼�����������\'
  +'|{cmd}<׼������/@DoMarry>\'
  +'|{cmd}<û��/@doexit>���´�����\'
  +'|{cmd}<����/@main>'
  );
end;

procedure _DoMarry;
begin
  This_Npc.InputDialog(This_Player, '����Ҫ���������', 0, 202);
end;

procedure p202;
begin
  if This_Npc.InputOK then
  begin
    This_Npc.RequestMarry(This_Player, This_Npc.InputStr);
  end;
end;

procedure _agreemarry;
begin
  This_Player.AgreeMarry(This_Npc);
end;

procedure _dismarry;
begin
  This_Player.DisAgreeMarry;
  This_Npc.CloseDialog(This_Player);
end;

procedure _npclihun;
begin
  This_Player.NpcDivMarry(This_Npc);
end;

procedure _lihun;
begin
  This_Npc.NpcDialog(This_Player,
  '��Ҫ���Ļ�����֧��100���ң�\��ȷ��Ҫ�����\ \'
  +'|{cmd}<ȷ��/@npclihun>\'
  +'|{cmd}<����/@doexit>\'
  +'|{cmd}<����/@main>\'
  );
end;

procedure _xiaoxi;
begin
  This_Npc.NpcDialog(This_Player,
  'ǰ�����Ҳ�С�İ�һö��ָ���������ˣ�\���ܰ����һ�����\ \|{cmd}<ȷ��/@doexit>'
  );
end;

begin
  domain;
end.