{
*******************************************************************}

Program Mir2;

procedure _DoExit;
begin
  This_Npc.CloseDialog(This_Player);
end;

procedure _Exit;                         
begin
  This_Npc.CloseDialog(This_Player);
end;

procedure _hcsuipian;                         
begin
   This_Npc.NpcDialog(This_Player,
   '��ã��������ϳ�ս����ꡢʥħװ������\'+
   '����������6��ս����Ƭ���Ϳ��Ժϳ�һ��װ����\'+
   '���װ������ս����ꡢʥħװ�������������һ����\'+
   '����������Щװ��������ʵ����̫����ǿ�����޷��⿪\'+
   '�������ǵ�������\ \'+
   '|{cmd}<�ϳ�ս����Ƭ/@hcsuipian01>');
end;

procedure _hcsuipian01;                         
begin
   if This_Player.GetBagItemCount('ս����Ƭ') >= 6 then
   begin
      This_Player.Take('ս����Ƭ',6);
      This_NPC.GiveConfigPrize(This_Player, 10, This_Player.Name + '�ڲ��¶���ʦ��ʹ��ս����Ƭ�ϳ��ˣ�<$GIFTITEM>��')
      This_NPC.CloseDialog(This_Player);
   end else
   begin
      This_Npc.NpcDialog(This_Player,
      '��û�д���6��ս����Ƭ���Ͽ�ȥѰ�Ұɣ�');
   end;
end;

procedure _duanzao;                         
begin
   This_Npc.NpcDialog(This_Player,
   '��ѡ����Ҫ��������Σ�ֻҪ���㹻��ԭ�ϣ��ͷ��Ľ����Ұɡ�\'+
   '|{cmd}<����ս��/@leijie>           ^<��������/@leiwan>          ^<��������/@leilian>\'+
   '|{cmd}<����սѥ/@leixue>           ^<��������/@leidai>\'+
   '|{cmd}<����ħ��/@liejie>           ^<���滤��/@liewan>          ^<��������/@lielian>\'+
   '|{cmd}<����ħѥ/@liexue>           ^<��������/@liedai>\'+
   '|{cmd}<��â����/@guangjie>           ^<��â����/@guangwan>          ^<��â����/@guanglian>\'+
   '|{cmd}<��â��ѥ/@guangxue>           ^<��â����/@guangdai>\ \'+
   '|{cmd}<����/@main>');
end;

Procedure DuanZaoMB(tu01:string; tu02:string; tu03:string; tu04:string; DZItem:string);
Begin
   if ( This_Player.GetBagItemCount(tu01) >= 1 ) and ( This_Player.GetBagItemCount(tu02) >= 1 ) 
      and ( This_Player.GetBagItemCount(tu03) >= 1 ) and ( This_Player.GetBagItemCount(tu04) >= 1 ) 
      and ( This_Player.MyDiamondnum >= 300) then
   begin
      This_Player.Take(tu01,1);
      This_Player.Take(tu02,1);
      This_Player.Take(tu03,1);
      This_Player.Take(tu04,1);
      This_Player.TakeDiamond(300,This_Npc);
      This_Player.Give(DZItem,1);
      This_NPC.NpcDialog(This_Player,
      '��ϲ���������Ѿ��ɹ�����ȥ�������İ����ɣ�');
   end else 
   begin
      This_NPC.NpcDialog(This_Player,
      '�ܿ�ϧ����û�ж���������㹻ԭ�ϡ�');
   end;
end;

procedure _guangdai;                         
begin
   This_Npc.NpcDialog(This_Player,
   '�ϳɹ�â����������Ʒ��\'+
   '���ʯ��300\'+
   '�ĸ���������\ \'+
   '����<����/@makeguangdai>\'+
   '|{cmd}<���ز鿴�䷽/@duanzao>\'+
   '|{cmd}<�ر�/@exit>');
end;

Procedure _makeguangdai;
Begin
   DuanZaoMB('��������','��������','��������','��������','��â����');
end;

procedure _guangxue;                         
begin
   This_Npc.NpcDialog(This_Player,
   '�ϳɹ�â��ѥ������Ʒ��\'+
   '���ʯ��300\'+
   '�ĸ��ܻ�ѥ\ \'+
   '����<����/@makeguangxue>\'+
   '|{cmd}<���ز鿴�䷽/@duanzao>\'+
   '|{cmd}<�ر�/@exit>');
