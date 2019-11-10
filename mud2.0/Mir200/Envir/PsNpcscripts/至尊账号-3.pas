{
*******************************************************************}

program Mir2;

procedure _exit;
begin
  This_Npc.CloseDialog(This_Player);
end;

procedure _doexit;
begin
  This_Npc.CloseDialog(This_Player);
end;

procedure _about_zhizun;
begin
  This_Npc.NpcDialog(This_Player,
   '��ʿ��Ӧ�������������ҫ��\'
   +'ֻҪ����"�����˺�"������ȼ��ﵽ�涨�����\'
   +'�������������ȡ���������Ž������������������\'
   +'��������ȡ��������\'
   +'|{cmd}<��γ�Ϊ�����˺�/@zhizun_1>              ^<��ȡ����ƾ֤/@ReqPodPrize>\'
   +'|{cmd}<�ݽ�����ƾ֤��Ϊ�����˺�/@zhizun_2>      |<�ݽ����������ƾ֤/@zhizun_3>\'
   +'|{cmd}<��ѯ�����˺Ž���/@zhizun_4>              ^<��ȡ�����˺Ž���/@zhizun_5>\'     
   +'|{cmd}<�ر�/@doexit>'
   ); 
end;

procedure _zhizun_1;
begin
  This_Npc.NpcDialog(This_Player,
   '�����ͨ���������������˺ż��\�ɹ�����������Ϸ��������������ȡһ������ƾ֤��\'
   +'��ƾ֤�����ң��Ϳɳ�Ϊ�����˺š�\ \'
   +'|{cmd}<����/@about_zhizun>'
   ); 
end;

procedure _ReqPodPrize();
begin
  //��ȡ����� 
  This_Npc.ReqPopGift(This_Player);
end;

procedure _zhizun_2;
begin
  if This_Player.GetS(12,9) = 888 then
  begin
    This_Npc.NpcDialog(This_Player,
    '���Ѿ���Ϊ�����˺ţ������ٴ����롣\ \'
    +'|{cmd}<����/@about_zhizun>'
    ); 
  end
  else if This_Player.GetBagItemCount('����ƾ֤') > 0 then
  begin
    This_Player.Take('����ƾ֤',1);
    This_Player.SetS(12,9,888);
    This_Npc.NpcDialog(This_Player,
    '��ϲ�������Ѿ���Ϊ�����˺ţ����ھͿ�����ȡ�����ˡ�\ \'
    +'|{cmd}<����/@about_zhizun>'
    ); 
  end
  else
  begin
    This_Npc.NpcDialog(This_Player,
    '������Ѿ�����������ƾ֤���͸Ͽ콻���Ұɣ�\ \'
    +'|{cmd}<����/@about_zhizun>'
    );
  end; 
end;

procedure _zhizun_3;
begin
  if This_Player.GetBagItemCount('����ƾ֤') > 0 then
  begin
    This_Player.Take('����ƾ֤',1);
    This_Npc.NpcDialog(This_Player,
    '�㻹Ҫ�����ݽ����������ƾ֤��\ \'
    +'|{cmd}<�����ݽ�/@zhizun_3>\ \'
    +'|{cmd}<����/@about_zhizun>'
    ); 
  end
  else
  begin
    This_Npc.NpcDialog(This_Player,
    '������Ѿ������˶��������ƾ֤���͸Ͽ콻���Ұɣ�\ \'
    +'|{cmd}<����/@about_zhizun>'
    );
  end; 
end;

procedure _zhizun_4;
begin
  This_Npc.NpcDialog(This_Player,
   '����ȼ��ﵽ35��40��45��ʱ����������������ȡһ�ν�����\'
   +'���ڸߵȼ��������˺ţ�Ҳ����ȡС�ڵ�ǰ�ȼ������н�Ʒ��\ \'
   +'|{cmd}<��ѯ35�������˺Ž���/@zhizun_4_1>          ^<��ѯ40�������˺Ž���/@zhizun_4_2>\'
   +'|{cmd}<��ѯ45�������˺Ž���/@zhizun_4_3>\ \'      
   +'|{cmd}<����/@about_zhizun>'
   ); 
end;

procedure _zhizun_4_1;
begin
  This_Npc.NpcDialog(This_Player,
   '35�������˺ſ��Ի��������Ʒ��\'
   +'��Ӿ������1�����������1����˫������1��\ \' 
   +'|{cmd}<����/@zhizun_4>'
   );
end;

procedure _zhizun_4_2;
begin
  This_Npc.NpcDialog(This_Player,
   '40�������˺ſ��Ի��������Ʒ��\'
   +'��Ѫʯ(��)1����ʥս�����𡢷���ϵ���������1����\˫������1��\ \' 
   +'|{cmd}<����/@zhizun_4>'
   );
end;

procedure _zhizun_4_3;
begin
  This_Npc.NpcDialog(This_Player,
   '45�������˺ſ��Ի��������Ʒ��\'
   +'˫���ؼ�1�������Է���1��\ \' 
   +'|{cmd}<����/@zhizun_4>'
   );
end;

procedure _zhizun_5;
begin
  This_Npc.NpcDialog(This_Player,
   'ֻҪ����"�����˺�"������Ľ�Ʒ������һ�ݣ�\'
   +'����ȡ��Ʒǰ����ȷ����8�����ϵİ����ռ䣬������������ȡ�\ \'
   +'|{cmd}<��ȡ����/@get_prize>\ \'
   +'|{cmd}<����/@about_zhizun>'
   );
