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
      '��ӭ��������Щ�似����������\ \'
      +'|{cmd}<��/@buy>  ��\'
      +'|{cmd}<��/@sell>  �� \'
      +'|{cmd}<ѯ�ʸ����似��ϸ��/@helpbooks>  \'
      +'|{cmd}<��̸/@talk>\'
      +'|{cmd}<ȡ��/@exit>'
      
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
      '������������Ȥ��\ \'
      +'��ʿ����ѧ<��������/@help11>��<��ɱ����/@help12>\'
      +'ħ��ʦ����ѧ<������/@help21>��<���ѻ���/@help23>'
      +'��ʿ����ѧ<������/@help31>,<������ս��/@help32>,��\'
      +'<ʩ����/@help33>\ \'
      +'|{cmd}<����/@Main>'
      
      );

end;

procedure _help11;
begin
This_Npc.NpcDialog(This_Player,
      '������������԰����²���������\'
      +'Lv.1 : ������ڵ� 7 ����ʼ����\'
      +'Lv.2 : ������ڵ� 11 ����ʼ����\'
      +'Lv.3 : ������ڵ� 16 ����ʼ����\\'
      +'|{cmd}<����/@helpbooks>'
      );

end;

procedure _help12;
begin
This_Npc.NpcDialog(This_Player,
      '��ɱ��������԰����²���������\'
      +'Lv.1 : ������ڵ� 20 ����ʼ������\'
      +'Lv.2 : ������ڵ� 22 ����ʼ������\'
      +'Lv.3 : ������ڵ� 24 ����ʼ������\\'
      +'|{cmd}<����/@helpbooks>'
      );

end;

procedure _help21;
begin

This_Npc.NpcDialog(This_Player,
      '����������԰����²���������\'
      +'Lv.1: ������ڵ� 7 ����ʼ������\'
      +'Lv.2: ������ڵ� 11 ����ʼ������\'
      +'Lv.3: ������ڵ� 16 ����ʼ������\\'
      +'|{cmd}<����/@helpbooks>'
      );

end;

procedure _help23;
begin
This_Npc.NpcDialog(This_Player,
      '���ѻ�������԰����²���������\'
      +'Lv.1: ������ڵ� 22 ����ʼ������\'
      +'Lv.2: ������ڵ� 27 ����ʼ������\'
      +'Lv.3: ������ڵ� 31 ����ʼ������\\'
      +'|{cmd}<����/@helpbooks>'
      );

end;

procedure _help31;
begin
This_Npc.NpcDialog(This_Player,
      '����������԰����²���������\'
      +'Lv.1 : ������ڵ� 7 ����ʼ����.\'
      +'Lv.2 : ������ڵ� 11 ����ʼ����.\'
      +'Lv.3 : ������ڵ� 16 ����ʼ����. \\'
      +'  <����/@helpbooks>'
      );

end;

procedure _help32;
begin
This_Npc.NpcDialog(This_Player,
      '������ս������԰����²���������\'
      +'Lv.1 : ������ڵ� 9 ����ʼ����.\'
      +'Lv.2 : ������ڵ� 13 ����ʼ����.\'
      +'Lv.3 : ������ڵ� 19 ����ʼ����.\\'
      +'  <����/@helpbooks>'
      );

end;

procedure _help33;
begin
This_Npc.NpcDialog(This_Player,
      'ʩ��������԰����²���������\'
      +'Lv.1 : ������ڵ� 14 ����ʼ����.\'
      +'Lv.2 : ������ڵ� 17 ����ʼ����.\'
      +'Lv.3 : ������ڵ� 20 ����ʼ����.\\'
      +'|{cmd}<����/@helpbooks>'
      
      
      
      
      
      
      );

end;

procedure _talk;
begin
This_Npc.NpcDialog(This_Player,
      '���������ѧ�߼��ʦ,�Ҷ��ҵ�ѧ��������\'
      +'��Ϊ���������Ǿ���ĳɲ�\\'
      +'|{cmd}<�ٶ�����/@new>\'
      +'|{cmd}<����/@Main>\\'
      );

end;