end;

Procedure _makeguangxue;
Begin
   DuanZaoMB('�ܻ�ѥ','�ܻ�ѥ','�ܻ�ѥ','�ܻ�ѥ','��â��ѥ');
end;

procedure _guanglian;                         
begin
   This_Npc.NpcDialog(This_Player,
   '�ϳɹ�â����������Ʒ��\'+
   '���ʯ��300\'+
   '�ĸ���������\ \'+
   '����<����/@makeguanglian>\'+
   '|{cmd}<���ز鿴�䷽/@duanzao>\'+
   '|{cmd}<�ر�/@exit>');
end;

Procedure _makeguanglian;
Begin
   DuanZaoMB('��������','��������','��������','��������','��â����');
end;

procedure _guangjie;                         
begin
   This_Npc.NpcDialog(This_Player,
   '�ϳɹ�â����������Ʒ��\'+
   '���ʯ��300\'+
   '�ĸ������ָ\ \'+
   '����<����/@makeguangjie>\'+
   '|{cmd}<���ز鿴�䷽/@duanzao>\'+
   '|{cmd}<�ر�/@exit>');
end;

Procedure _makeguangjie;
Begin
   DuanZaoMB('�����ָ','�����ָ','�����ָ','�����ָ','��â����');
end;

procedure _guangwan;                         
begin
   This_Npc.NpcDialog(This_Player,
   '�ϳɹ�â����������Ʒ��\'+
   '���ʯ��300\'+
   '�ĸ���������\ \'+
   '����<����/@makeguangwan>\'+
   '|{cmd}<���ز鿴�䷽/@duanzao>\'+
   '|{cmd}<�ر�/@exit>');
end;

Procedure _makeguangwan;
Begin
   DuanZaoMB('��������','��������','��������','��������','��â����');
end;

procedure _liedai;                         
begin
   This_Npc.NpcDialog(This_Player,
   '�ϳ���������������Ʒ��\'+
   '���ʯ��300\'+
   '�ĸ���������\ \'+
   '����<����/@makeliedai>\'+
   '|{cmd}<���ز鿴�䷽/@duanzao>\'+
   '|{cmd}<�ر�/@exit>');
end;

Procedure _makeliedai;
Begin
   DuanZaoMB('��������','��������','��������','��������','��������');
end;

procedure _liexue;                         
begin
   This_Npc.NpcDialog(This_Player,
   '�ϳ�����ħѥ������Ʒ��\'+
   '���ʯ��300\'+
   '�ĸ��ܻ�ѥ\ \'+
   '����<����/@makeliexue>\'+
   '|{cmd}<���ز鿴�䷽/@duanzao>\'+
   '|{cmd}<�ر�/@exit>');
end;

Procedure _makeliexue;
Begin
   DuanZaoMB('�ܻ�ѥ','�ܻ�ѥ','�ܻ�ѥ','�ܻ�ѥ','����ħѥ');
end;

procedure _lielian;                         
begin
   This_Npc.NpcDialog(This_Player,
   '�ϳ���������������Ʒ��\'+
   '���ʯ��300\'+
   '�ĸ���������\ \'+
   '����<����/@makelielian>\'+
   '|{cmd}<���ز鿴�䷽/@duanzao>\'+
   '|{cmd}<�ر�/@exit>');
end;

Procedure _makelielian;
Begin
   DuanZaoMB('��������','��������','��������','��������','��������');
end;

procedure _liewan;                         
begin
   This_Npc.NpcDialog(This_Player,
   '�ϳ����滤��������Ʒ��\'+
   '���ʯ��188\'+
   '�ĸ���������\ \'+
   '����<����/@makeliewan>\'+
   '|{cmd}<���ز鿴�䷽/@duanzao>\'+
   '|{cmd}<�ر�/@exit>');
end;

Procedure _makeliewan;
Begin
   DuanZaoMB('��������','��������','��������','��������','���滤��');
end;

procedure _liejie;                         
begin
   This_Npc.NpcDialog(This_Player,
   '�ϳ�����ħ��������Ʒ��\'+
   '���ʯ��300\'+
   '�ĸ������ָ\ \'+
   '����<����/@makeliejie>\'+
   '|{cmd}<���ز鿴�䷽/@duanzao>\'+
   '|{cmd}<�ر�/@exit>');
