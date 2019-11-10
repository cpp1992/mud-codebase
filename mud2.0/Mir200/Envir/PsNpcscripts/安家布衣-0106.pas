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
   '��ӭ���٣���ʲô������Ҫ�Ұ�æ��\ \'
   +'|{cmd}<��/@buy>�·�\'
   +'|{cmd}<��/@sell>�·�\'
   +'|{cmd}<�޸�/@repair>�·�\'
   +'|{cmd}<���жԻ�/@talkwith>\'
   +'|{cmd}<��������/@s_repair>\'
   +'|{cmd}<�ر����/@moveout>\'
   +'|{cmd}<ȡ��/@exit> '
   );
end;

procedure _moveout;
begin  
    if This_Player.MapName = '0106' then 
    This_Player.Flyto('0',322 + random(3) - 1,302 + random(3) - 1); 
end;

procedure _buy;
begin
  This_Npc.NpcDialog(This_Player, 
  'Ҫ����ʲô��\ \ \|{cmd}<����/@main>'
  );
  This_Npc.Click_Buy(This_Player);
end;

procedure _Sell;
begin
  This_Npc.NpcDialog(This_Player, 
    '�����ȥҪ�����·����Ҹ����ۡ�\ͷ����ñ��Ҳ�չ���\��������һ�����ɡ�\ \|{cmd}<����/@main>'
  );
  This_Npc.Click_Sell(This_Player);
end;

procedure _Repair;
begin
  This_Npc.NpcDialog(This_Player,
    '�����޸��·���ͷ����ñ�ӡ�\ \ \|{cmd}<����/@main>'
  );
  This_Npc.Click_Repair(This_Player);
end;

procedure RepairDone;
begin
  This_Npc.NpcDialog(This_Player,
    '�޵û��㲻��\ \ \|{cmd}<����/@main>'
  );
end;

procedure _S_Repair;
begin
  This_Npc.NpcDialog(This_Player,
    '����һ� !���̫������...������������Ĳ����������޲�����\���۸������ͨ����������\ \ \|{cmd}<����/@main>'
  );
  This_Npc.Click_SRepair(This_Player);
end;

procedure SRepairDone;
begin
  This_Npc.NpcDialog(This_Player,
    '����ȥ���Ѿ��޺��ˡ���\��úõ�ʹ������\ \|{cmd}<����/@main>'
  );
end;


procedure _talkwith; 
begin
    
    IF (This_Player.GetS(80,12) = 9) then
    begin
    This_Npc.NpcDialog(This_Player,
    '�����ô�죿\'
    +'�������֪��������үү������ɣ�\'
    +'�Ҵ�Ӧ����үү�ֲ���װ����֪�����һ��Ǹ�����ɡ�\'
    +'������ǧ��Ҫ����үү������˵��,\' 
    +'����һ����Ӧ�ҡ�\ \'
    +'|{cmd}<��Ӧ/@ok_make_promise>\'
    +'|{cmd}<�ܾ�/@no_make_promise>\'
    );
    end else
    IF This_Player.GetS(80,12) = 8 then
    begin
        IF random(3) = 0 then
        This_Npc.NpcDialog(This_Player,
        '' + This_Player.Name + '���, �����ں�ƣ�͡�\'
        +'��Բ��������а취���㽲��\ \'
        +'|{cmd}<�����ϴ��ŵ��������������͡�/@give_my_necklace>\'
        )
        else
        This_Npc.NpcDialog(This_Player,
        '' + This_Player.Name + '���, ���������ã������������ġ�\'
        +'���ҽ���Ȥ�Ĺ��°ɡ�\'
        +'����\ \'
        +'|{cmd}<��������õĹ��¡�/@talk_about_oma>\'
        );
    end else
    IF (This_Player.GetS(80,12) = 6) then
    begin
    This_Npc.NpcDialog(This_Player,
    '��ʲô������������Ҫ���¡�\'
    +'�򵥵��ʰɡ�\ \'
    +'|{cmd}<���й�������ҽ������/@talk_yu_doctor>\'
    );
    end else
    IF (This_Player.GetS(80,12) = 7) then
    This_Npc.NpcDialog(This_Player,
    'Ŷ��������ô���صĶ�����̫��л��\'
    +'��̫лл�ˣ�\'
    +'��������������Ķ�����\ \'
    +'|{cmd}<�ٴ����й�����ҽ������./@talk_yu_again>\'
    )
    else
    This_Npc.NpcDialog(This_Player,
    '����������á�\'
    +'��ô�õ�������\'
    +'�͸ú�������һ���ȥ�档\'
    );
end;

procedure _talk_yu_doctor; 
begin
     IF This_Player.GetItemNameOnBody(3) = '������' then
     This_Npc.NpcDialog(This_Player,
      'Ŷ��ԭ�����ڽ�����ͷ����\'
      +'�����Ҵ�Ӧ�������κ��˶���˵�����Ķ���\ \'
      +'|{cmd}<�����ϴ��ŵĽ�����./@give_goldnecklace>\'
      )
      else
      This_Npc.NpcDialog(This_Player,
      'Ŷ��ԭ�����ڽ�����ͷ����\'
      +'�����Ҵ�Ӧ�������κ��˶���˵�����Ķ���\ '
      +'�ܱ�Ǹ����Ҳû�취��\'
      +'�㻹�ǻ�ȥ�ɡ�\'
      +'�����ϰ�����ʶ�ĳ��˳��㲱���ϴ���<������/c=red>��\'
      );
