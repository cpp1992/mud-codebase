
program mir2;

{$I common.pas}

procedure _DoExit;
begin
  This_Npc.CloseDialog(This_Player);
end;

procedure domain;
begin
   {$IFDEF Q136_hero}
   This_Npc.NpcDialog(This_Player,
      '��л��������Щ����������\ \'
      +'|{cmd}<����/@buy>  \'
      +'|{cmd}<����/@sell>   \'
      +'|{cmd}<ѯ�ʸ����似��ϸ��/@helpbooks> \ \'
      );
   {$ELSE}
   if This_Player.Level >= 40 then
   begin
      This_Npc.NpcDialog(This_Player,
      '��л��������Щ����������\ \'
      +'|{cmd}<����/@buy>  \'
      +'|{cmd}<����/@sell>  ' + addSpace('', 24) //+ '|{cmd}<������������/@drink>\'
      +'|{cmd}<ѯ�ʸ����似��ϸ��/@helpbooks> \ \'
    +'|{cmd}<�й�Ӣ��ʥˮ/@shengshui>             ^<������һ�/@changebook>\'
      );
   end
   else
   begin
      This_Npc.NpcDialog(This_Player,
      '��л��������Щ����������\ \'
      +'|{cmd}<����/@buy>  \'
      +'|{cmd}<����/@sell>   \'
      +'|{cmd}<ѯ�ʸ����似��ϸ��/@helpbooks> \ \'
    +'|{cmd}<�й�Ӣ��ʥˮ/@shengshui>             ^<������һ�/@changebook>\'
      );
   end;
   {$ENDIF}
end;

Procedure _HeJiSLDu;
var
  ret : Integer;
begin
   {$IFDEF Q136_hero}
  exit;
  {$ELSE}
   ret := This_Player.ChkIfCanAddUSExp;
   if (ret = 0) then
   begin
      This_Npc.NpcDialog(This_Player,
      '�������������ϻ��Ĺ������������鷳��\'+
      '�������ܹ����������������ĺϻ������ȡ�\'+
      'ֻҪ�����1�������ʱ����Լ�5000��ŭ��ֵ��\'+
      '���ܹ�����Ϊ����������50��ϻ������ȣ���Σ�\ \'+
      '|{cmd}<����������ϻ�������/@TiHeJii>\ \'+
      '|{cmd}<����/@main>');
   end else if ret < 0 then
   begin
      case ret of
        -1:  This_NPC.NpcDialog(This_Player,
             '��û���г�Ӣ�ۣ����г��������ϻ������ȡ�');
             
        -2:  This_NPC.NpcDialog(This_Player,
             '����û��ϰ�úϻ����޷������ϻ������ȡ�');
             
        -3:  This_NPC.NpcDialog(This_Player,
             '��Ϊ����װ������֮�ģ������޷����������ϻ������ȡ�'); 
      end;
   end;
   {$ENDIF}
end;

Procedure _TiHeJii;
var
  ret : Integer;
  error: string; 
begin
  {$IFDEF Q136_hero}
  exit;
  {$ELSE}
   ret := This_Player.AddUSExp(1, 5000, 50);
   if ret >= 0 then
   begin
     This_Npc.NpcDialog(This_Player,
      '��ȷ��ʹ��1�������ʱ�����������5000ŭ��ֵ��\�����ϻ���������\ \'+
      '|{cmd}<��������������/@TiHeJii>\ \'+
      '|{cmd}<����/@main>');
   end else  
   begin
      case ret of
        -1: error := '��û���г�Ӣ�ۣ����г��������ϻ������ȡ�';
        -2: error := '����û��ϰ�úϻ����޷������ϻ������ȡ�';
        -3: error := '��Ϊ����װ������֮�ģ������޷����������ϻ������ȡ�';
        -4: error := '��û���㹻���������ʱ������޷����������ϻ������ȡ�';
        -5: error := '��û���㹻��ŭ��ֵ���޷����������ϻ������ȡ�';
        -6: error := '���ĺϻ��������ѵ��ﵱǰ�ϻ��ȼ������ޣ��޷�����������';
      end;
      error := error + '\|{cmd}<����/@HeJiSLDu>';
      This_NPC.NpcDialog(This_Player,error);
   end;
   {$ENDIF}
end;

Procedure _LianJJDu;
begin
   This_Npc.NpcDialog(This_Player,
   '�����������������Ĺ������������鷳��\'+
   '�������ܹ��������������������������ȡ�\'+
   'ֻҪ�����1�������ʱ�����\'+
   //'���ܹ�����Ϊ����������50�����������ȣ���Σ�\ \'+
   '���ܹ�����Ϊ������50�����������ȣ���Σ�\ \'+
   //'|{cmd}<�������������������/@TiWoDe>         ^<����ҵ���������������/@TiTaDe>\ \'+
   //'|{cmd}<�������������������/@TiWoDe>\ \'+
   '|{cmd}<����/@main>');
end;



Procedure _LJHeroSK(skillName: string);
begin
   This_NPC.NpcDialog(This_Player,
   '��ȷ��ʹ��1�������ʱ���\����������ʽ' + skillName + '50����������\ \'+
   '|{cmd}<ʹ���������������/@QDLJHeroSK~' + skillName + '>\ \'+
   '|{cmd}<����/@LianJJDu>'); 
end;

//���������� 
Procedure _TiWoDe;
var
  rLJTem : integer;