end;

Procedure _makeliejie;
Begin
   DuanZaoMB('�����ָ','�����ָ','�����ָ','�����ָ','����ħ��');
end;

procedure _leidai;                         
begin
   This_Npc.NpcDialog(This_Player,
   '�ϳ���������������Ʒ��\'+
   '���ʯ��300\'+
   '�ĸ���������\ \'+
   '����<����/@makeleidai>\'+
   '|{cmd}<���ز鿴�䷽/@duanzao>\'+
   '|{cmd}<�ر�/@exit>');
end;

Procedure _makeleidai;
Begin
   DuanZaoMB('��������','��������','��������','��������','��������');
end;

procedure _leixue;                         
begin
   This_Npc.NpcDialog(This_Player,
   '�ϳ�����սѥ������Ʒ��\'+
   '���ʯ��300\'+
   '�ܻ�ѥ\ \'+
   '����<����/@makeleixue>\'+
   '|{cmd}<���ز鿴�䷽/@duanzao>\'+
   '|{cmd}<�ر�/@exit>');
end;

Procedure _makeleixue;
Begin
   DuanZaoMB('�ܻ�ѥ','�ܻ�ѥ','�ܻ�ѥ','�ܻ�ѥ','����սѥ');
end;

procedure _leilian;                         
begin
   This_Npc.NpcDialog(This_Player,
   '�ϳ���������������Ʒ��\'+
   '���ʯ��300\'+
   '�ĸ�ʥս����\ \'+
   '����<����/@makeleilian>\'+
   '|{cmd}<���ز鿴�䷽/@duanzao>\'+
   '|{cmd}<�ر�/@exit>');
end;

Procedure _makeleilian;
Begin                           
   DuanZaoMB('ʥս����','ʥս����','ʥս����','ʥս����','��������');
end;

procedure _leiwan;                         
begin
   This_Npc.NpcDialog(This_Player,
   '�ϳ���������������Ʒ��\'+
   '���ʯ��300\'+
   '�ĸ�ʥս����\ \'+
   '����<����/@makeleiwan>\'+
   '|{cmd}<���ز鿴�䷽/@duanzao>\'+
   '|{cmd}<�ر�/@exit>');
end;

Procedure _makeleiwan;
Begin
   DuanZaoMB('ʥս����','ʥս����','ʥս����','ʥս����','��������');
end;

procedure _leijie;                         
begin
   This_Npc.NpcDialog(This_Player,
   '�ϳ�����ս��������Ʒ��\'+
   '���ʯ��300\'+
   '�ĸ�ʥս��ָ\ \'+
   '����<����/@makeleijie>\'+
   '|{cmd}<���ز鿴�䷽/@duanzao>\'+
   '|{cmd}<�ر�/@exit>');
end;

Procedure _makeleijie;
Begin
   DuanZaoMB('ʥս��ָ','ʥս��ָ','ʥս��ָ','ʥս��ָ','����ս��');
end;

procedure _AFoundryList;
begin
  This_Npc.FoundryList(This_Player);
end;

procedure _DiaPeif_0;
begin
  This_Npc.DiaPeif(This_Player, 0);
end;

procedure _DiaPeif_1;
begin
  This_Npc.DiaPeif(This_Player, 1);
end;

procedure _DiaPeif_2;
begin
  This_Npc.DiaPeif(This_Player, 2);
end;

procedure _DiaPeif_3;
begin
  This_Npc.DiaPeif(This_Player, 3);
end;

procedure _DiaPeif_4;
begin
  This_Npc.DiaPeif(This_Player, 4);
end;

procedure _DiaPeif_5;
begin
  This_Npc.DiaPeif(This_Player, 5);
end;

procedure _DiaPeif_6;
begin
  This_Npc.DiaPeif(This_Player, 6);
end;

procedure _DiaPeif_7;
begin
  This_Npc.DiaPeif(This_Player, 7);
end;

procedure _DiaPeif_8;
begin
  This_Npc.DiaPeif(This_Player, 8);
end;

procedure _DiaPeif_9;
begin
  This_Npc.DiaPeif(This_Player, 9);
end;

procedure _DiaPeif_10;
begin
  This_Npc.DiaPeif(This_Player, 10);
