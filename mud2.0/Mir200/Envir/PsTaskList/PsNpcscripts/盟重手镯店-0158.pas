{
/*******************************************************************************
}

program mir2;

{$I common.pas}

procedure _DoExit;
begin
  This_Npc.CloseDialog(This_Player);
end;

procedure domain;
begin
  This_Npc.NpcDialog(This_Player,
  '�͹٣���л���١��м�ϡ���£�ǰ���и��͹��������\�������Σ�������Ҫ��ʲô����������\��˵���ǵ����ε��ϰ�����������������桢��âϵ�����Σ�\Ҫô��ȥ�������������ɣ���������а�����\'
  
  +'|{cmd}<������/@buy>'+ addSpace('', 24) + '|{cmd}<������/@sell>\'
  +'|{cmd}<��������/@repair>'+ addSpace('', 22) + '|{cmd}<��������/@s_repair>\'

  +'|{cmd}<�˳�/@doexit>'
  );
end;

procedure _shengji;
begin
  This_Npc.NpcDialog(This_Player,
  '�����ұ������ޣ�������ǿ����Ʒ����Ҫ3��ԭ�е����βſ��ԣ�\Ҳ����˵����Ҫ������ǿ������ս�䣬�ͱ������3������ս�䣬\����3�����Σ�����Ҫ�ṩ����һЩ�䷽��������Ҳ����Ϊ����\���ȣ�������Ҫ888�Ž��ʯ�����Ա�֤��������Ʒ�Ĵ��ȣ�\����������Ӧ����˿������Ҫħ���ǡ�ħ���ǡ�ħ������һ����\�������������Ʒ����ͽ����Ұɣ��ұ�֤����һ��ǿ�������Σ�\'
  +'|{cmd}<������������/@uplei2>'+ addSpace('', 8) + '|{cmd}<�������滤��/@upmo2>'+ addSpace('', 8) + '|{cmd}<������â����/@upgua2>\ \'
  +'|{cmd}<����/@main>'
  );
end;

//����װ��ģ��
//item_src1����ͨװ��(��Ҫ3��)
//item_src2-item_src5�ǲ���(��ֻ��Ҫ1��)
//item_des�Ǻϳɵ�ǿ��װ�� 
procedure DoUpgrade(item_src1, item_src2, item_src3, item_src4, item_src5, item_des: string);
begin
  if (This_Player.MyDiamondnum < 888) or (This_Player.GetBagItemCount(item_src1) < 3)
     or (This_Player.GetBagItemCount(item_src2) < 1) 
     or (This_Player.GetBagItemCount(item_src3) < 1)
     or (This_Player.GetBagItemCount(item_src4) < 1)
     or (This_Player.GetBagItemCount(item_src5) < 1) then
  begin
    This_Npc.NpcDialog(This_Player, 
    '��û��������Ҫ���㹻ԭ�ϣ���Ҳ����Ϊ���ˡ�'
    );
  end
  else
  begin
    This_Player.TakeDiamond(888,This_Npc);
    This_Player.Take(item_src1,3);
    This_Player.Take(item_src2,1);
    This_Player.Take(item_src3,1);
    This_Player.Take(item_src4,1);
    This_Player.Take(item_src5,1);
    This_Player.Give(item_des,1);
    This_Npc.NpcDialog(This_Player, 
    '��ϲ���������Ѿ��ɹ������ڸ���һ��ǿ�������Ρ�'
    );
  end;
end;

procedure _uplei2;
begin
  DoUpgrade('��������', '������˿', 'ħ����', 'ħ����', 'ħ����', 'ǿ����������');
end;

procedure _upmo2;
begin
  DoUpgrade('���滤��', '������˿', 'ħ����', 'ħ����', 'ħ����', 'ǿ�����滤��');  
end;

procedure _upgua2;
begin
  DoUpgrade('��â����', '��â��˿', 'ħ����', 'ħ����', 'ħ����', 'ǿ����â����');   
end;

procedure _buy;
begin
  This_Npc.NpcDialog(This_Player, 
    '��ѡ����Ҫ�������Ʒ.\ \ \|{cmd}<����/@main>'
  );
  This_Npc.Click_Buy(This_Player);
end;

procedure _Sell;
begin
  This_Npc.NpcDialog(This_Player, 
    '��������������?\����Ҳ��������.\ \|{cmd}<����/@main>'
  );
  This_Npc.Click_Sell(This_Player);
end;

procedure _Repair;
begin
  This_Npc.NpcDialog(This_Player,
    '����������������,����. \ \|{cmd}<����/@main>'
  );
  This_Npc.Click_Repair(This_Player);
end;

procedure RepairDone;
begin
  This_Npc.NpcDialog(This_Player,
    '����ȥ���Ǻõ�.\ \|{cmd}<����/@main>'
  );
end;

procedure _S_Repair;
begin
  This_Npc.NpcDialog(This_Player,
    '����һ���̫�����ˣ��������в����������޲�\����������ͨ��3����'
  );
  This_Npc.Click_SRepair(This_Player);
end;

procedure SRepairDone;
begin
  This_Npc.NpcDialog(This_Player,
    '����ȥ���Ѿ��޺���...\��úõ�ʹ����.\ \' +
    '|{cmd}<����/@main>'
  );
end;

procedure _molongqude;
begin
  This_Npc.NpcDialog(This_Player,
  '������˿��ħ���ǡ�ħ���ǡ�ħ�������ǿ���������ϡ���䱦��\����һ��֮�����޷������Щ����ı���������ӵ�ж��ѵ�Э����\��������ħ�ؽ���ʹ������һ����Ӿ���ѡ�����ǰ�������Թ���\ͨ����᫵ĵ����Թ�����ħ�����Ĺ���ȣ�������¹���,\������ӵ��ǧ����˿,\���¹����й��������Ż�͸¶��Щ���汦���Ļ�÷�����\|{cmd}<����/@main>'
  );
end;

//��ʼ������
procedure OnInitialize;
begin
  This_Npc.AddStdMode(24);
  This_Npc.AddStdMode(26);
  This_Npc.FillGoods('С����',3,3);
  This_Npc.FillGoods('������',3,3);
  This_Npc.FillGoods('������',3,3);
  This_Npc.FillGoods('��������',3,3);
  This_Npc.FillGoods('ħ������',3,3);
  This_Npc.SetRebate(100);
end;

//�ű�ִ�е����
begin
  domain;
end.  