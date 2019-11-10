{
*******************************************************************}

program mir2;

{$I common.pas}

procedure _DoExit;
begin
  This_Npc.CloseDialog(This_Player);
end;

procedure domain;
begin
  {$IFDEF Q136_hero}
  if This_Player.GetV(10,2) = GetDateNum(GetNow()) then
   Begin
      This_Npc.NpcDialog(This_Player,
      '��ӭ��������Щ����������\ \'+
      '|{cmd}<����/@buy>  \'+
      '|{cmd}<����/@sell>  \'+
      '|{cmd}<ѯ�ʸ����似��ϸ��/@helpbooks> \ \' );
   end else if (This_Player.GetV(10,1) = 4) or (This_Player.GetV(10,1) = 5) then
   begin
      This_Npc.NpcDialog(This_Player,
      '��ӭ��������Щ����������\ \'+
      '|{cmd}<����/@buy>  \'+
      '|{cmd}<����/@sell>  \'+
      '|{cmd}<ѯ�ʸ����似��ϸ��/@helpbooks> \ \'+
      '|{cmd}<�Ǽһ��Ȼ����/@newskill465>');
   end else if (This_Player.GetV(10,1) = 2) or (This_Player.GetV(10,1) = 3) then
   begin
      This_Npc.NpcDialog(This_Player,
      '��ӭ��������Щ����������\ \'+
      '|{cmd}<����/@buy>  \'+
      '|{cmd}<����/@sell>  \'+
      '|{cmd}<ѯ�ʸ����似��ϸ��/@helpbooks> \ \'+
      '|{cmd}<����Ҫ�Ұ�æ��/@newskill>');
   end else
   Begin
      This_Npc.NpcDialog(This_Player,
      '��ӭ��������Щ����������\ \'+
      '|{cmd}<����/@buy>  \'+
      '|{cmd}<����/@sell>  \'+
      '|{cmd}<ѯ�ʸ����似��ϸ��/@helpbooks> \ \');
   end;
  {$ELSE}
   if This_Player.GetV(10,2) = GetDateNum(GetNow()) then
   Begin
      This_Npc.NpcDialog(This_Player,
      '��ӭ��������Щ����������\ \'+
      '|{cmd}<����/@buy>                          ^<������������/@drink>\'+
      '|{cmd}<����/@sell>  \'+
      '|{cmd}<ѯ�ʸ����似��ϸ��/@helpbooks> \ \' );
   end else if (This_Player.GetV(10,1) = 4) or (This_Player.GetV(10,1) = 5) then
   begin
      This_Npc.NpcDialog(This_Player,
      '��ӭ��������Щ����������\ \'+
      '|{cmd}<����/@buy>                          ^<������������/@drink>\'+
      '|{cmd}<����/@sell>  \'+
      '|{cmd}<ѯ�ʸ����似��ϸ��/@helpbooks> \ \'+
      '|{cmd}<�Ǽһ��Ȼ����/@newskill465>');
   end else if (This_Player.GetV(10,1) = 2) or (This_Player.GetV(10,1) = 3) then
   begin
      This_Npc.NpcDialog(This_Player,
      '��ӭ��������Щ����������\ \'+
      '|{cmd}<����/@buy>                          ^<������������/@drink>\'+
      '|{cmd}<����/@sell>  \'+
      '|{cmd}<ѯ�ʸ����似��ϸ��/@helpbooks> \ \'+
      '|{cmd}<����Ҫ�Ұ�æ��/@newskill>');
   end else
   Begin
      This_Npc.NpcDialog(This_Player,
      '��ӭ��������Щ����������\ \'+
      '|{cmd}<����/@buy>                          ^<������������/@drink>\'+
      '|{cmd}<����/@sell>  \'+
      '|{cmd}<ѯ�ʸ����似��ϸ��/@helpbooks> \ \');
   end;
  {$ENDIF}
end;

procedure _jinzhen;
begin
  This_Npc.NpcDialog(This_Player,
  '��˵ׯ԰�ܼ����Ū��һ��������������\'
  +'�����в�����һЩ�Ѿ���ʧ���鼮�����ܰ���ȥŪ��һЩô��\'
  +'�������ҵ�һЩ����Ķ�������Ȼ����Ҳ��������㡣\ \'
  +'|{cmd}<���������ƵĹż���/@jinzhen1>             ^<������΢�ƵĹ��顱/@jinzhen2>\'
  +'|{cmd}<�������Ŵ��ؼ���/@jinzhen3>\ \'
  +'|{cmd}<�ùż���ȡ������/@jinzhen4>\'
  );
end;

procedure _jinzhen1;
begin
  if This_Player.GetBagItemCount('���ƵĹż�') > 0 then
  begin
    This_Npc.NpcDialog(This_Player,
    '�ף����ǣ��Ȿ<���ƵĹż�/c=red>����ȥ�Ѿ����ϰ������ʷ�ˡ�\'
    +'�е���˼���Ȿ�����ҳ�Ѿ���Ѫˮճ�������ˣ�\'
    +'��������Ҫ����ʱ������������Ҳ���ܷ���һЩ����˼�Ķ�����\'
    +'��Ը���<���ƵĹż�/c=red>����ô��\ \'
    +'|{cmd}<û���⣬����ȥ��/@jinzhen1_start>\ \'
    +'|{cmd}<�뿪/@doexit>'
    );
  end
  else
  begin
    This_Npc.NpcDialog(This_Player,
    '��Ǹ���Һ�æ��\û��Ҫ�������鲻Ҫ���ҡ�\ \|{cmd}<������˼/@doexit>'
    );
  end;
end;

procedure _jinzhen1_start;
var
  temp,temp1: integer;
begin
    if This_Player.GetBagItemCount('���ƵĹż�') >= 1 then
    begin
      temp := random(100) + 1;
      if temp <= 10 then
      begin
        This_Npc.NpcDialog(This_Player,
        '����ǰ��һ�����мҾ������⣬���Ҹ���д��һ����顣\'
        +'�������������<Ы�ߵ�ǯ��/c=red>����˵�ⶫ�������ǳ���ζ��\'
        +'��ϧ���Ҷ������ⲻ����Ȥ���͸���ɡ�\'
        +'��˵<����ɢ��/c=red>ͦϲ������ϡ��ŹֵĶ�����\'
        +'�����Ҳ��ϲ�������Ը����͹�ȥ���������������֡�\ \'
        +'|{cmd}<�õ�/@doexit>'
        );
        This_Player.Take('���ƵĹż�',1);
        This_Player.Give('Ы�ߵ�ǯ��',1);
      end
      else if temp <= 35 then
      begin
        This_Npc.NpcDialog(This_Player,
        '���<ָ�ӵ�/c=red>�������ѵģ���ϧ����̽���ż���ʱ�򱻰�����\'
        +'ɱ���˼���ǰ������һ�������˵ĳ�Ѩ���������������˻�����\'
        +'��Ϊ���ƵĹż��Ļر��������Ұ���֣�صĽ����㡣\'
        +'ϣ������ܹ���������ȥ̽���귨��½�����档\'
        +'����㲻��Ҫ����Ҳ���԰����͸�<����ָ�ӹ�/c=red>��\'
        +'���������������Ȥ��\ \'
        +'|{cmd}<�õ�/@doexit>'
        );
        This_Player.Take('���ƵĹż�',1);
        This_Player.Give('ָ�ӵ�',1);
      end
      else if temp <= 50 then
      begin
        This_Npc.NpcDialog(This_Player,
        '������һ��<΢�ƵĹ���/c=red>���������������һ�ַǳ����ϵ�������д��\'
        +'��������Ȥ��������ȥ�о��¡�\'
        +'���������Ȿ�������Թ��ڼ��ѣ������õ����⻻�������鼮��\ \'
        +'|{cmd}<�õ�/@doexit>'
        );
        This_Player.Take('���ƵĹż�',1);
        This_Player.Give('΢�ƵĹ���',1);
      end
      else
      begin
        This_Player.Take('���ƵĹż�',1);
        This_Npc.NpcDialog(This_Player,
        '��л�㣬��ʿ����������ҵĶ�������ûʲô��ֵ��\����´��㻹����һ�����Ʒ���Ը��ҿ�����\�����ܹ��������֣�'
        ); 
      end;  
    end
    else
    begin
      This_Npc.NpcDialog(This_Player,
      '��û��<���ƵĹż�/c=red>ѽ��\ \|{cmd}<�õ�/@doexit>'); 
    end;
end;

//�ù���ԭ��ȱʧ���ֲ��䣻 
procedure _jinzhen2;
begin
  if This_Player.GetBagItemCount('΢�ƵĹ���') > 0 then
  begin
    This_Npc.NpcDialog(This_Player,
    '|{cmd}<΢�ƵĹ���/c=red>��ɢ������ʷ��ζ�����������Ȿ�黹��������Ե��'+
    '��������������Ѱ����ʷ�ĺۼ��ɡ��Ͼ������ҵĹ�����\'+
    '������ô˵���Ҵҵ��ÿͣ����Ǹ�л�㡣��΢�ƵĹ�����ң�\'+
    '�ҿ�����û���������Ȥ�Ķ�����Ϊ�ر���\ \'+
    '|{cmd}<����΢�ƵĹ���/@jinzhen2_start>\ \'+
    '|{cmd}<�뿪/@doexit>');
  end
  else
  begin
    This_Npc.NpcDialog(This_Player,
    '��Ǹ���Һ�æ��\û��Ҫ�������鲻Ҫ���ҡ�\ \|{cmd}<������˼/@doexit>'
    );
  end;
end;

procedure _jinzhen2_start;
var
  temp,temp1: integer;
begin
    if This_Player.GetBagItemCount('΢�ƵĹ���') >= 1 then
    begin
      temp := random(100) + 1;
      if temp <= 10 then
      begin
        This_Npc.NpcDialog(This_Player,
        '�������Ȿ�����Ȼ�����������⡣\' 
        +'���<ţħë��/c=red>�����ˣ���������ʲô�á���ֻ�����Ȿ�顣\'
        +'��˵�Ǵ�ţħ�����������ġ�\'
        +'�������ë����ʲô�ã�ȥ�����ؾƹݵ�<����ɢ��/c=red>�ɡ�\'
        +'����ϲ��������Щ������Ķ�����\ \'
        +'|{cmd}<�õ�/@doexit>'
        );
        This_Player.Take('΢�ƵĹ���',1);
        This_Player.Give('ţħë��',1);
      end
      else if temp <= 35 then
      begin
        This_Npc.NpcDialog(This_Player,
        'ǰ�����и���������⾭����\'
        +'��֪��Ϊʲôһ��Ҫ�����<ͳ���彣/c=red>ȥ��һ���һ𽣷���\'
        +'��Ȼ�ҳ��۸���ս����������Ϊһ���汾ѧ�ң�\'
        +'�Ҷ�ͳ���彣������Ȥ���͸���ɡ�\'
        +'��˵<����ָ�ӹ�/c=red>�����ͦ����Ȥ�ġ�\ \'
        +'|{cmd}<�õ�/@doexit>'
        );
        This_Player.Take('΢�ƵĹ���',1);
        This_Player.Give('ͳ���彣',1);
        if This_Player.GetV(21,6)>= 0 then
        begin
          temp1 := This_Player.GetV(21,6);
          This_Player.SetV(21, 6, temp1+1);
        end
        else
        begin
          This_Player.SetV(21, 6, 1);
        end;
      end
      else if temp <= 50 then
      begin
        This_Npc.NpcDialog(This_Player,
        '���������ҲӦ���Ǹ�����ѧ������Ȥ�����ˡ�\'
        +'�Ȿ�Ŵ��ؼ���ȥ�ɡ�����������Ȥ��\'
        +'��Ȼ���Ȿ������Ҫһ���Ķ������ܿ�����ȥ�ġ�\'
        +'�������ָ��ڼ�į���˶��ԣ����ٺò�����һ��������\ \'
        +'|{cmd}<�õģ��ҳ���һ��/@doexit>'
        );
        This_Player.Take('΢�ƵĹ���',1);
        This_Player.Give('�Ŵ��ؼ�',1);
      end
      else
      begin
        This_Player.Take('΢�ƵĹ���',1);
        This_Npc.NpcDialog(This_Player,
        '��л�㣬��ʿ����������ҵĶ�������ûʲô��ֵ��\����´��㻹����һ�����Ʒ���Ը��ҿ�����\�����ܹ��������֣�'
        ); 
      end;  
    end
    else
    begin
      This_Npc.NpcDialog(This_Player,
      '��û��<΢�ƵĹ���/c=red>ѽ��\ \|{cmd}<�õ�/@doexit>'); 
    end;
end;

//�ù���ԭ��ȱʧ���ֲ��䣻 
procedure _jinzhen3;
begin
  if This_Player.GetBagItemCount('�Ŵ��ؼ�') > 0 then
  begin
    This_Npc.NpcDialog(This_Player,
    '�ðɺðɣ�Ҳֻ�������ˡ���<�Ŵ��ؼ�/c=red>���ּ�ɬ���鼮����\'+
    '��������Ʒ���ɡ��������Ĳ��Ű������Ĳ��Ű  �������ô�ҿ࣬\'+
    '��<�Ŵ��ؼ�/c=red>���Ұɣ���Ӧ�����ҵ�һ�������Ȥ�Ķ�����\ \'+
    '|{cmd}<�������б��Ŵ��ؼ�������/@jinzhen3_start>\ \'+
    '|{cmd}<�뿪/@doexit>');
  end
  else
  begin
    This_Npc.NpcDialog(This_Player,
    '��Ǹ���Һ�æ��\û��Ҫ�������鲻Ҫ���ҡ�\ \|{cmd}<������˼/@doexit>'
    );
  end;
end;

procedure _jinzhen3_start;
var
  temp,temp1: integer;
begin
  if This_Player.GetV(21,4) = GetDateNum(GetNow) then
  begin
    This_Npc.NpcDialog(This_Player,
    '�������Ѿ��һ�����Ʒ�ˣ������ٴζһ���'); 
  end
  else
  begin
    if This_Player.GetBagItemCount('�Ŵ��ؼ�') >= 1 then
    begin
      temp := random(100) + 1;
      if temp <= 10 then
      begin
        This_Npc.NpcDialog(This_Player,
        '|{cmd}<������֫/c=red>���Ǻǣ����ټ��Ķ����ɡ�\'
        +'|{cmd}<����ɢ��/c=red>һֱ���������������ȥ�ɡ�\'
        +'ȥ�Ҽ���ɢ�ˡ����������һ�ηǳ���Ȥ�Ĺ��µġ�\ \'
        +'|{cmd}<�õ�/@doexit>'
        );
        This_Player.Take('�Ŵ��ؼ�',1);
        This_Player.Give('������֫',1);
        This_Player.SetV(21,4, GetDateNum(GetNow));
      end
      else if temp <= 35 then
      begin
        This_Npc.NpcDialog(This_Player,
        This_Player.Name + '������<��������/c=red>��\'
        +'�����ҴӾ���ʱ��ָ�ӹٰ䷢���ҵ��ر�����\'
        +'��齫�����ƴ����ž��ӵ����Ȩ�ޣ�\'
        +'ʹ����������<ׯ԰�ܼ�/c=red>�������һ�������ѵ��\'
        +'������ѵ�����õ������ľ��飬���߸��ֵȼ��Ľ��롣\ \'
        +'|{cmd}<�õ�/@doexit>'
        );
        This_Player.Take('�Ŵ��ؼ�',1);
        This_Player.Give('��������',1);
        This_Player.SetV(21,4, GetDateNum(GetNow));
        if This_Player.GetV(21,7)>= 0 then
        begin
          temp1 := This_Player.GetV(21,7);
          This_Player.SetV(21, 7, temp1+1);
        end
        else
        begin
          This_Player.SetV(21, 7, 1);
        end;
      end
      else if temp <= 50 then
      begin
        This_Npc.NpcDialog(This_Player,
        '���������ó��ҵ�����ˡ���<��������/c=red>��\'
        +'��������Ͼ�ֻ����һ����\'
        +'���ԣ���ֻ�ܽ���㿴���������뻹���ҡ�\'
        +'�һ���㽲�����еİ��أ��������ܹ��������򵽲����µĶ�����\ \'
        +'|{cmd}<�õ�/@doexit>'
        );
        This_Player.Take('�Ŵ��ؼ�',1);
        This_Player.Give('��������',1);
        This_Player.SetV(21,4, GetDateNum(GetNow));
      end
      else
      begin
        This_Player.Take('�Ŵ��ؼ�',1);
        This_Npc.NpcDialog(This_Player,
        '��л�㣬��ʿ����������ҵĶ�������ûʲô��ֵ��\����´��㻹����һ�����Ʒ���Ը��ҿ�����\�����ܹ��������֣�'
        ); 
      end;  
    end
    else
    begin
      This_Npc.NpcDialog(This_Player,
      '��û��<�Ŵ��ؼ�/c=red>ѽ��\ \|{cmd}<�õ�/@doexit>'); 
    end;
  end;
end;

procedure _jinzhen4;
begin
  This_Npc.NpcDialog(This_Player,
  '������Ҫ��ʲô����ȡ������\ \' 
  +'|{cmd}<���ƵĹż�/@jinzhen4_1>              ^<΢�ƵĹ���/@jinzhen4_2>\ \'
  +'|{cmd}<�Ŵ��ؼ�/@jinzhen4_3>                ^<��������/@jinzhen4_4>'
  );
end;

//ͳһ�ĵ��߻�ȡ�����ӿڣ�
//����Ϊ��һ������������ָ��Ϊ1��������Ϊ�ڶ�����������������Ϊ���������� 
procedure ItemChgPrize(item: string; prize: string; prizenum: integer);
begin
  This_Player.Take(item, 1);
  This_Player.Give(prize, prizenum);
  This_NPC.NpcDialog(This_Player,
  '��ʹ��' + item + '��ȡ��' + prize + '��' + inttostr(prizenum)
  ); 
end;

procedure _jinzhen4_1;
var
  temp : integer;
begin
  if This_Player.GetBagItemCount('���ƵĹż�') > 0 then
  begin
    temp := random(100) + 1;
    if temp <= 50 then
    begin
      ItemChgPrize('���ƵĹż�','����',400000); 
    end
    else if temp <= 80 then
    begin
      ItemChgPrize('���ƵĹż�','����',600000);
    end
    else if temp <= 95 then
    begin
      ItemChgPrize('���ƵĹż�','����',800000);
    end
    else
    begin
      ItemChgPrize('���ƵĹż�','������Ƭ',1);
    end;
  end
  else
  begin
    This_Npc.NpcDialog(This_Player,
    '���������˲��ƵĹż����͸Ͽ콻���һ�ȡ�����ɣ�'
    ); 
  end; 
end;

procedure _jinzhen4_2;
var
  temp : integer;
begin
  if This_Player.GetBagItemCount('΢�ƵĹ���') > 0 then
  begin
    temp := random(100) + 1;
    if temp <= 50 then
    begin
      ItemChgPrize('΢�ƵĹ���','����',1000000); 
    end
    else if temp <= 80 then
    begin
      ItemChgPrize('΢�ƵĹ���','����',1500000);
    end
    else if temp <= 95 then
    begin
      ItemChgPrize('΢�ƵĹ���','����',2000000);
    end
    else
    begin
      ItemChgPrize('΢�ƵĹ���','������Ƭ',2);
    end;
  end
  else
  begin
    This_Npc.NpcDialog(This_Player,
    '����������΢�ƵĹ��飬�͸Ͽ콻���һ�ȡ�����ɣ�'
    ); 
  end; 
end;

procedure _jinzhen4_3;
var
  temp : integer;
begin
  if This_Player.GetBagItemCount('�Ŵ��ؼ�') > 0 then
  begin
    temp := random(100) + 1;
    if temp <= 50 then
    begin
      ItemChgPrize('�Ŵ��ؼ�','����',2000000); 
    end
    else if temp <= 80 then
    begin
      ItemChgPrize('�Ŵ��ؼ�','����',3000000);
    end
    else if temp <= 95 then
    begin
      ItemChgPrize('�Ŵ��ؼ�','����',4000000);
    end
    else
    begin
      ItemChgPrize('�Ŵ��ؼ�','����',1);
    end;
  end
  else
  begin
    This_Npc.NpcDialog(This_Player,
    '���������˹Ŵ��ؼ����͸Ͽ콻���һ�ȡ�����ɣ�'
    ); 
  end; 
end;

procedure _jinzhen4_4;
var
  temp : integer;
begin
  if This_Player.GetBagItemCount('��������') > 0 then
  begin
    temp := random(1000) + 1;
    if temp <= 600 then
    begin
      ItemChgPrize('��������','����',6000000); 
    end
    else if temp <= 900 then
    begin
      ItemChgPrize('��������','����',4);
    end
    else if temp <= 990 then
    begin
      ItemChgPrize('��������','һ������',3);
    end
    else
    begin
      ItemChgPrize('��������','�ļ�����',1);
    end;
  end
  else
  begin
    This_Npc.NpcDialog(This_Player,
    '���������˽����������͸Ͽ콻���һ�ȡ�����ɣ�'
    ); 
  end; 
end;


Procedure _newskill;
Begin
   If  This_Player.GetV(10,2) = GetDateNum(GetNow()) then
   Begin
      This_Npc.NpcDialog(This_Player,
      '��������ʲô����\'); 
   end else if This_Player.GetV(10,3) = GetDateNum(GetNow()) then
   begin
      if This_Player.GetV(10,1) = 3 then
      Begin
         This_Npc.NpcDialog(This_Player,
         '�Ǹ������ļ��̾������˹�Ĺ�Ķ��㣬\'+
         '����������׬��ʿ�ǵĺ���Ǯ��\'+
         '���Ҹ�������뽻��������˵������صģ��ٺ٣�');
      end else if This_Player.GetV(10,1) = 2 then
      begin
         if This_Player.FreeBagNum >= 1 then
         begin
            This_Npc.NpcDialog(This_Player,
            '�ðɣ���Ȼ���������ѽ������ģ�����ҲӦ��û�����⡣\'+
            '�Ǹ������ļ��̾������˹�Ĺ�Ķ��㣬\'+
            '����������׬��ʿ�ǵĺ���Ǯ��\'+
            '����һ���ǳ���ͨ��С���룬��ȥ����������ס��\'+
            '��ֻ��Ҫ˵��������صľ����ˣ��ٺ١�');
            This_Player.SetV(10,1,3);
            This_Player.Give('����',1);
         end else
         begin
            This_Npc.NpcDialog(This_Player,
            '�Ѱ�������һ���������Ұɣ�\'+
            '���и���Ҫ�Ķ���Ҫ�����㣡');
         end;
      end;
   end else
   begin
      This_Npc.NpcDialog(This_Player,
      '�����ȥ���ؾƹ��Ҽ���ɢ����ȡ�������ţ�\'); 
   end;
end;

Procedure _newskill465;
begin
   If This_Player.GetV(10,2) = GetDateNum(GetNow()) then
   Begin
      This_Npc.NpcDialog(This_Player,
      '��������ʲô����\');
   end else if This_Player.GetV(10,3) = GetDateNum(GetNow()) then
   begin
      if This_Player.GetV(10,1) = 5 then
      Begin
         This_Npc.NpcDialog(This_Player,
         '���и�����������ɭ�ַϴ��ﵱ������\'+
         'Ϊ��ʿ����������װ����\'+
         '�������������Ҫ���˰�������һЩ������\'+
         '��ȥ����һ�°ɣ�\');
      end else if This_Player.GetV(10,1) = 4 then
      begin
         This_Npc.NpcDialog(This_Player,
         'лл�������ˣ����Ǽһ��ã�\'+
         '����˵���£����и�����������ɭ�ַϴ��ﵱ������\'+
         'Ϊ��ʿ����������װ����\'+
         '�������������Ҫ���˰�������һЩ������\'+
         '��ȥ����һ�°ɣ�\');
         This_Player.SetV(10,1,5);
      end;
   end else
   begin
      This_Npc.NpcDialog(This_Player,
      '�����ȥ���ؾƹ��Ҽ���ɢ����ȡ�������ţ�\');
   end;
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

procedure _drink;
begin
  This_Npc.NpcDialog(This_Player, 
    '����Ϊ�˵ֿ������˵����ԣ��귨�˴�ңԶ�Ķ���������һ����ʿ��\���Ƴ�һ�����⼼�ܣ��������⼼�ܵ��������������󽫻�������\�������һ�����Ե�����������������֮�����ڣ����������״̬\ʱ�ܹ���ǿ�������������ǿս������������ʷ�����ӣ��귨����\���������Ȿ��������������ã������ھͿ���ȥ����������ϰ壬\�����԰���ѧϰ������ܡ�\'
    );
end;

procedure _helpbooks;
begin
  This_Npc.NpcDialog(This_Player, 
    '������������Ȥ��\ \��ʿ����ѧ<��������/@help11>��<��ɱ����/@help12>\ħ��ʦ����ѧ<������/@help21>��<�����/@help22>\��ʿ����ѧ<������/@help31>,<������ս��/@help32>��<ʩ����/@help33>\ \ |{cmd}<����/@main>'
    );
end;

procedure _help11;
begin
  This_Npc.NpcDialog(This_Player, 
    '������������԰����²���������\Lv.1 : ������ڵ� 7 ����ʼ����\Lv.2 : ������ڵ� 11 ����ʼ����\Lv.3 : ������ڵ� 16 ����ʼ����\ \ |{cmd}<����/@helpbooks>'
    );
end;

procedure _help12;
begin
  This_Npc.NpcDialog(This_Player, 
    '��ɱ��������԰����²���������\Lv.1 : ������ڵ� 19 ����ʼ������\Lv.2 : ������ڵ� 22 ����ʼ������\Lv.3 : ������ڵ� 24 ����ʼ������\ \ |{cmd}<����/@helpbooks>'
    );
end;

procedure _help21;
begin
  This_Npc.NpcDialog(This_Player, 
    '����������԰����²���������\Lv.1: ������ڵ� 7 ����ʼ������\Lv.2: ������ڵ� 11 ����ʼ������\Lv.3: ������ڵ� 16 ����ʼ������\ \ |{cmd}<����/@helpbooks>'
    );
end;

procedure _help22;
begin
  This_Npc.NpcDialog(This_Player, 
    '���������԰����²���������\Lv.1: ������ڵ� 19 ����ʼ������\Lv.2: ������ڵ� 23 ����ʼ������\Lv.3: ������ڵ� 25 ����ʼ������\ \ |{cmd}<����/@helpbooks>'
    );
end; 

procedure _help31;
begin
  This_Npc.NpcDialog(This_Player, 
    '����������԰����²���������\Lv.1 : ������ڵ� 7 ����ʼ����.\Lv.2 : ������ڵ� 11 ����ʼ����.\Lv.3 : ������ڵ� 16 ����ʼ����.\ \ |{cmd}<����/@helpbooks>'
    );
end;

procedure _help32;
begin
  This_Npc.NpcDialog(This_Player, 
    '������ս������԰����²���������\Lv.1 : ������ڵ� 9 ����ʼ����.\Lv.2 : ������ڵ� 13 ����ʼ����.\Lv.3 : ������ڵ� 19 ����ʼ����.\ \ |{cmd}<����/@helpbooks>'
    );
end;

procedure _help33;
begin
  This_Npc.NpcDialog(This_Player, 
    'ʩ��������԰����²���������\Lv.1 : ������ڵ� 14 ����ʼ����.\Lv.2 : ������ڵ� 17 ����ʼ����.\Lv.3 : ������ڵ� 20 ����ʼ����.\ \ |{cmd}<����/@helpbooks>'
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