end;

procedure _DiaPeif_11;
begin
  This_Npc.DiaPeif(This_Player, 11);
end;

procedure _DiaPeif_12;
begin
  This_Npc.DiaPeif(This_Player, 12);
end;

procedure _DiaPeif_13;
begin
  This_Npc.DiaPeif(This_Player, 13);
end;

procedure _DiaPeif_14;
begin
  This_Npc.DiaPeif(This_Player, 14);
end;

procedure _DiaPeif_15;
begin
  This_Npc.DiaPeif(This_Player, 15);
end;

procedure _DiaPeif_16;
begin
  This_Npc.DiaPeif(This_Player, 16);
end;

procedure _DiaPeif_17;
begin
  This_Npc.DiaPeif(This_Player, 17);
end;

procedure _DiaPeif_18;
begin
  This_Npc.DiaPeif(This_Player, 18);
end;

procedure _DiaPeif_19;
begin
  This_Npc.DiaPeif(This_Player, 19);
end;

procedure _DiaPeif_20;
begin
  This_Npc.DiaPeif(This_Player, 20);
end;

procedure _DiaPeif_21;
begin
  This_Npc.DiaPeif(This_Player, 21);
end;

procedure _DiaPeif_22;
begin
  This_Npc.DiaPeif(This_Player, 22);
end;

procedure _DiaPeif_23;
begin
  This_Npc.DiaPeif(This_Player, 23);
end;

procedure _DiaPeif_24;
begin
  This_Npc.DiaPeif(This_Player, 24);
end;

procedure _DiaPeif_25;
begin
  This_Npc.DiaPeif(This_Player, 25);
end;

procedure _DiaPeif_26;
begin
  This_Npc.DiaPeif(This_Player, 26);
end;

procedure _DiaPeif_27;
begin
  This_Npc.DiaPeif(This_Player, 27);
end;

procedure _DiaPeif_28;
begin
  This_Npc.DiaPeif(This_Player, 28);
end;

procedure _DiaPeif_29;
begin
  This_Npc.DiaPeif(This_Player, 29);
end;

procedure _DiaPeif_30;
begin
  This_Npc.DiaPeif(This_Player, 30);
end;

procedure _DiaPeif_31;
begin
  This_Npc.DiaPeif(This_Player, 31);
end;

procedure _DiaPeif_32;
begin
  This_Npc.DiaPeif(This_Player, 32);
end;

procedure _DiaPeif_33;
begin
  This_Npc.DiaPeif(This_Player, 33);
end;

procedure _DiaPeif_34;
begin
  This_Npc.DiaPeif(This_Player, 34);
end;

procedure _DiaPeif_35;
begin
  This_Npc.DiaPeif(This_Player, 35);
end;

procedure _DiaPeif_36;
begin
  This_Npc.DiaPeif(This_Player, 36);
end;

procedure _DiaPeif_37;
begin
  This_Npc.DiaPeif(This_Player, 37);
end;

procedure _DiaPeif_38;
begin
  This_Npc.DiaPeif(This_Player, 38);
end;

procedure _DiaPeif_39;
begin
  This_Npc.DiaPeif(This_Player, 39);
end;


procedure _MakeDiamondItem;
begin
  This_Npc.MakeItemUseDiam(This_Player);
end;

Procedure _foundrylist;
begin
   This_Npc.FoundryList(This_Player);
end;



//�ű�ִ�е����
Begin
   This_Npc.NpcDialog(This_Player,
   '��Ҫ���ж������ǿ�Ҫ׼������Ҫ����Ʒ����\'+
   '������Ʒ����Ҫ���Ķ���ʱ�䣬�����ڶ���ʧ�ܵĿ��ܣ�\'+
   '����ְҵ���Ա𡢵ȼ��Լ�Ҫ�������Ʒ����Ӱ�쵽����ĳɰܣ�\'+
   'ʧ�ܲ���۳����ṩ�Ľ��ʯ��ֻ���䷽�е�������Ʒ�ᱻ���ģ�\'+
   '���ɹ���Ϳ��ջ�����Ҫ�������Ʒ�ˡ�\'+
   '���һ��п��ܵõ������������Ʒԭʼ���Եĳ�����Ʒ��\'+
   
   '|{cmd}<������������â������ϵ������/@duanzao>');

end.    