begin
   rLJTem := This_Player.Job;
   if rLJTem = 0 then
   begin
      This_Npc.NpcDialog(This_Player,
      '����ʹ���������ʱ��������ĸ�������ʽ�������ȣ�\ \'+
      '1���=50��������\ \'+
      '|{cmd}<����ɱ/@LJSkill~����ɱ>         ^<׷�Ĵ�/@LJSkill~׷�Ĵ�>         ^<����ն/@LJSkill~����ն>         ^<��ɨǧ��/@LJSkill~��ɨǧ��>\ \'+
      '|{cmd}<����/@LianJJDu>');
   end else if rLJTem = 1 then
   begin
      This_Npc.NpcDialog(This_Player,
      '����ʹ���������ʱ��������ĸ�������ʽ�������ȣ�\ \'+
      '1���=50��������\ \'+
      '|{cmd}<˫����/@LJSkill~˫����>         ^<�����/@LJSkill~�����>         ^<���ױ�/@LJSkill~���ױ�>         ^<����ѩ��/@LJSkill~����ѩ��>\ \'+
      '|{cmd}<����/@LianJJDu>');
   end else if rLJTem = 2 then
   begin
      This_Npc.NpcDialog(This_Player,
      '����ʹ���������ʱ��������ĸ�������ʽ�������ȣ�\ \'+
      '1���=50��������\ \'+
      '|{cmd}<��Х��/@LJSkill~��Х��>         ^<������/@LJSkill~������>         ^<������/@LJSkill~������>         ^<�򽣹���/@LJSkill~�򽣹���>\ \'+
      '|{cmd}<����/@LianJJDu>');
   end;
end;

Procedure _QDLJSkill(skillName: string);
begin       
   {$IFDEF Q135_neigong}
   exit;
   {$ELSE}
 {  if This_Player.MyLFnum < 1 then
   begin
      This_Npc.NpcDialog(This_Player,
      '��������������㣬�޷�����������ʽ�����ȡ���\ \'+
      '|<����/@main>');
   end else if This_Player.HaveStudySSKSkill(skillName, false) then
   begin                           
      if This_Player.AddSSKSkillExp(skillName, 50, false) then
      begin
         This_Player.DecLF(30002, 1, false);
         This_NPC.NpcDialog(This_Player,
         '��ȷ������ʹ��1�������ʱ���\����������ʽ' + skillName + '50����������\ \'+
         '|<����ʹ���������������/@QDLJSkill~' + skillName + '>\ \'+
         '|<����/@LianJJDu>');
      end else
         This_NPC.NpcDialog(This_Player,
         '�ü��ܵ��������������޷�����������');
   end    
   else
   begin
      This_NPC.NpcDialog(This_Player,
      '����û��ѧ��' + skillName + '���޷������ü��ܵ������ȡ�' );
   end; 
    }
   {$ENDIF}
end;

Procedure _LJSkill(skillName: string);
begin
   This_NPC.NpcDialog(This_Player,
   '��ȷ��ʹ��1�������ʱ�������������ʽ' + skillName + '50����������\ \'+
   '|{cmd}<ʹ���������������/@QDLJSkill~' + skillName + '>\ \'+
   '|{cmd}<����/@LianJJDu>'); 
end;