procedure _new;
var
num,duramax,duraav : integer;
num_1,duramax_1,duraav_1 : integer;
begin
   This_Player.CheckBagItemEx('����',num,duramax,duraav);
   This_Player.CheckBagItemEx('��',num_1,duramax_1,duraav_1);
    if (This_Player.GetBagItemCount('����') >= 1) and (This_Player.GetV(11,7) = 5) then
    begin
        if This_Player.Level >= 11 then
        begin
        This_Player.Take('����',1);
        This_Player.SetV(11,7,100);
        This_Npc.NpcDialog(This_Player,
              '������������ѧ���͸��ҵķ�����?\'
              +'�벻����Ҳ����ĵ���....\'
              +'' + This_Player.Name + ',лл�㰡!\'
              +'��������������!\\'
              +'|{cmd}<ȷ��/@exit>'
              );
        
        end else
        begin
        This_Player.Take('����',1);
        This_Player.SetV(11,7,10);
        This_Npc.NpcDialog(This_Player,
              '������������ѧ���͸��ҵķ�����?\'
              +'�벻����Ҳ����ĵ���....\'
              +'����лл����!\'
              +'��������������\'
              +'����������绹ȱһЩ���ϰ�\'
              +'���ܰ���������?\\'
              
              +'|{cmd}<����/@new2_21>,�Һ����������\'
              +'|{cmd}<��Ǹ/@new2_22>,�Һ�æ,�ﲻ����\'
              );
        
        end;
    
    end else
    if This_Player.GetV(11,7) = 10 then
    begin
   

        if (num >= 5) and (duramax > 4500) and  (num_1 >= 5) and (duramax_1 > 11500) then 
        begin
            This_Player.Take('����',5);
            This_Player.Take('��',5);
            This_Player.AddGold(1000);
    
    
            if This_Player.Level >= 11 then
            begin
            This_Npc.NpcDialog(This_Player,
                  '��л���͸�����Щ��\'
                  +'��ЩǮ�Ǹ���ı���\'
                  +'���������\\'
                  +'|{cmd}<ȷ��/@exit>'
                  
                  );
                 This_Player.SetV(11,7,100);
            end else
            begin
                This_Player.SetV(11,7,11);
                 This_Npc.NpcDialog(This_Player,
                  '������\'
                  +'����̫��л����\'
                  +'' + This_Player.Name + '\'
                  +'������ֽ���һ���ᴫ��������½��\'
                  +'�����ҼҴ����ഫ��һ����ͳ����\'
                  +'�͸������������!\'
                  
                  +'|{cmd}<����/@new3_21>\'
                  +'����Ϊ����֮��,<�Ҳ���Ҫ/@new3_22>'
                  
                  
                  );
            
            end;
          
        end else
        This_Npc.NpcDialog(This_Player,
              '������������ѧ���͸��ҵķ�����?\'
              +'�벻����Ҳ����ĵ���....\'
              +'����лл����!\'
              +'��������������\'
              +'����������绹ȱһЩ���ϰ�\'
              +'���ܰ���������?\\'
              
              +'|{cmd}<����/@new2_21>,�Һ����������\'
              +'|{cmd}<��Ǹ/@new2_22>,�Һ�æ,�ﲻ����\'
              );
    end else
    if This_Player.GetV(11,7) = 11 then
    This_Npc.NpcDialog(This_Player,
                  '������\'
                  +'����̫��л����\'
                  +'' + This_Player.Name + '\'
                  +'������ֽ���һ���ᴫ��������½��\'
                  +'�����ҼҴ����ഫ��һ����ͳ����\'
                  +'�͸������������!\'
                  
                  +'|{cmd}<����/@new3_21>\'
                  +'����Ϊ����֮��,<�Ҳ���Ҫ/@new3_22>'
                  
                  
                  )
    else if This_Player.GetV(11,7) = 12 then 
    This_Npc.NpcDialog(This_Player,
      '��������ڱ���ǵ����Ϸ�\'
      +'������ڱ���ʡ���в�\'
      +'����300,300���ҵĵط�\'
      +'ף��һ·˳��!�������ٸ����·��,��Ͳ�Ҫ�ƴ���\\'
      +'|{cmd}<��ȡ·��/@lufei>'
      )
    else
    begin
    This_Npc.NpcDialog(This_Player,
          '��������Ĳ�������Ӧ�о�����,�����Ǳȱ���Ǳ�����Щ\'
          +'����Ǳ����������һ��˫���ֵ�����Ӫ�ĵ���\'
          +'�������û����Ҫ����,�����ȥ���￴��\\'
          +'|{cmd}<����/@Main>'
          );
    
    end;
end;







procedure _new2_22;
begin
This_Npc.NpcDialog(This_Player,
      '���ǿ�ϧ��\'
      +'���ټ���\'
      +'|{cmd}<�ټ�/@exit>'
      );

end;

