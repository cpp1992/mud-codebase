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
   This_NPC.NpcDialog(This_Player,
   '��������ʲôҩ��\ \'
   +'|{cmd}<��ҩ/@makedrug>\'
   +' |<�йض�ҩ��˵��./@helpmakedrug>\'
   +'|{cmd}<���жԻ�./@talkwith>\'
   +'|{cmd}<�ر�/@exit>'
   );
end;


procedure _makedrug;
begin
   This_NPC.NpcDialog(This_Player,
   '��ѡ������ʲôҩ��\'
   +'�������Ӧ�ô����˰ɣ�\ \'
   +'|{cmd}<����/@main>'
   );
  This_Npc.Click_Makedrug(This_Player);
end;

procedure _helpmakedrug;
begin
  This_Npc.NpcDialog(This_Player,
  '�����������ҩֻ�����֡�\ \'
  +'|{cmd}<��ɫ���۵Ĺ���/@helpdrug1>\'
  +'|{cmd}<��ɫ���۵Ĺ���/@helpdrug2>\'
  +'|{cmd}<��ɫ���۵�ԭ��/@helpmakedrug1>\'
  +'|{cmd}<��ɫ���۵�ԭ��/@helpmakedrug2>\'
  +'|{cmd}<����/@main>'
  );
end;

procedure _helpdrug1;
begin
  This_Npc.NpcDialog(This_Player,
  '��ʿ������ʹʩ����ʱ���û�ɫ���ۣ�\�ж������������\ \|{cmd}<����/@helpmakedrug>'
  );
end;

procedure _helpdrug2;
begin
  This_Npc.NpcDialog(This_Player,
  '��ʿ������ʹʩ����ʱ���û�ɫ���ۣ�\�ж����������������\ \|{cmd}<����/@helpmakedrug>'
  );
end;

procedure _helpmakedrug1;
begin
  This_Npc.NpcDialog(This_Player,
  '��ɫ���۵�ԭ���� <ʳ�����Ĺ�ʵ/@helpitem_1> 1����\��֩������ 2��,\ʳ����Ҷ 4����\ \|{cmd}<����/@helpmakedrug>'
  );
end;

procedure _helpmakedrug2;
begin
  This_Npc.NpcDialog(This_Player,
  '��ɫ���۵�ԭ���� <����/@helpitem_2> 1��, Ы�ӵ�β��\1��, ʳ����Ҷ 4����\ \|{cmd}<����/@helpmakedrug>'
  );
end;

procedure _helpitem_1;
begin
  This_Npc.NpcDialog(This_Player,
  '��ʳ�˲ݿ��Եõ�ʳ�����Ĺ�ʵ��\����5��ʳ�˲��п��Եõ���ʵ�ģ�\ֻ��1����\ \|{cmd}<����/@helpmakedrug1>'
  );
end;

procedure _helpitem_2;
begin
  This_Npc.NpcDialog(This_Player,
  'ץ����Ѩ��Ķ������Ϳ��Եõ����ѡ�\������ԲԲ�ļ롣\ \|{cmd}<����/@helpmakedrug2>'
  );
end;

procedure _talkwith;
begin 
This_Npc.NpcDialog(This_Player,
      '������, ' + This_Player.Name + '�Ǹ������֡�\'
      +'����Ҫ5����֩�����ݣ��ܰ���ȥ����\'
      +'��������û������һ����ü�Ǯ�ġ�\ \'
      +'|{cmd}<��5����֩������/@give_st_10>\'
      +'|{cmd}<�´θ��ҡ�/@i_will_do_next_time>\'
      
      );

end;

procedure _give_st_10;
begin
    IF This_Player.GetBagItemCount('��֩������') >= 5 then
    begin
      This_Player.Take('��֩������',5);
      This_Player.AddGold(1500);
      IF (random(3) = 0) then
      begin
      This_Npc.NpcDialog(This_Player,
      '�һ�������һ�����󣬲�֪�����ܲ��ܴ�Ӧ��\'
      +'�����Ӧ���Ǿ�̫��л�ˡ�\ \'
      +'|{cmd}<��������/@ok_order_1>\'
      +'|{cmd}<�ܾ�����/@no_order_1>\'
      );
      This_Player.SetS(80,11,1);
      end else
      This_Npc.NpcDialog(This_Player,
      'лл�㣬�Ҹ���һ����300Ԫ��\'
      +'лл����ӭ�´�������\'
      +'����Ҫ�ܶ඾֩�����ݣ���ʱ������������\'
      );
    end else
    This_Npc.NpcDialog(This_Player,
    '�����ں���Ҫ5����֩������,\'
    +'�벻Ҫ����Ц���������5����\'
    );

end;



procedure _ok_order_1;
begin
    IF (This_Player.GetS(80,11) = 1) then
    begin
        if This_Player.FreeBagNum > 0 then
        begin
        This_Player.Give('ҩ��ʦ����',1);
        This_Player.SetS(80,11,0);
        This_Npc.NpcDialog(This_Player,
          '' + This_Player.Name + ', �������ҵĺ����ѡ�\'
          +'��Ҫ���æ�ľ��ǣ�\'
          +'������Ž���������ɽ�ȵ��ҵĶ��ӡ�\'
          +'������ɽ��ֻҪ��������ҽ�����˲�֪��\'
          +'�����ˡ�\' 
          );
        end else
        This_Npc.NpcDialog(This_Player,
        '��İ���̫���ˣ�\'
          );
    end;
end;

procedure _no_order_1;
begin
This_Npc.NpcDialog(This_Player,
      '��Ȼ��˵ûʱ�䣬����Ҳû�취��\'
      +'�´���ʱ�䣬�Ͱ���æ�ɡ�\'
      +'�ټ�\'
      
      );

end;

procedure _i_will_do_next_time;
begin
This_NPC.CloseDialog(This_Player);
end;




procedure OnInitialize;
begin
  This_Npc.AddStdMode(0);
  This_Npc.AddStdMode(42);
  This_Npc.FillGoods('��ɫҩ��(����)',1,1);
  This_Npc.FillGoods('��ɫҩ��(����)',1,1);
  This_Npc.SetRebate(100);
end;

//�ű�ִ�е����
begin
  domain;
end.
   