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
   +'|<�йض�ҩ��˵��./@helpmakedrug>\'
   +'|{cmd}<���жԻ�./@news>\'
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
  '��ɫ���۵�ԭ���� <ʳ�����Ĺ���/@helpitem_1> 2����\��֩������ 4��,\ʳ����Ҷ 8����\ \|{cmd}<����/@helpmakedrug>'
  );
end;

procedure _helpmakedrug2;
begin
  This_Npc.NpcDialog(This_Player,
  '��ɫ���۵�ԭ���� <����/@helpitem_2> 2��, Ы�ӵ�β��\4��, ʳ����Ҷ 8����\ \|{cmd}<����/@helpmakedrug>'
  );
end;

procedure _helpitem_1;
begin
  This_Npc.NpcDialog(This_Player,
  '�о�ʳ�˲ݿ��Եõ�ʳ�����Ĺ��ӣ�\����5��ʳ�˲��п��Եõ���ʵ�ģ�\ֻ��1����\ \|{cmd}<����/@helpmakedrug1>'
  );
end;

procedure _helpitem_2;
begin
  This_Npc.NpcDialog(This_Player,
  'ץ����Ѩ��Ķ������Ϳ��Եõ����ѡ�\������ԲԲ�ļ롣\ \|{cmd}<����/@helpmakedrug2>'
  );
end;