end;
{
This_Player.GetItemNameOnBody(i);
0:�·�
1������
2��ѫ�� 
3������
4��ͷ�� 
5��������
6��������
7�����ָ 
8���ҽ�ָ
9������� 
10������
11��Ь�� 
}
procedure _give_goldnecklace; 
begin
    IF (This_Player.GetItemNameOnBody(3) = '������') and (This_Player.GetS(80,12) = 6) then
    begin
        This_Player.Takebodyequipbypos(3);
        This_Player.SetS(80,12,7);
        This_Npc.NpcDialog(This_Player,
          'Ŷ��������ô���صĶ�����̫��л��\'
          +'��̫лл�ˣ�\'
          +'��������������Ķ�����\ \'
          +'|{cmd}<�ٴ����й�����ҽ������./@talk_yu_again>\'
          );
    end;
end;

procedure _talk_yu_again; 
begin
      This_Npc.NpcDialog(This_Player,
      '���У�����˵�ġ�\'
      +'������������������Ϊ����ɣ�\'
      +'|{cmd}<Ҫ���˻�������/@getback_necklace>\'
      +'|{cmd}<��ô���ء�/@noproblem>\'
      );

end;

procedure _getback_necklace; 
begin
    if This_Player.GetS(80,12) = 7 then
    begin
        if This_Player.FreeBagNum > 0 then
        begin
        This_Npc.NpcDialog(This_Player,
        '�ߣ���̫�ͼ��ˡ�\'
        +'���ţ��Ժ���ٳ��������\'
        +'�ߡ�����'
        ); 
       // This_Player.Give('������',1);
        end else
        This_Npc.NpcDialog(This_Player,
        '��İ���̫���ˣ�'
        );
    end;
end;

procedure _noproblem; 
begin
    if This_Player.GetS(80,12) = 7 then
    begin
        IF (random(5) = 0) then
        begin
        This_Npc.NpcDialog(This_Player,
        '' + This_Player.Name + ' �������������Ӻ���\'
        +'.. �Ժ�ͽ����磬������������\'
        +'���а����͸����һ��͸о��ܿ��ġ�\'
        +'�´ξ������һ��������ม�\'
        +'����\'
        );
        This_Player.SetS(80,12,8);
        end
        else
        This_Npc.NpcDialog(This_Player,
        '�����Ǹ����ˡ�\'
        +'��������һ��Ҫ�����ǵ�ม�\'
        );
    end;
end;

procedure _ok_make_promise; 
begin
     if This_Player.GetS(80,12) = 9 then
     begin
     This_Npc.NpcDialog(This_Player,
      'һ��Ҫ��������\'
      +'��үү���������˹�Ĺ���㣬\'
      +'��û��ȥ�������Ծ���Ͳ�֪���ˡ�\'
      +'�ߵ�ʱ��˵Ҫ������ס�����£�\'
      +'����Ӧ��������ɡ�\'
      +'���������\'
      +'ǧ��Ҫ�����ҡ�\'
      +'���и���ˡ�' 
      );
      This_Player.SetS(80,12,10);
     end; 
end;

procedure _no_make_promise; 
begin
     This_Npc.NpcDialog(This_Player,
      'Ŷ����ɲ��С�\'
      +'�ҿ��Ǻ���үү���Ĺ��ġ�\'
      +'�����֪����û�������ã�\'
      +'���ʧ���ġ�\'
      +'�Բ���\ \'
      );
end;


procedure _talk_about_oma; 
begin
This_Npc.NpcDialog(This_Player,
      '����������....\'
      +'̫����˼�ˣ��������һ����Ȥ���ˡ�\'
      );
end;

procedure _give_my_necklace; 
begin
    IF (This_Player.GetItemNameOnBody(3) = '������') and (This_Player.GetS(80,12) = 8) then
    begin
        This_Player.Takebodyequipbypos(3);
        This_Player.SetS(80,12,9);
        This_Npc.NpcDialog(This_Player,
        '���, �㾹Ȼ�������������̫���ˡ�\'
        +'�Һ������������ˡ�\'
        ); 
    end else
    This_Npc.NpcDialog(This_Player,
    '���Ҳ���˵Ц����\'
    +'��������仰���Ҿ��Ѿ��ܸ�л��...\'
    );
end;


//��ʼ������
procedure OnInitialize;
begin
  This_Npc.AddStdMode(10);
  This_Npc.AddStdMode(11);
  This_Npc.AddStdMode(15);
  This_Npc.FillGoods('����(��)',50,1);
  This_Npc.FillGoods('����(Ů)',50,1);
  This_Npc.FillGoods('���Ϳ���(��)',50,1); 
  This_Npc.FillGoods('���Ϳ���(Ů)',50,1);
  This_Npc.FillGoods('���Ϳ���(��)',50,1);
  This_Npc.FillGoods('���Ϳ���(Ů)',50,1);
  This_Npc.FillGoods('�ؿ���(��)',50,1);
  This_Npc.FillGoods('�ؿ���(Ů)',50,1);
  This_Npc.FillGoods('ħ������(��)',50,1);
  This_Npc.FillGoods('ħ������(Ů)',50,1);
  This_Npc.FillGoods('���ս��(��)',50,1); 
  This_Npc.FillGoods('���ս��(Ů)',50,1);
  This_Npc.FillGoods('����ս��(��)',50,1);
  This_Npc.FillGoods('����ս��(Ů)',50,1);
  This_Npc.FillGoods('��ħ����(��)',50,1);
  This_Npc.FillGoods('��ħ����(Ů)',30,1);
  This_Npc.FillGoods('ս�����(��)',30,1);
  This_Npc.FillGoods('ս�����(Ů)',30,1);
  This_Npc.SetRebate(100);
end;

//�ű�ִ�е����
begin
  domain;
end.