procedure _new2_21;
begin
This_Npc.NpcDialog(This_Player,
      '�����?̫���˷ǳ���л�㰡\'
      +'�������5��Ʒ��12���ϵ���\'
      +'��5��Ʒ��5���ϵļ���\'
      +'����ҵ��Ļ��뾡�����\'
      
      +'|{cmd}<����/@new2_211>\'
      +'|{cmd}<̫����/@new2_212>,����ɲ���'
      );

end;

procedure _new2_212;
begin
This_Npc.NpcDialog(This_Player,
      '������\'
      +'���һ����ұ��˰�æ��!�����Ҿ�������\'
      );

end;

procedure _new2_211;
begin
This_Npc.NpcDialog(This_Player,
      '�����������Χ�кܶ�¹��,����\'
      +'��Ӧ����������õ��㹻����\'
      +'|{cmd}<ȷ��/@exit>'
      );

end;


procedure _new3_21;
begin
    if This_Player.GetV(11,7) = 11 then
    begin
      This_Player.Give('��ͳ����',1);
      This_Player.SetV(11,7,100);
      This_Npc.NpcDialog(This_Player,
      '��������\'
      +'ϣ���ܶ�����������\'
      +'��Ҫ���������С��ׯ��\'
      +'�¸ҵ����갡!��ȥ�����漣!\\'
      +'|{cmd}<�ټ�/@exit>'
      );
    end;
end;

procedure _new3_22;
begin
    if This_Player.GetV(11,7) = 11 then
    begin
    This_Player.Give('������',1);
    This_Player.SetV(11,7,12);
    This_Npc.NpcDialog(This_Player,
      '�����?\'
      +'��������ô�������������ĳ���õ�����!\'
      +'��Ȼ��ִ�����,��Ҳ����ǿ����\'
      +'������һ��Ը���ٰ���һ��.\'
      +'����һ��ֶ���ڱ���Ƿ�����ݽ����书\'
      +'����Ұ������������͸�����!\'
      +'ǧ��Ҫ����·�ϰ�!\\'
      +'|{cmd}<ѯ��/@ask>��ݵ�λ��\'
      +'|{cmd}<ȷ��/@exit>'
      
      
      );
    end;
end;

procedure _ask;
begin
    This_Npc.NpcDialog(This_Player,
      '��������ڱ���ǵ����Ϸ�\'
      +'������ڱ���ʡ���в�\'
      +'����300,300���ҵĵط�\'
      +'ף��һ·˳��!�������ٸ����·��,��Ͳ�Ҫ�ƴ���\\'
      +'|{cmd}<��ȡ·��/@lufei>'
      );

end;

procedure _lufei;
begin
    if This_Player.GetV(11,7) = 12 then
    begin
       This_Player.SetV(11,7,13);
      This_Player.AddGold(180);
      This_Npc.NpcDialog(This_Player,
            '�պ�,��Ҫ��������Ŷ\\'
            +'|{cmd}<�ټ���/@exit>'
            );
    end;
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
  This_NPC.FillGoods('�����', 100, 1);
  This_NPC.FillGoods('��ɱ����', 100, 1);
  This_NPC.FillGoods('ʩ����', 100, 1);
  This_NPC.FillGoods('���ܻ�', 100, 1);
  This_NPC.FillGoods('������', 100, 1);
  This_NPC.FillGoods('�׵���', 100, 1);
  This_NPC.FillGoods('�����Ӱ', 100, 1);
  This_NPC.FillGoods('�����', 100, 1);
  This_NPC.FillGoods('�����', 100, 1);
  This_NPC.FillGoods('��ʥս����', 100, 1);
  This_NPC.FillGoods('��ɱ����', 100, 1);
  This_NPC.FillGoods('��ħ��', 100, 1);
  This_NPC.FillGoods('�ٻ�����', 100, 1);
  This_NPC.FillGoods('������', 100, 1);
  This_NPC.FillGoods('����������', 100, 1);
  This_NPC.FillGoods('�ջ�֮��', 100, 1);
  This_NPC.FillGoods('˲Ϣ�ƶ�', 100, 1);
  This_NPC.FillGoods('��ǽ', 100, 1);
  This_NPC.FillGoods('���ѻ���', 100, 1);
  This_NPC.FillGoods('�����׹�', 100, 1);
  This_NPC.FillGoods('�����䵶', 100, 1);
  This_NPC.FillGoods('Ұ����ײ', 100, 1);
  This_NPC.FillGoods('������ʾ', 100, 1);
  This_NPC.FillGoods('Ⱥ��������', 100, 1);
  This_NPC.FillGoods('ħ����', 100, 1);
  This_NPC.FillGoods('ʥ����', 100, 1);
  This_Npc.SetRebate(100);
end;

//�ű�ִ�е����
begin
  domain;
end.    