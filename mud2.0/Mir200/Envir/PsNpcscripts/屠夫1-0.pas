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

procedure _normal;
begin
   This_NPC.NpcDialog(This_Player,
   '����������?\ \'
   +'|{cmd}<��/@sell>  ��\'
   +'|{cmd}<ѯ��/@meathelp> ��εõ���\'
   +'|{cmd}<ȡ��/@exit>\'
   );

end;

procedure domain;
begin

   if This_Player.GetBagItemCount('����Ҷ') >= 1 then
   This_NPC.NpcDialog(This_Player,
   '�Ͽ�������ϵı���Ҷ�͸�ҩ���ϰ�ɣ�\\'
   +'|{cmd}<ȷ��/@exit>\'
   +'��Ҫ<����/@normal>')
   else
   
    begin
        if This_Player.GetV(11,7) = 1 then
        begin
           if (This_Player.GetBagItemCount('��') >= 1) and (This_Player.GetBagItemCount('����') >= 1) then
           This_NPC.NpcDialog(This_Player,
           '���ҿ���....��....�ð�\'
           +'���ڳ���������\'
           +'�һ����һƿ��ҩ��Ϊ����\'
           +'|{cmd}<ȷ��/@newnew1_1>\'
           +'|{cmd}<����/@new1_2>'
           )
           else
           This_NPC.NpcDialog(This_Player,
           '���Ǵ�����λƯ����Ů�������������?\'
           +'�����ֻ������������Ҹ���?\'
           +'�ҿɲ�����Ϊһ���Ŷ������κκô���\'
           +'�Ҳ��Ǻ������������,�����ҵ�Ҫ��ȥ��\'
           +'Ϊ��������������,ȥɱһͷ¹��һֻ��,���ڳ���������\'
           +'�ҵ��ǿ��Կ��Ǹ�����������\\'
           +'|{cmd}<ȷ��/@exit>'
           );
        
        end
        else if This_Player.GetV(11,7) = 2 then
        begin
           This_NPC.NpcDialog(This_Player,
           '�������\'
           +'�㻹���е�����.���������ǲ����\'
           +'��....�����ﻹ��һ�ݹ���\'
           +'�㻹����Ȥ����?\\'
           +'|{cmd}<�����̫����!/@job>\'
           +'|{cmd}<�Һ�æ,û����Ȥ/@new1_12>'
           );
        end
        else
        _normal;
    end; 
end;  

  



procedure _new1_2;
begin
      if This_Player.GetBagItemCount('������') >= 1 then
      begin
         This_Player.Take('������',1);
         This_Player.SetV(11,7,100);
         This_NPC.NpcDialog(This_Player,
         '���ǿ�������С椵������ϲŸ����������\'
         +'��Ȼ�㲻Ը��\'
         +'�Ǿ�����\'
         +'�������Ҳ������\'
         
         );
      end;
end;  

procedure _newnew1_1;
begin
    if (This_Player.GetBagItemCount('��') >= 1) and (This_Player.GetBagItemCount('����') >= 1) and (This_Player.GetV(11,7) = 1) then
    begin
        if (This_Player.GetBagItemCount('������') >= 1) then
        begin
            This_Player.Take('��',1);
            This_Player.Take('����',1);
            This_Player.Take('������',1);
            This_Player.Give('��ҩ(С��)',1);
            This_Player.SetV(11,7,2);
           This_NPC.NpcDialog(This_Player,
           '�������\'
           +'�㻹���е�����.���������ǲ����\'
           +'��....�����ﻹ��һ�ݹ���\'
           +'�㻹����Ȥ����?\\'
           +'|{cmd}<�����̫����!/@job>\'
           +'|{cmd}<�Һ�æ,û����Ȥ/@new1_12>'
           );
        end else
        This_NPC.NpcDialog(This_Player,
           '���ǲ��ǰѽ�����Ū���ˣ�'
           );
    end
    else
   This_NPC.NpcDialog(This_Player,
   '�����ƭ�ӣ�'
   
   );

end;  

 

procedure _new1_12;
begin
   This_Player.SetV(11,7,100);
   This_NPC.NpcDialog(This_Player,
   '���ϧ\'
   +'��ӭ���Ժ󾭳�����ҵ�С��\'
   +'|{cmd}<ȷ��/@exit>'
   +'����<����/@normal>'
   
   );

end;  


procedure _job;
begin
    if This_Player.GetV(11,7) = 2 then
    begin
        if This_Player.FreeBagNum > 0 then
        begin
             This_NPC.NpcDialog(This_Player,
             '����ҩ�������ͷ����Ҫ�����\'
             +'����Ұ���鱡��Ҷ��ȥ����\'
             +'��һ����ܸм����\'
             +'���Բ�Ҫ͵�԰�!\'
             +'|{cmd}<ȷ��/@exit>'
             
             );
           This_Player.SetV(11,7,3);
           This_Player.Give('����Ҷ',1);
        end else
        This_NPC.NpcDialog(This_Player,
       '��İ���Ҳ̫���˰ɣ�'
       
       );
    end;
end;  




procedure _Sell;
begin
   This_NPC.NpcDialog(This_Player,
   '���ǳ��߼��������,\'
   +'������Щ���۵������\'
   +'�������˵�����������ۺܵ�.\ \'
   +'|{cmd}<����/@normal>'
   
   
   
   
   
   
   );

  This_Npc.Click_Sell(This_Player);
end;

procedure _meathelp;
begin
   This_NPC.NpcDialog(This_Player,
   '����ԴӼ�,¹,��,�ǵ����ϵõ���. ����,ɱ������,��Ϊ����\'
   +'����Ĺ����»ᷴ����Ȼ�����ߵ�ʬ���Աߵĵط���סALT��\'
   +'ͬʱ�������������ʬ��Ȼ����ͻῴ���Լ������г����.\'
   +'����֮����İ�����ͻ����һ����ζ�����.���������ܵ�\'
   +'�����и���������.����, ʹ��ħ����ʹ��������½���0 \ \'
   +'|{cmd}<����/@normal>'
   
   
   
   
   );

end;  

//��ʼ������
procedure OnInitialize;
begin
  This_Npc.AddStdMode(40);
  This_Npc.AddStdMode(1);
  This_Npc.SetRebate(100);
end;  

//�ű�ִ�е����
begin
  domain;
end.