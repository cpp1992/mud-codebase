{ 
/************************************************************************}

program mir2;

{$I common.pas}

Procedure _doexit;
Begin
   This_Npc.CloseDialog(This_Player);
end;

procedure domain;
begin
  if This_Player.GetS(17,1) = 100 then
  begin
    This_Npc.NpcDialog(This_Player,
    '���Ѿ��ش���ҹ����״�������ˣ������ٻش�һ�ΰ���\ \'
    +'|{cmd}<�ǵģ�����ش�һ��/@xzchuti>       ^<�������˰�/@doexit>\'
    );
  end
  else
  begin
    This_Npc.NpcDialog(This_Player,
    '��ã�����ʢ���״𿼹٣��������˽�ʢ���״�Ĺ���֮��\'
    +'���ش�������������⡣ȫ����ԣ�����Ӯ�ý���Ŷ��\'
    +'����Բ鿴(http://eda.sdo.com/webchat/)�鿴ʲô��ʢ���״�\ \'
    +'|{cmd}<�õģ���Ҫ����/@xianzaidt>           ^<�����˽��°ɣ��´�����/@doexit>\'
    );
  end;
end;

procedure _xianzaidt;
begin
  if This_Player.GetS(17,1) = 100 then
  exit;  
  else if This_Player.GetS(17,1) = 1 then
  begin
    This_Npc.NpcDialog(This_Player,
    'ʢ���״���ʲô�ã�\ \'
    +'1��<����������Ϸ����ʱ���ҿ���ʹ���״�ƽ̨�������ʣ�/@youshayong>\'
    +'|{cmd}<�Ե�Ƭ�̺󣬱��пɰ����״��Ա����ҵ����⣡/@youshayong>\ \'
    +'2��<ʢ���״���ý�岥����/@wrong_01>\ \' 
    +'3��<ʢ���״���������������/@wrong_01>'
    );
  end
  else
  begin
    This_Npc.NpcDialog(This_Player,
    'ʢ���״���ʲô����֪���𣿺Ǻǣ�һ������Ǹ����֣�\'
    +'�����ɣ�����ұߵ�ȦȦ�����ҵ���ʢ���״�ͼ����������Ұɡ�\ \'
    +'1��<�õģ������ȥ�����ʢ���״�/@qudatixz>\ \'
    +'2��<���Ҳ���ͼ��/@cantfd>\'
    );
  end;
end;

procedure _cantfd;
begin
  This_Npc.NpcDialog(This_Player,
  '��Ļ���·�д�š�ȦȦ�������ĳ����ΰ�ť��������Ҫ�ҵ�ͼ�ꡣ\'
  +'������Դ��������ȦȦ��û��ʢ���״�ͼ�ꡰʢ���״𡱣�\'
  +'����ͨ�������+������������ҵ����ͼ�����Ӽ��ɡ�(���\'
  +'�㻹�ǲ��˽⣬�����Ե�¼��ʢ���״����ҳeda.sdo.com�鿴\'
  +'��ϸ�Ľ����ޡ�)\ \'
  +'|{cmd}<лл�����ʾ�������ȥ���½���/@doexit>\'
  );
end;

procedure _qudatixz;
begin
  if This_Player.GetS(17,1) = 100 then
  exit;  
  else if This_Player.GetS(17,1) = 1 then
  begin
    This_Npc.NpcDialog(This_Player,
    '�������Ѿ��ҵ���ʢ���״��ˣ�������������ҵ����ʰɣ�\ \'
    +'1��<���������/@xzchuti>\ \'
    +'2��<�һ�����ȥ�˽�һ�¡�ʢ���״�/@doexit>\'
    );
  end
  else
  begin
    This_Npc.NpcDialog(This_Player,
    '�������Ѿ��ҵ���ʢ���״��ˣ�������������ҵ����ʰɣ�\ \'
    +'1��<���������/@xzchuti>\ \'
    +'2��<�һ�����ȥ�˽�һ�¡�ʢ���״�/@doexit>\'
    );
    This_Player.SetS(17,1,1);
  end;
end;

procedure _xzchuti;
begin
  if This_Player.Level >= 10 then
  begin
    This_Npc.NpcDialog(This_Player,
    'ʢ���״���ʲô�ã�\ \'
    +'1��<����������Ϸ����ʱ���ҿ���ʹ���״�ƽ̨�������ʣ�/@youshayong>\'
    +'|{cmd}<�Ե�Ƭ�̺󣬱��пɰ����״��Ա����ҵ����⣡/@youshayong>\ \'
    +'2��<ʢ���״���ý�岥����/@wrong_01>\ \' 
    +'3��<ʢ���״���������������/@wrong_01>'
    );
  end
  else
  begin
    This_Npc.NpcDialog(This_Player,
    '��ĵȼ���δ�ﵽ10�����ϣ�������ȥ�귨��½����һ���������Ұɣ�\'
    +'�����������У����κ����ʣ�������ͨ���״�Ѱ�ҽ��\' 
    );
  end; 
end;

procedure _youshayong;
begin
  This_Npc.NpcDialog(This_Player,
  '�״��Ա�Ӻζ�����\ \'
  +'1��<�״��Ա��ʢ������Ա��/@wrong_02>\ \'
  +'2��<�״��Ա������Ϸ�е����/@congnalai>'
  );
end;

procedure _congnalai;
begin
  This_Npc.NpcDialog(This_Player,
  'ʹ��ʢ���״���Ҫע��ʲô��\ \'
  +'1��<�����κ����ⶼ�����״��Ա���ʣ������ҵĸ�����Ϣ��/@wrong_03>\'
  +'|{cmd}<�����ʺš����롢ע�����ϵȡ�/@wrong_03>\ \'
  +'2��<�״��Աȫ��������Ϸ�е�������룬������������ʵ�ʱ��/@caibutoul>\'
  +'|{cmd}<����͸¶�ҵĸ�����Ϣ�������ʺš����롢ע�����ϵȡ�/@caibutoul>'
  );
end;

procedure _caibutoul;
begin
  if This_Player.Level >= 10 then
  begin
    if This_Player.getS(17,1) = 100 then
    begin
      This_Npc.NpcDialog(This_Player,
      '�ܲ����������Ѿ������˽��ˡ�ʢ���״𡱡����������Ϸ��\'
      +'�����κ����⣬����Ҫ���ˣ���ʢ���״���԰ﵽ�㣬�����\'
      +'���״��Ա�������ʣ�ף���ڴ�������ÿ��ġ�\ \'
      +'|{cmd}<�õģ�лл��/@doexit>\'
      );
    end
    else
    begin
      This_Npc.NpcDialog(This_Player,
      '�ܲ����������Ѿ������˽��ˡ�ʢ���״𡱡����������Ϸ��\'
      +'�����κ����⣬����Ҫ���ˣ���ʢ���״���԰ﵽ�㣬�����\'
      +'���״��Ա�������ʣ�ף���ڴ�������ÿ��ġ�\ \'
      +'|{cmd}<�õģ�лл��/@doexit>\'
      );
      This_Player.Give('����',20000);
      This_Player.SetS(17,1,100);
    end;
  end
  else
  begin
    This_Npc.NpcDialog(This_Player,
    '��ĵȼ���δ�ﵽ10�����ϣ�������ȥ�귨��½����һ���������Ұɣ�\'
    +'�����������У����κ����ʣ�������ͨ���״�Ѱ�ҽ��\' 
    );
  end;
end;

procedure _wrong_01;
begin
  This_Npc.NpcDialog(This_Player,
  '���������ˣ��ٸ���һ�λ���ɡ�\'
  +'ʢ���״���ʲô�ã�\ \'
  +'1��<����������Ϸ����ʱ���ҿ���ʹ���״�ƽ̨�������ʣ�/@youshayong>\'
  +'|{cmd}<�Ե�Ƭ�̺󣬱��пɰ����״��Ա����ҵ����⣡/@youshayong>\ \'
  +'2��<ʢ���״���ý�岥����/@wrong_01>\ \' 
  +'3��<ʢ���״���������������/@wrong_01>'
  );
end;

procedure _wrong_02;
begin
  This_Npc.NpcDialog(This_Player,
  '���������ˣ��ٸ���һ�λ���ɡ�\'
  +'�״��Ա�Ӻζ�����\ \'
  +'1��<�״��Ա��ʢ������Ա��/@wrong_02>\ \'
  +'2��<�״��Ա������Ϸ�е����/@congnalai>'
  );
end;

procedure _wrong_03;
begin
  This_Npc.NpcDialog(This_Player,
  '���������ˣ��ٸ���һ�λ���ɡ�\'
  +'ʹ��ʢ���״���Ҫע��ʲô��\ \'
  +'1��<�����κ����ⶼ�����״��Ա���ʣ������ҵĸ�����Ϣ��/@wrong_03>\'
  +'|{cmd}<�����ʺš����롢ע�����ϵȡ�/@wrong_03>\ \'
  +'2��<�״��Աȫ��������Ϸ�е�������룬������������ʵ�ʱ��/@caibutoul>\'
  +'|{cmd}<����͸¶�ҵĸ�����Ϣ�������ʺš����롢ע�����ϵȡ�/@caibutoul>'
  );
end;

begin
  domain;
end.
 