procedure _changebook;
begin
   This_Npc.NpcDialog(This_Player,
   '���������ʹ��������ӵ�е�һ����ս���ؼ���\�������ｻ������һ�������Ĺ�ս���ؼ���\����ʹ���ı��ż����ؼ������н����أ�\ \'
   +'|{cmd}<���ս���/@changebook1>             ^<��Ѫ��/@changebook2>             ^<���ǻ���/@changebook3>\ \'
   +'|{cmd}<����������/@changebook4>           ^<��������Ѫ��/@changebook5>       ^<�����Ż���/@changebook6>\ \');
end;

procedure _changebook1;
begin
  if This_Player.GetBagItemCount('���ս���') >= 1 then
  begin 
    This_Npc.NpcDialog(This_Player,
    '��������ս��������ı���ս���ؼ��أ�\ \'
    +'|{cmd}<��Ѫ��/@changebook1_1>             ^<���ǻ���/@changebook1_2>\ \'
    +'|{cmd}<����������/@changebook1_3>         ^<��������Ѫ��/@changebook1_4>       ^<�����Ż���/@changebook1_5>\ \'
    );
  end
  else
  begin
    This_Npc.NpcDialog(This_Player,
    '����������ս������͸Ͽ��ó����ɣ�\�ҿ��Ի���������ս���ؼ���');
  end;
end;

procedure _changebook2;
begin
  if This_Player.GetBagItemCount('��Ѫ��') >= 1 then
  begin 
    This_Npc.NpcDialog(This_Player,
    '�������Ѫ�������ı���ս���ؼ��أ�\ \'
    +'|{cmd}<���ս���/@changebook2_1>             ^<���ǻ���/@changebook2_2>\ \'
    +'|{cmd}<����������/@changebook2_3>           ^<��������Ѫ��/@changebook2_4>       ^<�����Ż���/@changebook2_5>\ \'
    );
  end
  else
  begin
    This_Npc.NpcDialog(This_Player,
    '���������Ѫ�����͸Ͽ��ó����ɣ�\�ҿ��Ի���������ս���ؼ���');
  end;
end;

procedure _changebook3;
begin
  if This_Player.GetBagItemCount('���ǻ���') >= 1 then
  begin 
    This_Npc.NpcDialog(This_Player,
    '��������ǻ��껻���ı���ս���ؼ��أ�\ \'
    +'|{cmd}<���ս���/@changebook3_1>             ^<��Ѫ��/@changebook3_2>\ \'
    +'|{cmd}<����������/@changebook3_3>           ^<��������Ѫ��/@changebook3_4>       ^<�����Ż���/@changebook3_5>\ \'
    );
  end
  else
  begin
    This_Npc.NpcDialog(This_Player,
    '����������ǻ��꣬�͸Ͽ��ó����ɣ�\�ҿ��Ի���������ս���ؼ���');
  end;
end;

procedure _changebook4;
begin
  if This_Player.GetBagItemCount('����������') >= 1 then
  begin 
    This_Npc.NpcDialog(This_Player,
    '����Ѱ��������ջ����ı���ս���ؼ��أ�\ \'
    +'|{cmd}<���ս���/@changebook4_1>             ^<��Ѫ��/@changebook4_2>             ^<���ǻ���/@changebook4_3>\ \'
    +'|{cmd}<��������Ѫ��/@changebook4_4>         ^<�����Ż���/@changebook4_5>\ \'
    );
  end
  else
  begin
    This_Npc.NpcDialog(This_Player,
    '������а��������գ��͸Ͽ��ó����ɣ�\�ҿ��Ի���������ս���ؼ���');
  end;
end;

procedure _changebook5;
begin
  if This_Player.GetBagItemCount('��������Ѫ��') >= 1 then
  begin 
    This_Npc.NpcDialog(This_Player,
    '����Ѱ�������Ѫ�������ı���ս���ؼ��أ�\ \'
    +'|{cmd}<���ս���/@changebook5_1>             ^<��Ѫ��/@changebook5_2>             ^<���ǻ���/@changebook5_3>\ \'
    +'|{cmd}<����������/@changebook5_4>           ^<�����Ż���/@changebook5_5>\ \'
    );
  end
  else
  begin
    This_Npc.NpcDialog(This_Player,
    '������а�������Ѫ�����͸Ͽ��ó����ɣ�\�ҿ��Ի���������ս���ؼ���');
  end;
end;

procedure _changebook6;
begin
  if This_Player.GetBagItemCount('�����Ż���') >= 1 then
  begin 
    This_Npc.NpcDialog(This_Player,
    '����Ѱ����Ż��껻���ı���ս���ؼ��أ�\ \'
    +'|{cmd}<���ս���/@changebook6_1>             ^<��Ѫ��/@changebook6_2>             ^<���ǻ���/@changebook6_3>\ \'
    +'|{cmd}<����������/@changebook6_4>           ^<��������Ѫ��/@changebook6_5>\ \'
    );
  end
  else
  begin
    This_Npc.NpcDialog(This_Player,
    '������а����Ż��꣬�͸Ͽ��ó����ɣ�\�ҿ��Ի���������ս���ؼ���');
  end;
end;

procedure ExchangeBook(item_src: string; item_des: string);
begin
  if This_Player.GetBagItemCount(item_src) >= 1 then
  begin
    This_Player.Take(item_src,1);
    This_Player.BindGive(item_des,1);
    This_Npc.NpcDialog(This_Player,
    '�������Ѿ�������İ������Ͽ�򿪿����ɣ�');
  end
  else
  begin
    This_Npc.NpcDialog(This_Player,
    '��������������˵�ļ����飬�͸Ͽ콻���Ұɣ�');
  end;
end;

procedure _changebook1_1;
begin
  ExchangeBook('���ս���','��Ѫ��');
end;

procedure _changebook1_2;
begin
  ExchangeBook('���ս���','���ǻ���');
end;

procedure _changebook1_3;
begin
  ExchangeBook('���ս���','����������');
end;

procedure _changebook1_4;
begin
  ExchangeBook('���ս���','��������Ѫ��');
end; 

procedure _changebook1_5;
begin
  ExchangeBook('���ս���','�����Ż���');
end;

procedure _changebook2_1;
begin
  ExchangeBook('��Ѫ��','���ս���');
end;

procedure _changebook2_2;
begin
  ExchangeBook('��Ѫ��','���ǻ���');
end;

procedure _changebook2_3;
begin
  ExchangeBook('��Ѫ��','����������');
end;

procedure _changebook2_4;
begin
  ExchangeBook('��Ѫ��','��������Ѫ��');
end; 

procedure _changebook2_5;
begin
  ExchangeBook('��Ѫ��','�����Ż���');
end;

procedure _changebook3_1;
begin
  ExchangeBook('���ǻ���','���ս���');
end;

procedure _changebook3_2;
begin
  ExchangeBook('���ǻ���','��Ѫ��');
end;

procedure _changebook3_3;
begin
  ExchangeBook('���ǻ���','����������');
end;

procedure _changebook3_4;
begin
  ExchangeBook('���ǻ���','��������Ѫ��');
end; 

procedure _changebook3_5;
begin
  ExchangeBook('���ǻ���','�����Ż���');
end;

procedure _changebook4_1;
begin
  ExchangeBook('����������','���ս���');
end;

procedure _changebook4_2;
begin
  ExchangeBook('����������','��Ѫ��');
end;

procedure _changebook4_3;
begin
  ExchangeBook('����������','���ǻ���');
end;

procedure _changebook4_4;
begin
  ExchangeBook('����������','��������Ѫ��');
end; 

procedure _changebook4_5;
begin
  ExchangeBook('����������','�����Ż���');
end;

procedure _changebook5_1;
begin
  ExchangeBook('��������Ѫ��','���ս���');
end;

procedure _changebook5_2;
begin
  ExchangeBook('��������Ѫ��','��Ѫ��');
end;

procedure _changebook5_3;
begin
  ExchangeBook('��������Ѫ��','���ǻ���');
end;

procedure _changebook5_4;
begin
  ExchangeBook('��������Ѫ��','����������');
end; 

procedure _changebook5_5;
begin
  ExchangeBook('��������Ѫ��','�����Ż���');
end;

procedure _changebook6_1;
begin
  ExchangeBook('�����Ż���','���ս���');
end;

procedure _changebook6_2;
begin
  ExchangeBook('�����Ż���','��Ѫ��');
end;

procedure _changebook6_3;
begin
  ExchangeBook('�����Ż���','���ǻ���');
end;

procedure _changebook6_4;
begin
  ExchangeBook('�����Ż���','����������');
end; 

procedure _changebook6_5;
begin
  ExchangeBook('�����Ż���','��������Ѫ��');
end;

procedure _lookfor1;
begin
   This_Npc.NpcDialog(This_Player,
   '�����뽱���ϱ���Щ����Ϊ�귨�����Ĺ��ס�\'+
   '���ϱ���Ը����ܣ���Ը���æ�ռ���ҵ�ǩ����\'+
   '���˴�ҵ�ǩ�֣��ϱ��Ϳ��԰������ܹ����Ľ�����\ \'+
   '|{cmd}<�õģ������ȥ�����������ȥ��˭��/@lookfor>\'+
   '|{cmd}<�Ҳ���ǩ�������ˣ��Ҳ�����/@restart>\');
end;

Procedure _restart;
begin
   This_Npc.NpcDialog(This_Player,
   '�����ˣ�������ʼ���ղ��ܻ��������\'+
   '��������ȷ��Ҫ������\ \'+
   '|{cmd}<�ǵ�/@restart1>                   ^<����/@main>');  
end;

Procedure _restart1;
Var 
i : integer;
begin
   This_Player.Take('�귨��֤',1);
   for i := 1 to 21 do
   begin      
      This_Player.SetV(13,i,0);
   end;
   This_Npc.NpcDialog(This_Player,
   '���Ѿ�������һ�����귨�����л��Ļ��ᣡ\'+
   '�������ͨ�ˣ������ٻ������ң�');  
end;

Procedure FindPeople;
var
r : integer;
begin
   r := random(3);
   if r = 2 then
   begin
      This_Npc.NpcDialog(This_Player,
      '�����귨��֤����ȥ��һ�°�����<����>��\'+
      '�����ڰ����ţ�ͨ���������м�Ŀյ���ɹ̫����\');
      This_Player.SetV(13,1,1);
      This_Player.Give('�귨��֤',1);
   end else if r = 1 then
   begin
      This_Npc.NpcDialog(This_Player,
      '�����귨��֤����ȥ��һ��<�߽��С���ϰ�>��\'+
      '�����Ҷ�˵�ˣ��߽����Ӧ��֪�����Ķ��ɡ�\');
      This_Player.SetV(13,1,2);
      This_Player.Give('�귨��֤',1);
   end else if r = 0 then
   begin
      This_Npc.NpcDialog(This_Player,
      '�������귨��֤��ȥ��һ�±���<�����ϱ�>��\'+
      '��֪�������Ķ���\'+ 
      '�ڱ��潼�����Ϸ���һ��Сľ���ǣ������ҵ�����\');
      This_Player.SetV(13,1,3);
      This_Player.Give('�귨��֤',1);
   end;
end;


procedure _lookfor;
begin
   if (This_Player.GetV(13,1) = 12) or (This_Player.GetV(13,1) = 13) then
   begin
      This_Npc.NpcDialog(This_Player,
      '��������귨��֤��ȥ��һ��\'+
      '|{cmd}<����������ص��ϱ�>�����ǻ����Ӣ��ʥˮ�ģ�\ \'+
      '|{cmd}<�뿪/@doexit>');
   end else if (This_Player.GetV(13,1) = 4) or (This_Player.GetV(13,1) = 6) or (This_Player.GetV(13,1) = 8)  then
   begin
      This_Npc.NpcDialog(This_Player,
      '��������귨��֤��ȥ��һ��ɳ�Ϳ˵�<����>��\'+
      '�����Ҷ�˵�ˣ�ɳ�Ϳ���Ӧ��֪�����Ķ��ɣ�\ \'+
      '|{cmd}<�뿪/@doexit>');
   end else if (This_Player.GetV(13,1) = 5) or (This_Player.GetV(13,1) = 7) or (This_Player.GetV(13,1) = 9)  then
   begin
      This_Npc.NpcDialog(This_Player,
      '��������귨��֤��ȥ��һ�²��µ���<��編ʦ>��\'+ 
      '�����Ҷ�˵�ˣ����µ���Ӧ��֪�����Ķ��ɣ�\ \'+
      '|{cmd}<�뿪/@doexit>');
   end else if This_Player.GetV(13,1) = 1 then
   begin
      This_Npc.NpcDialog(This_Player,
      '�����귨��֤����ȥ��һ�°�����<����>��\'+
      '�����ڰ����ţ�ͨ���������м�Ŀյ���ɹ̫����\ \'+
      '|{cmd}<�뿪/@doexit>');
   end else if This_Player.GetV(13,1) = 2 then
   begin
      This_Npc.NpcDialog(This_Player,
      '�����귨��֤����ȥ��һ��<�߽��С���ϰ�>��\'+
      '�����Ҷ�˵�ˣ��߽����Ӧ��֪��������ɣ�\ \'+
      '|{cmd}<�뿪/@doexit>');
   end else if This_Player.GetV(13,1) = 3 then
   begin
      This_Npc.NpcDialog(This_Player,
      '��������귨��֤��ȥ��һ�±���<�����ϱ�>��\'+
      '��֪�������Ķ���\'+
      '�ڱ��潼�����Ϸ���һ��Сľ���ǣ������ҵ�����\ \'+
      '|{cmd}<�뿪/@doexit>');
   end else if (This_Player.GetV(13,2) >= 1) or (This_Player.GetV(13,6) >= 1) or (This_Player.GetV(13,10) >= 1) then
   begin
      This_Npc.NpcDialog(This_Player,
      '�Ҳ����Ѿ�������һ��<�귨��֤>����\'+ 
      '���ٺú����ң��ҵ��˿�ȥ����ǩ���ɡ�\ \'+
      '|{cmd}<�뿪/@doexit>');
   end else
   begin
      FindPeople;
   end;  
end;


//Ӣ��ʥˮ����ʼ�� 
Procedure _shengshui;
begin
   This_Npc.NpcDialog(This_Player,
   'Ӣ��ʥˮ�������˼��...��\ \'+
   '|{cmd}<��ȡ�귨��֤/@lookfor1>\'+
   '|{cmd}<ʹ��Ӣ��ʥˮ/@xiyangtear1>\');
end;

Procedure _xiyangtear1;
begin
   This_Npc.NpcDialog(This_Player,
   '��˵�ϱ���Щ�����ҩ���С�Ӣ��ʥˮ����\'+
   '������ǩ�����ġ��귨��֤�����ϱ�����������Щ��Ӣ��ʥˮ����\'+
   '��Ӣ��ʥˮ�ܹ������ļ��ܾ��飬���Ǻö���Ŷ��\'+
   'Ӣ��ʥˮ��Ȼ�ܺȣ�������㲻���ݳ޵�������ʰɣ�\'+
   '�������ң��һ������Ӣ��ʥˮ�����ļ��ܾ��顣\ \'+
   '|{cmd}<����Ӣ��ʥˮ�������������ܾ����/@xiyangtear>\'+
   '|{cmd}<����/@shengshui>');
end;
  
procedure _UgHeroSkill(idStr: string);
var
  //= (1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,35,36,37,39,43);           
  id : Integer;
begin
  {$IFDEF Q136_hero}
  exit;
  {$ELSE}
  if This_Player.HeroLevel = -1 then     //û�л���δ�ٻ������� 
  begin
     This_Npc.NpcDialog(This_Player,
     '��û�д���Ӣ�ۣ��������Ӽ��ܾ��飡');
  end else if This_Player.HeroLevel >= 0 then
  begin
     id := StrToIntDef(idStr, -1); 
     if (id >= 1) and ((id <= 33) or (id = 35) or (id =36) or (id = 37) or (id = 39) or (id = 43)) then
     begin
        if This_Player.GetBagItemCount('Ӣ��ʥˮ') >= 1 then
        begin
           This_Player.Take('Ӣ��ʥˮ',1); 
           This_Player.UpGradeHeroSkill(id, 100);
        end else
        begin
           This_Npc.NpcDialog(This_Player,
           '��û��Ӣ��ʥˮ����ô���������أ�');
        end;
     end else
     begin
        This_Npc.NpcDialog(This_Player,
        '����ʹ��Ӣ��ʥˮ�����ü��ܣ�');
     end;     
  end;
  {$ENDIF}
end;

Procedure _xiyangtear;
begin
  {$IFDEF Q136_hero}
  exit;
  {$ELSE}
   if This_Player.HaveValidHero then
   begin
      if This_Player.GetBagItemCount('Ӣ��ʥˮ') >= 1 then
      begin
         if This_Player.HeroLevel = -1 then
         begin
            This_Npc.NpcDialog(This_Player,
            '������ٻ�����Ĳ���ʹ��Ӣ��ʥˮ���Ӽ��ܾ��飡');
         end else if This_Player.HeroLevel >= 0 then
         begin
            This_NPC.NpcDialog(This_Player,
            '���ĵ�ǰ���Ի�ü��ܾ���ļ���Ϊ��\'+ 
            This_Player.GetHeroSkillStr);
         end;
      end else 
      begin
         This_Npc.NpcDialog(This_Player,
         '��û��Ӣ��ʥˮ����ô���������أ�');
      end;
   end else
   begin
      This_Npc.NpcDialog(This_Player,
      '��Ҫ�Ұ���Ӽ��ܾ��飬������أ�\'+
      '������İ���');
   end;
  {$ENDIF} 
end;

 
procedure _drink;
begin
  This_Npc.NpcDialog(This_Player,
  '����Ϊ�˵ֿ������˵����ԣ��귨�˴�ңԶ�Ķ���������һ����ʿ��\���Ƴ�һ�����⼼�ܣ��������⼼�ܵ��������������󽫻�������\�������һ�����Ե�����������������֮�����ڣ����������״̬\ʱ�ܹ���ǿ�������������ǿս������������ʷ�����ӣ��귨����\��������������ܵ��������ã��������ʿ�������������ҵĿ�\�飬�����ڿ�ʼ����2000����Ļ����Ϳ�����������ѧϰ������\������ġ��������塱��\'
  +'|{cmd}<�õģ������ھ�ȥ/@drinkskill>'+ addSpace('', 18) + '|{cmd}<���Ѿ������/@finishskill>\'
  +'|{cmd}<�����������/@jieshao>'+ addSpace('', 22) + '|{cmd}<�Һ�æ���´���˵�ɣ�/@doexit>'
  );
end;


{
    //��ʼѧϰ�������弼��
    //����ֵ��-1 ��ʾ ���Ｖ����40                                 @drinkskill_level
    //        -2 ��ʾ ���������Ѿ�ѧ��                               @drinkskill_finish
    //         0 ��ʾ �ɹ�ѧϰ��������                               @drinkskill_OK
    //        >0 ��ʾ ��ǰ�������弼���ۼƵľ���ֵ(ʹ��ʱ��Ҫ��1)    @drinkskill_accepted
    function StartWineExpQuest(Player: TPlayer): Integer;
}
Procedure _drinkskill;
var
S2 : integer;
S3 : string;
begin
   {$IFDEF Q136_hero}
  exit;
  {$ELSE}
 {  S2 :=  This_Npc.StartWineExpQuest(This_Player);
   if S2 = -1 then
   begin
      This_Npc.NpcDialog(This_Player,
      'ֻ����ļ���ﵽ40�����ſ�����ϰ���������塱��\'+
      '���ǵ��㵽��40���Ժ��������Ұɣ�');
   end else if S2 = -2 then
   begin
      This_Npc.NpcDialog(This_Player,
      '�ţ����Ѿ��ѡ��������塱�ľ��ϴ��ڸ����˰���');
   end else if S2 > 0 then
   begin
      S3 := IntToStr(This_Player.MyExpQuestValue-1);
      This_Npc.NpcDialog(This_Player,
      '���Ѿ�������������Ŀ����˰����Ѿ��ۼ���'+S3+'�㾭��\');
   end else if S2 = 0  then
   begin
      This_Npc.NpcDialog(This_Player,
      '�����ھͿ���ȥ����2000�����ˣ�\'+
      'ֻҪ���ۻ��ﵽ��Щ���飬�ٵ�����������\'+
      '�ҾͰѡ��������塱�ľ��Ͻ����㣡');
   end; 
    }
   {$ENDIF}
end;

{
    //ѧ�ɾ������弼��
    //����ֵ��  -1 ��ʾ �Ѿ������˾�������        @finishskill_learned
    //          -2 ��ʾ ��ûѧϰ�������弼��      @noskillquest
    //          -3 ��ʾ �ۼƾ��黹����            @DrinkSkill_Fail
    //           1 ��ʾ �ۼƾ������������Գɹ�ѧϰ��������    @finishskill_OK
    function EndWineExpQuest(Player: TPlayer): Integer;
}
Procedure _finishskill;
var
S1 : integer;
S4 : string;
begin
   {$IFDEF Q136_hero}
  exit;
  {$ELSE}
  { S1 := This_Npc.EndWineExpQuest(This_Player);
   if S1 = -1 then
   begin
      This_Npc.NpcDialog(This_Player,
      '���Ѿ���ϰ�ˡ��������塱��');
   end else if S1 = -2 then
   begin
      This_Npc.NpcDialog(This_Player,
      '�㻹û����������Ŀ��顣');
   end else if S1 = -3 then
   begin
      S4 := IntToStr(This_Player.MyExpQuestValue-1);
      This_Npc.NpcDialog(This_Player,
      '�ţ������㻹û������Ҹ���Ŀ��鰡����ֻ�ۼ���'+S4+'�㾭�飬\'+
      '�㻹û����2000���飬��ʿ������Ŭ���ɣ� \');
   end else if S1 = 1  then
   begin
      This_Npc.NpcDialog(This_Player,
      'û�뵽����ô���������ҵĿ��飬�������귨��½�Ľܳ���ʿ��\'+
      '���ס��������塱�̲��������������\'+
      '�����������屾�����һ�����Ե�����������������֮�����ڣ�\'+
      '���������״̬ʱ�ܹ���ǿ�������������ǿս������\'+
      '�밴F11�򿪼������鿴�������ܵȼ�����1��֮��\'+
      '�㽫����ʹ��������ܡ�\ \'+
      '|<�õģ����Լ�����һ��/@doexit>');
   end; 
    }
   {$ENDIF}
end;

procedure _jieshao;
begin
  This_Npc.NpcDialog(This_Player,
  '����ѧϰ�ꡰ�������塱�󣬼��ܵĵȼ���0����\����ͨ�������ۻ��á��������塱������������ܵȼ�ÿ����1����\�������ֵ���޾ͻ�����1�㡣���ⲻҪ����ѧϰ���\���ÿ�ݼ�F1-F8Ŷ����Ȼ����û�а취ʹ��������ܵġ�\ \'
  +'|{cmd}<�õģ���֪����/@doexit>\ \'
  +'|{cmd}<����/@drink>'
  );
end;

procedure _newskill;
begin
  This_Npc.NpcDialog(This_Player,
  '�¼��ܣ�����ָ����\ \'
  +'|{cmd}<��˵�ɣ�����֪����ս��������/@newskill1>'+ addSpace('', 8) + '|{cmd}<�����������ż���Ƭ/@newskill2>\'
  +'|{cmd}<�����˽�һ��ħ��ʦ���ļ�ħ����/@magicdef>\'
  +'|{cmd}<û��/@doexit>'
  );
end;

procedure _newskill1;
begin
  This_Npc.NpcDialog(This_Player,
  '�ţ���������ʿ��֮�䣬�κ����鶼�ᴫ���úܿ�ѽ��\�������ģ�ǰ���죬���������˼��������ƹݣ�˳�������˿��ң�\������˵���ּ���������������η������----��������ʹ�ù��ģ�\�������е�ս����Ҫ֪��...��Щս������Ѿ�ʧ���ˣ�\�ҵ�ʱ��һ��Ӧ����������ȷ��û�п�����\ \'
  +'|{cmd}<������ô˵��/@newskill12>'
  );
end;

procedure _newskill12;
begin
  This_Npc.NpcDialog(This_Player,
  '������ϲ���ƣ�����Ҳû�����ۻ軨��������������ʱ���!��\��������������ֻ����Ϊ��˵�Ķ�������ˡ�\���㲻���������㿴�����������������һ���鲼������...\��������ǵ���Ĺ����֣����ң�����Ӧ������������صĶ�����\�ɲ����Ҳ������ˡ�\ \'
  +'|{cmd}<�ǹ�������Ϊ��ʧ�����أ�/@newskill13>'
  );
end;

procedure  _newskill13;
begin
  This_Npc.NpcDialog(This_Player,
  '��Щ����ǿ����׷�������������ʿ�����������޷��԰Σ�\��������Ϊ������֮�ͣ���δ����������֮ǰ��������˶���Ϊ\�����������������������Ԫ��������������Щս����\��������Ҳû���뵽������������Ľ�������ǣ����Ǿ��ã�\��Ӧ���ٽ�֮������ȥ��������ѡ���Ե�����ǿ��\������־�ޱȼᶨ������ѧϰ��\ \'
  +'|{cmd}<��ô����.../@newskill14>'
  );
end;

procedure _newskill14;
begin
  This_Npc.NpcDialog(This_Player,
  '�������յ��Ѷ�ȷʵ�ǳ�֮�ߣ�����...��ѩɽ֮�ۺ�\û�������������״������յ���ҲԽ��Խ���ˣ�\�����ؾ��������ǵ�׷Ѱ�е�ȥ�������йع������Ĵ�˵��\һֱ������������Ȼ��ƽʱ���������ἰ��\Ҳ����Ҳ����һ��������\��������˵�ս��Խ��Խ���ɱ����ʱ��...\ \'
  +'|{cmd}<�����˼��...��Ҳ��������ѧϰ��/@newskill15>'
  );
end;

procedure _newskill15;
begin
  This_Npc.NpcDialog(This_Player,
  '��...����Ӧ���ǵģ��������㣬���ս�����Ҳ�ڿ���\����ѧϰ������ǿ��Ĺ�ս����\����Ҳµ�û��������ҵ��Ƿ��������ܾ���ǰ�������µĹ�����\���ɵĲ�Ƭ�ˡ�\ \'
  +'|{cmd}<�������ᵽ�ż���Ƭ��������/@newskill16>'
  );
end;

procedure _newskill16;
begin
  This_Npc.NpcDialog(This_Player,
  '����Լ��͸¶��������ȴû��˵��ϸ�����ݡ�\������֪���ƹ���ļ���ɢ�˼���ʶ�㣬���Ǻ���\��Ҫ���˰�һ������æ������ÿ��ÿ��ֻ��һ�λ��ᡣ\�����ϰ�����Ӧ���п�����һЩ�ջ�\����һ�ַ����������ұ���������˴����ˣ�\���ڿ�����˵ͨ�����Ŀ���Ϳ��ԡ�\ \'
  +'|{cmd}<�õģ���֪����/@doexit>'+ addSpace('', 16) + '|{cmd}<����/@newskill>'
  );
end;

procedure _newskill2;
begin
  This_Npc.NpcDialog(This_Player,
  '���Ѿ�֪���������������˰ɣ�Ϊ��ѧϰ���Ӧְҵ���¼��ܣ�\�ҿ��԰�������õ��Ĺż���Ƭ���Եõ�<�ż���Ƭ(��)/c=red>��\1��<�ż���Ƭ(��)/c=red>��5��<�ż���Ƭ(��)/c=red>ƴ�ӵõ���\��1ҳ<�ż���Ƭ(��)/c=red>����Ҫ�ҽ��10��<�ż���Ƭ(С)/c=red>���С�\ \'
  +'|{cmd}<����ż���Ƭ(С)/@newskill21>' + addSpace('', 16) + '|{cmd}<ƴ�ӹż���Ƭ(��) /@newskill22>\'
  +'|{cmd}<ȥ������Եõ��ż���Ƭ��/@newskill16>' + addSpace('', 8) + '|{cmd}<����һЩ����Ĺż���Ƭ/@newskill23>\ \'
  +'|{cmd}<û��/@doexit>'
  );
end;

procedure _newskill21;
begin
  if This_Player.GetBagItemCount('�ż���Ƭ(С)') >= 10 then
  begin
    This_Player.Take('�ż���Ƭ(С)',10);
    This_Player.Give('�ż���Ƭ(��)',1);
    This_Npc.NpcDialog(This_Player,
    '���Ѿ�֪���������������˰ɣ�Ϊ��ѧϰ���Ӧְҵ���¼��ܣ�\�ҿ��԰�������õ��Ĺż���Ƭ���Եõ�<�ż���Ƭ(��)/c=red>��\1��<�ż���Ƭ(��)/c=red>��5��<�ż���Ƭ(��)/c=red>ƴ�ӵõ���\��1ҳ<�ż���Ƭ(��)/c=red>����Ҫ�ҽ��10��<�ż���Ƭ(С)/c=red>���С�\ \'
    + '|{cmd}<����ż���Ƭ(С)/@newskill21>' + addSpace(' ', 16) + '|{cmd}<ƴ�ӹż���Ƭ(��) /@newskill22>\'
    + '|{cmd}<ȥ������Եõ��ż���Ƭ��/@newskill16>' + addSpace('', 8) + '|{cmd}<����һЩ����Ĺż���Ƭ/@newskill23>\ \'
    +'|{cmd}<û��/@doexit>'
    );
  end
  else
  begin
    This_Npc.NpcDialog(This_Player,
    '��û���㹻�Ĳ�Ƭ����'
    );
  end;
end;

procedure _newskill22;
begin
  if This_Player.GetBagItemCount('�ż���Ƭ(��)') >= 5 then
  begin
    This_Player.Take('�ż���Ƭ(��)',5);
    This_Player.Give('�ż���Ƭ(��)',1);
    This_Npc.NpcDialog(This_Player,
    '���Ѿ�֪���������������˰ɣ�Ϊ��ѧϰ���Ӧְҵ���¼��ܣ�\�ҿ��԰�������õ��Ĺż���Ƭ���Եõ�<�ż���Ƭ(��)/c=red>��\1��<�ż���Ƭ(��)/c=red>��5��<�ż���Ƭ(��)/c=red>ƴ�ӵõ���\��1ҳ<�ż���Ƭ(��)/c=red>����Ҫ�ҽ��10��<�ż���Ƭ(С)/c=red>���С�\ \'
    + '|{cmd}<����ż���Ƭ(С)/@newskill21>' + addSpace(' ', 16) + '|{cmd}<ƴ�ӹż���Ƭ(��) /@newskill22>\'
    + '|{cmd}<ȥ������Եõ��ż���Ƭ��/@newskill16>' + addSpace(' ', 8) + '|{cmd}<����һЩ����Ĺż���Ƭ/@newskill23>\ \'
    +'|{cmd}<û��/@doexit>'
    );
  end
  else
  begin
    This_Npc.NpcDialog(This_Player,
    '��û���㹻�Ĳ�Ƭ����'
    );
  end;
end;

procedure _newskill23;
begin
  This_Npc.NpcDialog(This_Player,
  '����㲻��Ҫ�����ϵĹż���Ƭ(С)���Ǿ͸��Ұɣ�\�Ҷ�����Щɢ�����Ϣ�ǳ�����Ȥ����Ϊ��л���Ҹ���1�������顣\ \'
  +'|{cmd}<����ż���Ƭ(С)/@newskil231>\ \'
  +'|{cmd}<����/@newskill2>'
  );
end;

procedure _newskil231;
begin
  if This_Player.GetBagItemCount('�ż���Ƭ(С)') >= 1 then
  begin
    This_Player.Take('�ż���Ƭ(С)',1);
    This_Player.Give('������',1);
    This_Npc.NpcDialog(This_Player,
    '����㲻��Ҫ�����ϵĹż���Ƭ(С)���Ǿ͸��Ұɣ�\�Ҷ�����Щɢ�����Ϣ�ǳ�����Ȥ����Ϊ��л���Ҹ���1�������顣\ \'
    +'|{cmd}<����ż���Ƭ(С)/@newskil231>\ \'
    +'|{cmd}<����/@newskill2>'
    );
  end
  else
  begin
    This_Npc.NpcDialog(This_Player,
    '��û���㹻�Ĳ�Ƭ����'
    );
  end;
end;

procedure _magicdef;
begin
  This_Npc.NpcDialog(This_Player,
  '�ļ�ħ���ܣ�������˵��������ţ�������\��͹�ս����ϵ������Ҳ��̫����ˡ�\ӡ���У�����߼�ħ��ʦ֮�ҵĸ߼�ħ��ʦ�����\����ħ���ܵ��о��ĵã����������֪���Ļ���\ȥ�����ɡ�\ \'
  +'|{cmd}<лл����֪����/@newskill>'
  );
end; 


procedure _buy;
begin
  This_Npc.NpcDialog(This_Player, 
    '��ѡ������Ҫ����顣\ \ \|{cmd}<����/@main>'
  );
  This_Npc.Click_Buy(This_Player);
end;

procedure _Sell;
begin
  This_Npc.NpcDialog(This_Player, 
    '���ҿ�������顣\ \ \|{cmd}<����/@main>'
  );
  This_Npc.Click_Sell(This_Player);
end;

procedure _helpbooks;
begin
  This_Npc.NpcDialog(This_Player, 
    '������������Ȥ��\ \��ʿ����ѧ<��������/@help11>��<��ɱ����/@help12>\ħ��ʦ����ѧ<������/@help21>��<�����/@help22>\��ʿ����ѧ<������/@help31>,<������ս��/@help32>��<ʩ����/@help33>\ \|{cmd}<����/@main>'
    );
end;

procedure _help11;
begin
  This_Npc.NpcDialog(This_Player, 
    '������������԰����²���������\Lv.1 : ������ڵ� 7 ����ʼ����\Lv.2 : ������ڵ� 11 ����ʼ����\Lv.3 : ������ڵ� 16 ����ʼ����\ \|{cmd}<����/@helpbooks>'
    );
end;

procedure _help12;
begin
  This_Npc.NpcDialog(This_Player, 
    '��ɱ��������԰����²���������\Lv.1 : ������ڵ� 19 ����ʼ������\Lv.2 : ������ڵ� 22 ����ʼ������\Lv.3 : ������ڵ� 24 ����ʼ������\ \|{cmd}<����/@helpbooks>'
    );
end;

procedure _help21;
begin
  This_Npc.NpcDialog(This_Player, 
    '����������԰����²���������\Lv.1: ������ڵ� 7 ����ʼ������\Lv.2: ������ڵ� 11 ����ʼ������\Lv.3: ������ڵ� 16 ����ʼ������\ \|{cmd}<����/@helpbooks>'
    );
end;

procedure _help22;
begin
  This_Npc.NpcDialog(This_Player, 
    '���������԰����²���������\Lv.1: ������ڵ� 19 ����ʼ������\Lv.2: ������ڵ� 23 ����ʼ������\Lv.3: ������ڵ� 25 ����ʼ������\ \|{cmd}<����/@helpbooks>'
    );
end; 

procedure _help31;
begin
  This_Npc.NpcDialog(This_Player, 
    '����������԰����²���������\Lv.1 : ������ڵ� 7 ����ʼ����.\Lv.2 : ������ڵ� 11 ����ʼ����.\Lv.3 : ������ڵ� 16 ����ʼ������\ \|{cmd}<����/@helpbooks>'
    );
end;

procedure _help32;
begin
  This_Npc.NpcDialog(This_Player, 
    '������ս������԰����²���������\Lv.1 : ������ڵ� 9 ����ʼ����.\Lv.2 : ������ڵ� 13 ����ʼ����.\Lv.3 : ������ڵ� 19 ����ʼ������\ \|{cmd}<����/@helpbooks>'
    );
end;

procedure _help33;
begin
  This_Npc.NpcDialog(This_Player, 
    'ʩ��������԰����²���������\Lv.1 : ������ڵ� 14 ����ʼ����.\Lv.2 : ������ڵ� 17 ����ʼ����.\Lv.3 : ������ڵ� 20 ����ʼ������\ \|{cmd}<����/@helpbooks>'
    );
end;

//��ʼ������
procedure OnInitialize;
begin
  This_Npc.AddStdMode(3);
  This_Npc.AddStdMode(4);
 This_NPC.FillGoods('������', 100, 1);
  This_NPC.FillGoods('������', 100, 1); 
  This_NPC.FillGoods('��������', 100, 1);
  This_NPC.FillGoods('������ս��', 100, 1);
  This_NPC.FillGoods('ʩ����', 100, 1);
  This_NPC.FillGoods('�����', 100, 1);
  This_NPC.FillGoods('���ܻ�', 100, 1);
  This_NPC.FillGoods('�����', 100, 1);
  This_NPC.FillGoods('�׵���', 100, 1);
  This_NPC.FillGoods('��ɱ����', 100, 1);
  This_NPC.FillGoods('��ɱ����', 100, 1); 
  This_NPC.FillGoods('�����䵶', 100, 1);
  This_NPC.FillGoods('Ұ����ײ', 100, 1);
  
  This_NPC.FillGoods('�ٻ�����', 100, 1);
  This_NPC.FillGoods('������', 100, 1);
  This_NPC.FillGoods('����������', 100, 1);
  This_NPC.FillGoods('�����', 100, 1);
  This_NPC.FillGoods('��ʥս����', 100, 1);
  This_NPC.FillGoods('������ʾ', 100, 1);
  This_NPC.FillGoods('��ħ��', 100, 1); 
  This_NPC.FillGoods('Ⱥ��������', 100, 1);
 
  This_NPC.FillGoods('�ջ�֮��', 100, 1);
  This_NPC.FillGoods('������', 100, 1);
  This_NPC.FillGoods('˲Ϣ�ƶ�', 100, 1);
  This_NPC.FillGoods('���ѻ���', 100, 1);
  This_NPC.FillGoods('��ǽ', 100, 1);
  This_NPC.FillGoods('�����Ӱ', 100, 1);
  This_NPC.FillGoods('�����׹�', 100, 1);
  This_NPC.FillGoods('ħ����', 100, 1);
  This_NPC.FillGoods('ʥ����', 100, 1);
  
  This_Npc.SetRebate(100);
end;

//�ű�ִ�е����
begin
  domain;
end.    