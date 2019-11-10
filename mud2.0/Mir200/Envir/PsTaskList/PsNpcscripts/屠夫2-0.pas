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
    if This_Player.GetV(11,7) = 1 then
    begin
        if (This_Player.GetBagItemCount('��') >= 1) and (This_Player.GetBagItemCount('����') >= 1) then
       This_NPC.NpcDialog(This_Player,
       '���ҿ���....��ѽ....�Ǻð�\'
       +'���ڳ���������\'
       +'�һ����һƿ��ҩ��Ϊ����\'
       +'|{cmd}<�����/@newnew1_1>\'
       +'|{cmd}<����/@new1_2>'
       )
       else
       This_NPC.NpcDialog(This_Player,
       '���Ǵ�����λ����һ���Ů�������������?\'
       +'����Ϊֻ������������ҾͿ����кô���??\'
       +'�ҿɲ�����Ϊһ���Ŷ������κκô���\'
       +'�����ڲ��Ǻ������������,�����ҵ�Ҫ��ȥ��������\'
       +'Ϊ��������������,ȥɱһͷ¹��ɱһֻ�������ڳ���������\'
       +'�ҵ��ǿ��Կ��Ǹ�����������\\'
       +'|{cmd}<ȷ��/@exit>'
       
       );
    
    end else
    if This_Player.GetV(11,7) = 4 then
    This_NPC.NpcDialog(This_Player,
     '�������Ŷ\'
     +'�㻹���е�����.���������ǲ�����\'
     +'��....�����ﻹ��һ�ݲ���\'
     +'��Ҫ��Ҫ����?\\'
     +'|{cmd}<Ҫ��,�е���Ϊʲô����?!/@new1_11_2>\'
     +'|{cmd}<�Һ�æ,û����Ȥ/@new1_12>'
     
     )
    else
    _normal
end;  

 

procedure _new1_2;
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

procedure _newnew1_1;
begin
    if (This_Player.GetBagItemCount('��') >= 1) and (This_Player.GetBagItemCount('����') >= 1) and (This_Player.GetV(11,7) = 1) then
    begin
        if This_Player.GetBagItemCount('������') >= 1 then
        begin
            This_Player.Take('��',1);
            This_Player.Take('����',1);
            This_Player.Take('������',1);
            This_Player.Give('��ҩ(С��)',1);
            This_Player.SetV(11,7,4);
           This_NPC.NpcDialog(This_Player,
           '�������Ŷ\'
           +'�㻹���е�����.���������ǲ�����\'
           +'��....�����ﻹ��һ�ݲ���\'
           +'��Ҫ��Ҫ����?\\'
           +'|{cmd}<Ҫ��,�е���Ϊʲô����?!/@new1_11_2>\'
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
   '���ǿ�ϧ\'
   +'�����ҿ�������!\'
   +'�������ǻ�ӭ���Ժ󾭳�����ҵ�С���\\'
   +'|{cmd}<ȷ��/@exit>\'
   +'����<����/@normal>'
   
   );

end;  

procedure _new1_11_2;
begin
    if This_Player.GetV(11,7) = 4 then
    begin
        if This_Player.FreeBagNum > 0 then
        begin
             This_NPC.NpcDialog(This_Player,
             '�����������߽���Ҫ�����\'
             +'�����ҵ���ʦ,��ǰһֱ�������鷳\'
             +'�����������Ѳ�����\'
             +'������ܰ����͸���һ����ƵĻ�\'
             +'�һ�ܸм����\'
             +'���������Ǵ�����ߵ�����������\'
             +'лл��Ŷ\\'
             +'|{cmd}<��ȡ����/@exit>'
             
             
             );
        
            This_Player.Give('����',1);
            This_Player.SetV(11,7,5);
        end
    end else
    begin
       This_NPC.NpcDialog(This_Player,
       '�����������߽���Ҫ�����\'
       +'�ѷ����͸���\'
       +'����ܸ��˵�\'
       +'���������Ǵ�����ߵ�����������\'
       +'лл\\'
       +'|{cmd}<֪����/@exit>'
       
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