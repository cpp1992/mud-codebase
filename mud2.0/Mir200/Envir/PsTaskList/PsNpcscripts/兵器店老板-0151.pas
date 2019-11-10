{********************************************************************

*******************************************************************}

program mir2;

{$I common.pas}

procedure _DoExit;
begin
  This_Npc.CloseDialog(This_Player);
end;

procedure _Exit;
begin
  This_Npc.CloseDialog(This_Player);
end;

procedure domain;
begin
  This_Npc.NpcDialog(This_Player,
  'û��һ��������ˣ��˿ͣ������\�ҵ�����ʹ�Ҳ�����������Ʒ�ļ۸���Ҫ����ۣ�\ \'
  +'|{cmd}<��ʼ��������/@upgrade>\' 
  +'|{cmd}<������������/@getbackupgnow>\'
  +'|{cmd}<������ĸ�/@heardsing>\'
  +'|{cmd}<�˳�/@doexit>'
  );
end;

procedure _upgrade;
begin
  This_Npc.NpcDialog(This_Player,
  '��������Ҫ�������������\���ҿ���������������۸���10000��ң�\�������������Ҫԭ��<������ʯ/@Biron>��<��Ʒ/@Etc>��<����/@Weapon>\��<���/@Gold>����ȷ��Ҫ����\���ԭ�������ʹ������ڵ���Ʒ��\����ί�����������������ϵͳ��\ \'
  +'|{cmd}<ȷ������/@confirmupgrade>\'
  +'|{cmd}<ȡ��/@main>\'
  );
end;

procedure _Biron;
begin
  This_Npc.NpcDialog(This_Player,
  '������ڿ�ɽ��ɵ�������ʯ��\��������������̵õ�һ���õý����\������ø��Ҹ��ߴ��ȵĺ�����ʯ��\˳����ǵã��������ڼ����û���㹻��\���ĺ�ɫ����������Ŀ�ʯ�����ٸ�\�����Ľ��Ҳ���ܲ��á�\ \|{cmd}<����/@upgrade>'
  );
end;

procedure _Etc;
begin
  This_Npc.NpcDialog(This_Player,
  'װ��Ʒ������������\��������⼼������������װ��\���ʱ���ܹ���ǿ�������\�������Һ�ԭ�����ܸ���ý��\������������װ��Ʒ\�ǿ��ܻ�ʧ�ܣ��������кܺõ�����\ \|{cmd}<����/@upgrade>'
  );
end;

procedure _Weapon;
begin
  This_Npc.NpcDialog(This_Player,
  'ֻ�ܶ������������ƣ�û���Ե��������޷����ƣ�\�������Ҫ����������\�������Я��������...\ \|{cmd}<����/@upgrade>'
  );
end;

procedure _Gold;
begin
  This_Npc.NpcDialog(This_Player,
  '���������Ľ���̫��...\�������Ϊ�ҵļ����ļ�ֵ����ô�������ĳ̶ȣ�\����۸��Ҳ������������...\ \|{cmd}<����/@upgrade>'
  );
end;

procedure _confirmupgrade;
begin
  This_Npc.NpcDialog(This_Player,
  '���ҿ�����ҵ�ԭ��\�������'+This_Player.GetItemNameOnBody(1)+'���ҵ��������ã�\�������İ���ȡ�ø������Ʒ�ͺ�����ʯ��\���������Ҫ����Ʒ������Ĵ��ڲֿ���������\ \'
  +'|{cmd}<��������/@upgradenow>\'
  +'|{cmd}<�ڰ��ź��Ժ��ٻ���/@doexit>\'
  );
end;

procedure _upgradenow;
var
URet : integer; 
begin
   URet := This_Npc.ClickUpWeaponNow(This_Player);
   if URet = 0 then
   begin
      This_Npc.NpcDialog(This_Player, 
      '���ϲ������������������������û���Ե��� \' +
      '���´�����ʱ��׼�������еĿ�ʯ����������Ʒ�� \' +
      '��Ȼ���ҵĹ��������������...\ \' +
      '|{cmd}<����/@main>\');
   end else if URet = 1 then
   begin
      This_Npc.NpcDialog(This_Player, 
      '���ǹ����Ĺ�����һ����ֻ�ܽ���һ����Ŀ��\' +
      '���´����� ...\ \' +
      '|{cmd}<����/@main>');
   end else if URet = 2 then
   begin
      This_Npc.NpcDialog(This_Player, 
      '�һ����Ū�����µ�һ����������һ��Сʱ���ٻ�����\ \' +
      '|{cmd}<����/@main>\');
   end; 
end;

procedure _getbackupgnow;
var
nret : integer;
begin
  nret := This_Npc.ClickGetBackUpWeapon(This_Player);
  if nret = 2 then                  //�����ɹ� 
  begin
     This_Npc.NpcDialog(This_Player, 
     '�������ˣ��Ҿ������Ŭ�����������������' +
     '����Ƿ�<�ɹ�/@Success>��\' +
     'ֻ������ʹ�ù�һ�κ��֪������ȥ���԰ɡ�\ \' +
     '|{cmd}<�˳�/@doexit>\'); 
  end else if nret = -1 then       //�������� 
  begin
     This_Npc.NpcDialog(This_Player, 
     '��İ����������������֮�������ɡ�');
  end else if nret = 1 then        //����ʱ��δ�� 
  begin
     This_Npc.NpcDialog(This_Player, 
     '���������æ���أ����Ե�Ƭ��...\ \' +
     '|{cmd}<����/@main>\');
  end else if nret = 0 then        //û��������Ʒ 
  begin
     This_Npc.NpcDialog(This_Player, 
     '��ǰ���ǲ��ǼĴ��˺ܶණ����\' +
     '�����������Ϊ��ȡ�����\' +
     '��ǰ�Ĵ����������Ʒ�����㻹�ǻ�ȥ�ɣ�\' +
     '�ҿɼǲ������ˣ���Ҳ��ȥ̫��ʱ���ˡ���\ \' +
     '|{cmd}<����/@main>\');
  end;
end;

procedure _Success;
begin
  This_Npc.NpcDialog(This_Player,
  'ͨ��ʹ�������������ᵽ�������ĺô���\�������ս��������������һ��ǹ���...\�㶼�ᷢ������ɹ�...\ \|{cmd}<�˳�/@exit>\'
  );
end;

procedure _heardsing;
begin
  This_Npc.NpcDialog(This_Player,
  '��������3������һ��ٿ���һ��...\'
  +'|{cmd}<֧��3����/@paythree>\'
  +'|{cmd}<�˳�/@main>\'
  );
end;

procedure _paythree;
begin
  This_Npc.NpcDialog(This_Player,
  '��֪�����Ӳ�...\ \|{cmd}<�˳�/@doexit>\'
  );
end;



//��ʼ������
procedure OnInitialize;
begin
  This_Npc.AddStdMode(5);
  This_Npc.AddStdMode(6);
  This_Npc.SetRebate(100);
end;

//�ű�ִ�е����
begin
  domain;
end.