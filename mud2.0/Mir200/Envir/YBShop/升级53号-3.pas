

 procedure _sj53;                         
begin
   This_Npc.NpcDialog(This_Player,
   '��ѡ����Ҫ�һ���ѫ�£�ֻҪ���㹻��ԭ�ϣ��ͷ��Ľ����Ұɡ�\'+
   '|{cmd}<��ʼ����/@y1>\ \'+
   

    '|{cmd}<����/@main>');


end;


Procedure DuanZaoMB(tu01:string; tu02:string; tu03:string; DZItem:string);
Begin
if ( This_Player.GetBagItemCount(tu01) >= 1 ) and ( This_Player.GetBagItemCount(tu02) >= 1 ) 
      and ( This_Player.GetBagItemCount(tu03) >= 1 ) 
      and ( This_Player.YBNum >= 20000) then
   begin
      This_Player.Take(tu01,1);
      This_Player.Take(tu02,1);
      This_Player.Take(tu03,1);
     
      This_Player.Give(DZItem,1);
      This_NPC.NpcDialog(This_Player,
      '��ϲ���������Ѿ��ɹ�����ȥ�������İ����ɣ�');
   end else 
   begin
      This_NPC.NpcDialog(This_Player,
      '�ܿ�ϧ����û�ж���������㹻ԭ�ϡ�');
   end;
end;

procedure _y1;                         
begin
   This_Npc.NpcDialog(This_Player,
   '����53��ѫ��������Ʒ��\'+
   'Ԫ����2W��\'+
   '43��ѫ�£�44��ѫ�£�45��ѫ��\ \'+
   '����<����/@makey1>\'+
  
   '|{cmd}<�ر�/@exit>');
end;

Procedure _makey1;
Begin
   if This_Player.YBNum >= 20000 then
   This_Player.PsYBConsum(This_NPC,'ForgeDiaYB',20190,20000,1); 
   DuanZaoMB('����ѫ��43��','����ѫ��44��','����ѫ��45��','����ѫ��53��');
end;




//�ű�ִ�е����
Begin
   This_Npc.NpcDialog(This_Player,
   '�����������Ԫ������ѫ�£�\'+
   '������Ʒ����Ҫ����ʱ�䣬�ٷְ������ɹ���\'+
   '�������43�ţ�44�ţ�45������ѫ�£����Ե�\'+   
   '������������53��ѫ�£���ħ6-7����ħ��6-7\'+   
     
   '|{cmd}<����53��ѫ��/@sj53>'); 

end.    