end;

procedure _get_prize;
var
  temp:integer;
begin  
  if This_Player.GetS(12,9) = 888 then
  begin
    if This_Player.GetS(12,10) = 300 then
    begin
      This_Npc.NpcDialog(This_Player,
      '���Ѿ���ȡ�������˺ŵ����н����������ٴ���ȡ��\ \'
      );
    end
    else if This_Player.FreeBagNum >= 8 then
    begin
      if This_Player.Level >= 45 then
      begin
        if This_Player.GetS(12,10) = 200 then
        begin
          This_Player.Give('˫���ؼ�',1);
          This_Player.Give('���Է���',1);
          This_Player.SetS(12,10,300); 
          This_Npc.NpcDialog(This_Player,
          '�����˺ŵĽ����Ѿ������ˣ��Ͽ�򿪰����鿴һ�°ɣ�\ \'
          ); 
        end
        else if This_Player.GetS(12,10) = 100 then
        begin
          This_Player.Give('˫���ؼ�',1);
          This_Player.Give('���Է���',1);
          This_Player.Give('��Ѫʯ(��)',1);
          This_Player.Give('˫������',1);
          This_NPC.GiveConfigPrize(This_Player,42,'');
          This_Player.SetS(12,10,300); 
          This_Npc.NpcDialog(This_Player,
          '�����˺ŵĽ����Ѿ������ˣ��Ͽ�򿪰����鿴һ�°ɣ�\ \'
          );
        end
        else if This_Player.GetS(12,10) < 100 then
        begin
          This_Player.Give('˫���ؼ�',1);
          This_Player.Give('���Է���',1);
          This_Player.Give('��Ѫʯ(��)',1);
          This_Player.Give('˫������',1);
          This_NPC.GiveConfigPrize(This_Player,42,'');
          This_NPC.GiveConfigPrize(This_Player,43,'');
          This_Player.Give('�������',1);
          This_Player.Give('˫������',1);
          This_Player.SetS(12,10,300); 
          This_Npc.NpcDialog(This_Player,
          '�����˺ŵĽ����Ѿ������ˣ��Ͽ�򿪰����鿴һ�°ɣ�\ \'
          );
        end;
      end
      else if This_Player.Level >= 40 then
      begin
        if This_Player.GetS(12,10) = 200 then
        begin
          This_Npc.NpcDialog(This_Player,
          '�㻹δ�ﵽ��ȡ��һ�ν����ĵȼ���������ȡ��һ�ȼ��Ľ�����\ \'
          );
        end
        else if This_Player.GetS(12,10) = 100 then
        begin
          This_Player.Give('��Ѫʯ(��)',1);
          This_Player.Give('˫������',1);
          This_NPC.GiveConfigPrize(This_Player,42,'');
          This_Player.SetS(12,10,200); 
          This_Npc.NpcDialog(This_Player,
          '�����˺ŵĽ����Ѿ������ˣ��Ͽ�򿪰����鿴һ�°ɣ�\ \'
          );
        end
        else if This_Player.GetS(12,10) < 100 then
        begin
          This_Player.Give('��Ѫʯ(��)',1);
          This_Player.Give('˫������',1);
          This_NPC.GiveConfigPrize(This_Player,42,'');
          This_NPC.GiveConfigPrize(This_Player,43,'');
          This_Player.Give('�������',1);
          This_Player.Give('˫������',1);
          This_Player.SetS(12,10,200); 
          This_Npc.NpcDialog(This_Player,
          '�����˺ŵĽ����Ѿ������ˣ��Ͽ�򿪰����鿴һ�°ɣ�\ \'
          );
        end;
      end
      else if This_Player.Level >= 35 then
      begin
        if This_Player.GetS(12,10) = 100 then
        begin
          This_Npc.NpcDialog(This_Player,
          '�㻹δ�ﵽ��ȡ��һ�ν����ĵȼ���������ȡ��һ�ȼ��Ľ�����\ \'
          );
        end
        else if This_Player.GetS(12,10) < 100 then
        begin
          This_NPC.GiveConfigPrize(This_Player,43,'');
          This_Player.Give('�������',1);
          This_Player.Give('˫������',1);
          This_Player.SetS(12,10,100); 
          This_Npc.NpcDialog(This_Player,
          '�����˺ŵĽ����Ѿ������ˣ��Ͽ�򿪰����鿴һ�°ɣ�\ \'
          );
        end;
      end
      else
      begin
        This_Npc.NpcDialog(This_Player,
          '�㻹δ�ﵽ��ȡ�����˺Ž����ĵȼ���������ȡ������\ \'
          );
      end;
    end
    else
    begin
      This_Npc.NpcDialog(This_Player,
      '��ȷ����8�����ϵİ����ռ䣬������������ȡ��\ \'
      );
    end;
  end
  else
  begin
    This_Npc.NpcDialog(This_Player,
    '�㻹���������˺ţ�������ȡ������\ \'
    );
  end;
end;

begin
  This_Npc.NpcDialog(This_Player,
   '�������ʿ��' + This_Player.Name
   +'\��ӭ�����귨��½���㽫���������������ļ��顢���콫���ĻԻ�\'
   +'��������ȡ��������\ \'
   +'|{cmd}<���������˺�/@about_zhizun>'
   );          
end. 