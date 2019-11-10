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
var
num,duramax,duraav : integer;
num_1,duramax_1,duraav_1 : integer;
begin
   This_Player.CheckBagItemEx('����',num,duramax,duraav);
   This_Player.CheckBagItemEx('��',num_1,duramax_1,duraav_1);
   
   This_Player.PlayerNotice('����:' + inttostr(num) + '-' + inttostr(duramax),2);
   This_Player.PlayerNotice('��:' + inttostr(num_1) + '-' + inttostr(duramax_1),2);

    if (num >= 5) and (duramax > 3500) and  (num_1 >= 5) and (duramax_1 > 9500) then 
    begin
        This_Player.Take('����',5);
        This_Player.Take('��',5);
        
        if This_Player.Level >= 11 then
        begin
            This_Player.AddGold(1000);
           This_NPC.NpcDialog(This_Player,
           '��л���͸�����Щ��\'
           +'��ЩǮ�Ǹ���ı���\'
           +'���������\\'
           +'|<ȷ��/@exit>'
           );
        
        end
        else
        begin
           This_NPC.NpcDialog(This_Player,
           '������\'
           +'����̫��л����\'
           +'���' + This_Player.Name + '?\'
           +'������ֽ���һ���ᴫ��������½��\'
           +'�����Ҽ��洫��һ����ͳ����\'
           +'�͸������������!\'
           
           +'|<����/@new3_21>\'
           +'����Ϊ����֮��,<�Ҳ���Ҫ/@new3_22>'
           
           );
        
        end;
    end else
    This_NPC.NpcDialog(This_Player,
   '��������ʲôҩ��\ \'
   +'|<��/@makedrug>ҩ\'
   +' �йض�ҩ<��˵��./@helpmakedrug>\'
   +'|<���жԻ�./@news>\'
   +'|<�ر�/@exit>'
   );
end;


procedure _makedrug;
begin
   This_NPC.NpcDialog(This_Player,
   '��ѡ������ʲôҩ��\'
   +'�������Ӧ�ô����˰ɣ�\ \'
   +'|<����/@main>'
   );
  This_Npc.Click_Makedrug(This_Player);
end;
procedure _helpmakedrug;
begin
  This_Npc.NpcDialog(This_Player,
  '�����������ҩֻ�����֡�\ \'
  +'|<��ɫ����/@helpdrug1>�Ĺ���\'
  +'|<��ɫ����/@helpdrug2>�Ĺ���\'
  +'|<��ɫ����/@helpmakedrug1>��ԭ��\'
  +'|<��ɫ����/@helpmakedrug2>��ԭ��\'
  +'|<����/@main>'
  );
end;

procedure _helpdrug1;
begin
  This_Npc.NpcDialog(This_Player,
  '��ʿ������ʹʩ����ʱ���û�ɫ���ۣ�\�ж������������\ \|<����/@helpmakedrug>'
  );
end;

procedure _helpdrug2;
begin
  This_Npc.NpcDialog(This_Player,
  '��ʿ������ʹʩ����ʱ���û�ɫ���ۣ�\�ж����������������\ \|<����/@helpmakedrug>'
  );
end;

procedure _helpmakedrug1;
begin
  This_Npc.NpcDialog(This_Player,
  '��ɫ���۵�ԭ���� <ʳ�����Ĺ���/@helpitem_1> 2����\��֩������ 4��,\ʳ����Ҷ 8����\ \|<����/@helpmakedrug>'
  );
end;

procedure _helpmakedrug2;
begin
  This_Npc.NpcDialog(This_Player,
  '��ɫ���۵�ԭ���� <����/@helpitem_2> 2��, Ы�ӵ�β��\4��, ʳ����Ҷ 8����\ \|<����/@helpmakedrug>'
  );
end;

procedure _helpitem_1;
begin
  This_Npc.NpcDialog(This_Player,
  '�о�ʳ�˲ݿ��Եõ�ʳ�����Ĺ��ӣ�\����5��ʳ�˲��п��Եõ���ʵ�ģ�\ֻ��1����\ \|<����/@helpmakedrug1>'
  );
end;

procedure _helpitem_2;
begin
  This_Npc.NpcDialog(This_Player,
  'ץ����Ѩ��Ķ������Ϳ��Եõ����ѡ�\������ԲԲ�ļ롣\ \|<����/@helpmakedrug2>'
  );
end;


procedure _new3_21;
begin
This_Player.Give('��ͳ����',1);
   This_NPC.NpcDialog(This_Player,
   '��������\'
   +'ϣ���ܶ�����������\'
   +'��Ҫ���������С��ׯ��\'
   +'�¸ҵ����갡!��ȥ�����漣!\\'
   +'|<�ټ�/@exit>'
   );

