{********************************************************************

*******************************************************************}


program mir2;

{$I common.pas}
{$I ActiveValidateCom.pas}

procedure _DoExit;
begin
  This_Npc.CloseDialog(This_Player);
end;

procedure NormalDialog;
begin

   This_Npc.NpcDialog(This_Player,
   'ʲô������֪��ʲô����˭��������������ģ�\|'
   +'�����϶������������Ǹ����ĵܵ�˵��! \|'
   +'��������������ز�ס�ˡ�\|'
   +'��Ȼ�㷢�����ң����ҾͰ���һ�ѡ�\|'
   +'ֻҪ��׼�������²��ϣ��ҿ��԰���ϳ��������Ʒ��\|'
   +'�ؽ�۸񰺹�,�������ߵ�!\|'
   +'<���ϲ�����Ҫ��һ������˽��ʯ���Ų�����!/c=red> \|'
   +'���㣬���Ը�ǿ��\|'
   //+'|{cmd}<�����칤����Ĺ���/@gongdian>\' 
   
   +'|{cmd}<�ϳ��ؽ�/@hecheng5>\'
   +'|{cmd}<�˳�/@doexit>'
   );

end;

procedure _hecheng5;
begin
  This_Npc.NpcDialog(This_Player,
  '�ϳ���Ҫ����Ʒ����ڰ���һ��Լ��鿴�����Ƿ���ȫ\ \'+
  
  '|{cmd}<�����ָ/@DsH1>           ^<�����ָ/@DsH2>\'+
  '|{cmd}<��Խ�ָ/@DsH3>           ^<�����ָ/@DsH4>\'+
  '|{cmd}<����/@main>');
end;

Procedure DuanZaoMB3(tu07:string; tu08:string; tu09:string; tu10:string; tu11:string; tu12:string; DZItem3:string);
begin
   if ( This_Player.GetBagItemCount(tu07) >= 1 ) and ( This_Player.GetBagItemCount(tu08) >= 1 ) 
      and ( This_Player.GetBagItemCount(tu09) >= 1 ) and ( This_Player.GetBagItemCount(tu10) >= 1 ) 
      and ( This_Player.GetBagItemCount(tu11) >= 1 ) and ( This_Player.GetBagItemCount(tu12) >= 1 ) 
         and  ( This_Player.GetBagItemCount('���ʯ') >= 66666 ) then  
   begin
      This_Player.Take(tu07,1);
      This_Player.Take(tu08,1);
      This_Player.Take(tu09,1);
      This_Player.Take(tu10,1);
      This_Player.Take(tu11,1);
      This_Player.Take(tu12,1);
      This_Player.Take('���ʯ',66666);
      This_Player.Give(DZItem3,1);
     
      This_NPC.NpcDialog(This_Player,
      '��ϲ���������Ѿ��ɹ�����ȥ�������İ����ɣ�');
       ServerSay('�귨��½��Ȼ����ɫ�䣬��ҡ���'+ This_Player.Name+'���������سɹ��������˵�еġ��������ָ�����ҿ���ǰ��Ĥ�ݣ�',3);
   end else 
   begin
      This_NPC.NpcDialog(This_Player,
      '�ܿ�ϧ����û�ж���������㹻ԭ�ϡ�');
   end;
 end;
 
 
procedure _DsH1 ;                     
begin
   This_Npc.NpcDialog(This_Player,
   '�ϳ�<�����ָ/c=red>������Ʒ��\'+
   '���ʯ��66666��\'+
   '3ְҵ������6�� \ \'+
   '���Ȼ����������ң�ȡ￪������������� \ \'+
   '����<����/@yi1>\'+
  
   '|{cmd}<�ر�/@exit>');
end;

Procedure _yi1;
Begin

      DuanZaoMB3('��ң��','����','�Ȼ귨��','����','����','����','�����ָ');
      
end; 




 
 
 
procedure _DsH2 ;                     
begin
   This_Npc.NpcDialog(This_Player,
   '�ϳ�<�����ָ/c=red>������Ʒ��\'+
   '���ʯ��66666��\'+
   '3����ң��+3������\ \'+
   '����<����/@yi2>\'+
  
   '|{cmd}<�ر�/@exit>');
end;

Procedure _yi2;
Begin

      DuanZaoMB3('��ң��','��ң��','��ң��','����','����','����','�����ָ');
      
end; 

procedure _DsH3 ;                     
begin
   This_Npc.NpcDialog(This_Player,
   '�ϳ�<��Խ�ָ/c=red>������Ʒ��\'+
   '���ʯ��66666��\'+
   '3������+3�ѿ���\ \'+
   '����<����/@yi3>\'+
  
   '|{cmd}<�ر�/@exit>');
end;

Procedure _yi3;
Begin

      DuanZaoMB3('����','����','����','����','����','����','��Խ�ָ');
      
end;
procedure _DsH4 ;                     
begin
   This_Npc.NpcDialog(This_Player,
   '�ϳ�<�����ָ/c=red>������Ʒ��\'+
   '���ʯ��66666��\'+
   '3���Ȼ귨��+3������\ \'+
   '����<����/@yi4>\'+
  
   '|{cmd}<�ر�/@exit>');
end;

Procedure _yi4;
Begin

      DuanZaoMB3('�Ȼ귨��','�Ȼ귨��','�Ȼ귨��','����','����','����','�����ָ');
      
end;

//�ű�ִ�е����
begin
  //domain;
  NormalDialog;
end.