procedure _new3_21;
begin
    if This_Player.GetV(11,7) = 7 then
    begin
      This_Player.Give('��ͳ����',1);
      This_Player.SetV(11,7,100);
       This_NPC.NpcDialog(This_Player,
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
    if This_Player.GetV(11,7) = 7 then
    begin
       This_Player.Give('����ҩ',1);
       This_Player.SetV(11,7,8);
       This_NPC.NpcDialog(This_Player,
       '�����?\'
       +'��������ô�������������ĳ���õ�����!\'
       +'��Ȼ��ִ�����,��Ҳ����ǿ����\'
       +'������һ��Ը���ٰ���һ��.\'
       +'����һ�������ڱ���Ƿ�����ݽ����书\'
       +'����Ұ���ƿ����ҩ�͸�����!\'
       +'ǧ��Ҫ����·�ϰ�!\\'
       +'|{cmd}<ѯ��/@ask>��ݵ�λ��\'
       +'|{cmd}<ȷ��/@exit>'
       
       );
    end;
end;

procedure _ask;
begin
   This_NPC.NpcDialog(This_Player,
   '��������ڱ���ǵ����Ϸ�\'
   +'������ڱ���ʡ���в�\'
   +'����300,300���ҵĵط�\'
   +'ף��һ·˳��!�������ٸ����·��,��Ҫ�ƴ�Ŷ\\'
   +'|{cmd}<��ȡ·��/@lufei>'
   );

end;


procedure _lufei;
begin
   if This_Player.GetV(11,7) = 8 then
   begin
   This_Player.AddGold(200);
   This_Player.SetV(11,7,9);
   This_NPC.NpcDialog(This_Player,
   '�պ�,��Ҫ����͵��Ŷ\\'
   +'|{cmd}<�ټ���/@exit>'
   );
   
   end;
end;

procedure _news;
var
num,duramax,duraav : integer;
num_1,duramax_1,duraav_1 : integer;
begin
    if (This_Player.GetBagItemCount('����Ҷ') >= 1) and (This_Player.GetV(11,7) = 3) then
    begin
        if This_Player.Level >= 11 then
        begin
        This_Player.Take('����Ҷ',1);
        This_Player.SetV(11,7,100);
           This_NPC.NpcDialog(This_Player,
           '�����Ǹ��������ҳ��ܵ������͸��ҵı���Ҷ��?\'
           +'�벻����������....\'
           +'' + This_Player.Name + ',���治��!\'
           +'��������������ⱡ��Ҷ�Ҿ�������!\\'
           +'|{cmd}<ȷ��/@exit>'
           );
        
        end else
        begin
           This_Player.Take('����Ҷ',1);
           This_Player.SetV(11,7,6);
           This_NPC.NpcDialog(This_Player,
           '�����Ǹ�çײ������������������?\'
           +'���벻��������ͦϸ��\'
           +'����лл����!\'
           +'��������������ⱡ��Ҷ�Ҿ�������\'
           +'����������绹ȱһЩ���ϰ�\'
           +'���ܰ���������?\\'
           
           +'|{cmd}<����/@new2_21>,�Һ����������\'
           +'|{cmd}<��Ǹ/@new2_22>,�Һ�æ,�ﲻ����\'
           
           );
        
        end;
    end
    else
    if This_Player.GetV(11,7) = 6 then
    begin

         This_Player.CheckBagItemEx('����',num,duramax,duraav);
         This_Player.CheckBagItemEx('��',num_1,duramax_1,duraav_1);
         
         //This_Player.PlayerNotice('����:' + inttostr(num) + '-' + inttostr(duramax),2);
         //This_Player.PlayerNotice('��:' + inttostr(num_1) + '-' + inttostr(duramax_1),2);
      
          if (num >= 5) and (duramax > 4500) and  (num_1 >= 5) and (duramax_1 > 11500) then 
          begin
              This_Player.Take('����',5);
              This_Player.Take('��',5);
              
              if This_Player.Level >= 11 then
              begin
                  This_Player.AddGold(1000);
                  This_Player.SetV(11,7,100);
                 This_NPC.NpcDialog(This_Player,
                 '��л���͸�����Щ��\'
                 +'��ЩǮ�Ǹ���ı���\'
                 +'���������\\'
                 +'|{cmd}<ȷ��/@exit>'
                 );
              
              end
              else
              begin
                 This_Player.SetV(11,7,7);
                 This_NPC.NpcDialog(This_Player,
                 '������\'
                 +'����̫��л����\'
                 +'���' + This_Player.Name + '?\'
                 +'������ֽ���һ���ᴫ��������½��\'
                 +'�����Ҽ��洫��һ����ͳ����\'
                 +'�͸������������!\'
                 
                 +'|{cmd}<����/@new3_21>\'
                 +'����Ϊ����֮��,<�Ҳ���Ҫ/@new3_22>'
                 
                 );
              
              end;
          end else
                 This_NPC.NpcDialog(This_Player,
               '�����Ǹ�çײ������������������?\'
               +'���벻��������ͦϸ��\'
               +'����лл����!\'
               +'��������������ⱡ��Ҷ�Ҿ�������\'
               +'����������绹ȱһЩ���ϰ�\'
               +'���ܰ���������?\\'
               
               +'|{cmd}<����/@new2_21>,�Һ����������\'
               +'|{cmd}<��Ǹ/@new2_22>,�Һ�æ,�ﲻ����\'
               
               )
    end else
    if This_Player.GetV(11,7) = 7 then
    This_NPC.NpcDialog(This_Player,
   '������\'
   +'����̫��л����\'
   +'���' + This_Player.Name + '?\'
   +'������ֽ���һ���ᴫ��������½��\'
   +'�����Ҽ��洫��һ����ͳ����\'
   +'�͸������������!\'
   
   +'|{cmd}<����/@new3_21>\'
   +'����Ϊ����֮��,<�Ҳ���Ҫ/@new3_22>'
   
   ) else
    if This_Player.GetV(11,7) = 8 then
    This_NPC.NpcDialog(This_Player,
   '��������ڱ���ǵ����Ϸ�\'
   +'������ڱ���ʡ���в�\'
   +'����300,300���ҵĵط�\'
   +'ף��һ·˳��!�������ٸ����·��,��Ҫ�ƴ�Ŷ\\'
   +'|{cmd}<��ȡ·��/@lufei>'
   ) else
    begin
    if random(2) = 0 then
    
       This_NPC.NpcDialog(This_Player,
       '�ҵ��������ҽԶ������,ɶë��������!\'
       +'���ڱ������ҩ��ĸ���\'
       +'Ҳ�Ǻ�������ҩ��ʦŶ\\'
       +'|{cmd}<����/@Main>'
       
       )
       else
       This_NPC.NpcDialog(This_Player,
       '������Ҫ�������\'
       +'���ǻ�ȱ��5���¹���5��ü���\'
       +'��ô�찡?\\'
       +'|{cmd}<����/@Main>'
       );
    
    end;
end;

procedure _new2_22;
begin
   This_NPC.NpcDialog(This_Player,
   '���ǿ�ϧ\'
   +'�ټ���\\'
   +'|{cmd}<�ټ�/@exit>' 
   );

end;

procedure _new2_21;
begin
   This_NPC.NpcDialog(This_Player,
   '�����?̫����\'
   +'�������5��Ʒ��12���ϵ���\'
   +'��5��Ʒ��5���ϵļ���\'
   +'����ҵ��Ļ��뾡�����\'
   
   +'|{cmd}<����/@new2_211>\'
   +'|{cmd}<̫����/@new2_212>,����ɲ���'
   );

end;

procedure _new2_212;
begin
   This_NPC.NpcDialog(This_Player,
   '������\'
   +'�����ұ��˰�æ��!\\'
   +'|{cmd}<ȷ��/@exit>'
   );

end;

procedure _new2_211;
begin
   This_NPC.NpcDialog(This_Player,
   '�����������Χ�кܶ�¹��,����\'
   +'����������õ��㹻����\'
   +'|{cmd}<ȷ��/@exit>'
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