end;

procedure _new3_22;
begin
   This_Player.Give('����ҩ',1);
   This_NPC.NpcDialog(This_Player,
   '�����?\'
   +'��������ô�������������ĳ���õ�����!\'
   +'��Ȼ��ִ�����,��Ҳ����ǿ����\'
   +'������һ��Ը���ٰ���һ��.\'
   +'����һ�������ڱ���Ƿ�����ݽ����书\'
   +'����Ұ���ƿ����ҩ�͸�����!\'
   +'ǧ��Ҫ����·�ϰ�!\\'
   +'|<ѯ��/@ask>��ݵ�λ��\'
   +'|<ȷ��/@exit>'
   
   );

end;

procedure _ask;
begin
   This_NPC.NpcDialog(This_Player,
   '��������ڱ���ǵ����Ϸ�\'
   +'������ڱ���ʡ���в�\'
   +'����300,300���ҵĵط�\'
   +'ף��һ·˳��!�������ٸ����·��,��Ҫ�ƴ�Ŷ\\'
   +'|<��ȡ·��/@lufei>'
   );

end;


procedure _lufei;
begin
This_Player.AddGold(200);
   This_NPC.NpcDialog(This_Player,
   '�պ�,��Ҫ����͵��Ŷ\\'
   +'|<�ټ���/@exit>'
   
   );

end;

procedure _news;
begin
    if This_Player.GetBagItemCount('����Ҷ') >= 1 then
    begin
        if This_Player.Level >= 11 then
        begin
        This_Player.Take('����Ҷ',1);
           This_NPC.NpcDialog(This_Player,
           '�����Ǹ��������ҳ��ܵ������͸��ҵı���Ҷ��?\'
           +'�벻����������....\'
           +'' + This_Player.Name + ',���治��!\'
           +'��������������ⱡ��Ҷ�Ҿ�������!\\'
           +'|<ȷ��/@exit>'
           );
        
        end else
        begin
           This_Player.Take('����Ҷ',1);
           This_NPC.NpcDialog(This_Player,
           '�����Ǹ�çײ������������������?\'
           +'���벻��������ͦϸ��\'
           +'����лл����!\'
           +'��������������ⱡ��Ҷ�Ҿ�������\'
           +'����������绹ȱһЩ���ϰ�\'
           +'���ܰ���������?\\'
           
           +'|<����/@new2_21>,�Һ����������\'
           +'|<��Ǹ/@new2_22>,�Һ�æ,�ﲻ����\'
           
           );
        
        end;
    end
    else
    begin
    if random(2) = 0 then
    
       This_NPC.NpcDialog(This_Player,
       '�ҵ��������ҽԶ������,ɶë��������!\'
       +'���ڱ������ҩ��ĸ���\'
       +'Ҳ�Ǻ�������ҩ��ʦŶ\\'
       +'|<����/@Main>'
       
       )
       else
       This_NPC.NpcDialog(This_Player,
       '������Ҫ�������\'
       +'���ǻ�ȱ��5���¹���5��ü���\'
       +'��ô�찡?\\'
       +'|<����/@Main>'
       );
    
    end;
end;









procedure _new2_22;
begin
   This_NPC.NpcDialog(This_Player,
   '���ǿ�ϧ\'
   +'�ټ���\\'
   +'|<�ټ�/@exit>' 
   );

end;

procedure _new2_21;
begin
   This_NPC.NpcDialog(This_Player,
   '�����?̫����\'
   +'�������5��Ʒ��12���ϵ���\'
   +'��5��Ʒ��5���ϵļ���\'
   +'����ҵ��Ļ��뾡�����\'
   
   +'|<����/@new2_211>\'
   +'|<̫����/@new2_212>,����ɲ���'
   );

end;

procedure _new2_212;
begin
   This_NPC.NpcDialog(This_Player,
   '������\'
   +'�����ұ��˰�æ��!\\'
   +'|<ȷ��/@exit>'
   );

end;

procedure _new2_211;
begin
   This_NPC.NpcDialog(This_Player,
   '�����������Χ�кܶ�¹��,����\'
   +'����������õ��㹻����\'
   +'|<ȷ��/@exit>'
   );

end;

//��ʼ������
procedure OnInitialize;
begin
  This_Npc.AddStdMode(0);
  This_Npc.AddStdMode(42);
  This_Npc.FillGoods('��ɫҩ��(����)',1,1);
  This_Npc.FillGoods('��ɫҩ��(����)',1,1);
  This_Npc.FillGoods('��ɫҩ��(����)',1,1);
  This_Npc.FillGoods('��ɫҩ��(����)',1,1);
  This_Npc.SetRebate(100);
end;

//�ű�ִ�е����
begin
  domain;
end.