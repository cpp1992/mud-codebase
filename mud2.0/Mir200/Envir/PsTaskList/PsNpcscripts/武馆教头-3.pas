{
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

procedure domain;
begin
  This_Npc.NpcDialog(This_Player,
  '��������ʿ������ʧȥ������������û����ս��\ֻ����������ʿ�����˽�ս�������壡\������Ϊ��ʤ��������Ϊ��Ѱ���Լ���ʹ���ʹ��ڵ����壡\' 
  +'|{cmd}<��γ�Ϊ��ʦ��ͷ/@wangshi>\'
  +'|{cmd}<��ѯ��������/@checkswry>\'
  +'|{cmd}<ʦ�������ͽ/@chakanbs>\'
  +'|{cmd}<��Ҫ��ʦ/@sdbaishi>                     ^<���ʦͽ��ϵ/@left>\'
  +'|{cmd}<��ȡ����ѫ��/@get>                 ^<��������ѫ��/@xiuli>\'
  +'|{cmd}<�˽���ս����/@tiaozhan>                 ^<�뿪/@doexit>\'
  );
end;

procedure _wangshi;
begin
  This_Npc.NpcDialog(This_Player,
  '�����������������ʿ��Ϊ��ʦ��ͷ�������귨��½��\ֻҪ������ͽ����ͻ��Ϊ��ʦ��ͷ��\�Ժ������յ�ͽ�ܶ�����Ϊ��ʦ���ӡ� \ \'
  //+'|{cmd}<��ʦ��ͷ�ɻ�õĽ���/@jiangshang>\ \'
  +'|{cmd}<����/@main>                   ^<�뿪/@doexit>'
  );
end;

procedure _jiangshang;
begin
  This_Npc.NpcDialog(This_Player,
  '���˵Ľ�������ü�ޣ�����߾�����������\Ϊ�˵ֿ����˵Ľ�����\��������������º��ܵ����������귨������ʿ�����Ρ�\��Ϊ��ʦ��ͷ��ֻҪ����������ʦ����˳����ʦ��\������һ���ĵȼ�ʱ�����������з���<���߽���/@daoju>���㣬\���⣬�㻹���Զ���õ���<ÿһ��/c=red>������35����46�����������У�\�����<������5��/c=red>��Ϊ���͡�\|{cmd}<����/@main>'
  );
end;

procedure _daoju;
begin
  This_Npc.NpcDialog(This_Player,
  '�����κ�һ����ʦ������47���Ժ󣬵�50������׶��ڣ�\ÿ��һ������Ϳ��Ի��һ����Ʒ�е�һ����\����ս�䡢��������������������������������սѥ\��â���䡢��â���󡢹�â��������â��������â��ѥ\����ħ�䡢���滤��������������������������ħѥ\ \|{cmd}<����/@wangshi>'
  );
end;

procedure _checkswry;
begin
  This_Npc.NpcDialog(This_Player,
  '��Ŀǰ������ֵ��' + inttostr(This_Player.MyShengwan)
  );
end; 

procedure _chakanbs;
begin
  This_Npc.NpcDialog(This_Player,
  'ֻҪ��ĵȼ�����35������Ϳ�����ͽ�ˣ�\��Ȼ���ڵ�һ����ͽǰ������������������:@������ͽ\��������ܽ��ܱ��˵İ�ʦ����\���������:@�ܾ���ͽ�����ܾ������˶��Լ��İ�ʦ����\������ͽ��ָ����ֻ������һ�μ����������ã�\ֻ������ʹ�þܾ���ͽ��ָ����Ժ����Ҫ�ٴ�����\ \|{cmd}<����/@main>'
  );
  
  if This_Player.GetV(111,3) = 1 then
  begin
     if This_Player.SetV(111,3,10) then
     begin
        This_Player.Give('����',10000);
        This_Player.PlayerNotice('���Ѿ�����˳ɳ�֮·����ʦ��������',2);
        //#This_Player.DeleteTaskFromUIList(1003);
     end;
  end;
end;

procedure _sdbaishi;
begin
  This_Npc.InputDialog(This_Player, '���������ʦ����Ľ�ɫ����������Ӣ���ַ������ִ�Сд��', 0, 101);
end;

procedure P101;
begin
  if This_Npc.InputOK then
  begin
    This_Npc.RequestBaiShi(This_Player, This_Npc.InputStr);
  end;
end;

procedure _agrbaishi;
begin
  This_Player.AgreeBaishi(This_Npc);
end;

procedure _disbaishi;
begin
  This_Player.DisAgreeBaishi(This_Npc);
end;

procedure _left;
begin
  This_Npc.NpcDialog(This_Player,
  '������ʲô��ϵ��\ͽ���뿪ʦ��Ҫ������\ʦ���뿪ͽ����Ҫʮ��\�밴�����ʵ�����ѡ��\�����ѡҲ�ǻᱻ��Ǯ�ġ�\ \'
  +'|{cmd}<�뿪ʦ��/@npclishi>\'
  +'|{cmd}<�뿪ͽ��/@sdshikai>\'
  +'|{cmd}<����/@main>'
  );
end;

procedure _kaichu_M0;
begin
  This_Npc.NpcKickOutStu(This_Player, 0);
end;

procedure _kaichu_M1;
begin
  This_Npc.NpcKickOutStu(This_Player, 1);
end;

procedure _kaichu_M2;
begin
  This_Npc.NpcKickOutStu(This_Player, 2);
end;

procedure _kaichu_M3;
begin
  This_Npc.NpcKickOutStu(This_Player, 3);
end;

procedure _kaichu_M4;
begin
  This_Npc.NpcKickOutStu(This_Player, 4);
end;

procedure  _sdshikai;
begin
  This_Npc.SendKaiChuList(This_Player);
end;

procedure _npclishi;
begin
  This_Player.NpcLeaveTec(This_Npc);
end;

procedure _get;
begin
  This_Npc.NpcDialog(This_Player,
  '��Ҫ��ȡ����ѫ�µĻ������Ҫ������ֵ\������ֵ��ͨ����������ֵ��õ�\���������㹻������ֵ֮��\�Ϳ��Ե����ǵ�������ջ��¥\��ѫ���ػ��˶һ���������ѫ���ˣ�\ \'
  +'|{cmd}<����/@main>\'
  +'|{cmd}<�뿪/@doexit>'
  );
end;

procedure _xiuli;
begin
  This_Npc.NpcDialog(This_Player,
  '�ҵ������Ѿ������ˣ�\����������Ҹ������е�С�����Կ���\˵�������ǿ��԰ﵽ��Ŷ��\ \'
  +'|{cmd}<����/@main>\'
  +'|{cmd}<�뿪/@doexit>'
  );
end;

procedure _tiaozhan;
begin
  This_Npc.NpcDialog(This_Player,
  '�Ǹ���Բ֮ҹ�귨�۷�ľ������Σ�\�����Ѿ�û���˼ǵ����ˡ�\��񷵻ؼ�԰֮·���������裻\����ʯԭ�������ֻ�������\�귨��½������Ҫʵ����Ⱥ����ʿ��������\����Ҫ�к���֮��������������һʹ����\�������Ѱ�����С�ȺӢ��ս������Ѱ��������ǿ�ߣ�\'
  +'|{cmd}<�˽���ս����/@tiaozhanrule>\'
  +'|{cmd}<�˽���ս���ֹ���/@jifenrule>'
  );
end;

procedure _tiaozhanrule;
begin
  This_Npc.NpcDialog(This_Player,
  '1��˫����Զ�վ����������а�ť�Եġ���ս��ť����������ս\2��˫����Ѻ���ߣ���Ϻ�ȷ�������Զ�������ս��ͼ����ս��ʼ\3����Ѻʱ���ֿ������㹻�ռ䣬��ȷ���ܷ���˫����Ѻ�������\4��һ�������������뿪��ս��ͼ�������߾��ж�Ϊ��սʧ��\5���������δ��ʤ�������ж�Ϊ˫��սƽ\6����սʱ�빫ƽ���������ܴ������ܲ���������ʹ�ô��������\7��ʤ�����ɻ����ս���֣������Ի��ʧ�ܷ���Ѻ�ĵ���\8����Ѻ�ĵ�����Ҫ����ս�������ڲֿ��л�ȡ\'
  +'|{cmd}<�˽���ս���ֹ���/@jifenrule>                         ^<����/@main>'
  );
end;

procedure _jifenrule;
begin
  This_Npc.NpcDialog(This_Player,
  '��ս�����󣬻ᰴ�����¹�����衢�۳�����\1����ս˫��һ������Ϊ35������ʱ��˫��û�л��ֱ仯\2��˫�����𶼵���35�������10������ʱ��\     ʤ�����һ����֣������۳�һ�����\3��˫�����𶼵���35�������10������ʱ��\     ʤ����ö�����֣������۳��������\4����������սǰ�����ѵ��︺��֣���˫��û�л��ֱ仯\   \'
  +'|{cmd}<�˽���ս����/@tiaozhanrule>                             ^<����/@main>'
  );
end;

begin
  domain;
end.