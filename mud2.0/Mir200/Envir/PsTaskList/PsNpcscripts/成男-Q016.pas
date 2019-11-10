{********************************************************************

*******************************************************************}
program mir2;

{$I common.pas}

procedure _Exit;
begin
  This_Npc.CloseDialog(This_Player);
end;

Procedure domain;
begin
   //if This_Player.GetV(9,18) = 1 then
   if This_Player.GetV(11,1) >= 14 then 
   This_NPC.NpcDialog(This_Player,
   '�����Ķ�������֮��Ҳ����һ��������һ�ν���֮��\'
   +'�ǲ����������׵�. ���ȥ�� \ \'
   +'|{cmd}<ȡ��/@exit>'
   ) 
   else
   This_NPC.NpcDialog(This_Player,
   '�㵽����������, ���ܲ��ܿ��Ų���. \'
   +'��������������ô��ʱ�䣬���˼�������. \'
   +'��Щ����������������Ǯ�Ҳ�֪��. \'
   +'�����Ҷ���Щ������������. \'
   +'Ҫ�ۿ���Щ������?? \ \'
   +'|{cmd}<�ۿ�/@Q316_1> \'
   +'|{cmd}<����/@Q316_2>'
   );

end;

procedure _Q316_2;
begin
   This_NPC.NpcDialog(This_Player,
   '�����ǰ�? ��..�������, ��ô���ȥ��... \ \'
   +'|{cmd}<ȡ��/@exit>'
   );

end;

procedure _Q316_1;
begin
    case This_Player.Job  of
        0 : 
        begin
           This_NPC.NpcDialog(This_Player,
           '��ֻ���㿴һ���������Ķ���.������.\'
           +'��Ҫ�رմ���.\ '
           +'|{cmd}<����/@Q316_1_1>��������(����1,����18���ϵĽ��5��) \'
           +'|{cmd}<����/@Q316_1_4>����ף����(���50��ǿЧ̫��ˮ5) \'
           +'|{cmd}<����/@book1>�����䵶(120����)\'
           +'|{cmd}<ȡ��/@exit>'
           );
        
          
        end;
        1 :
        begin
        
           This_NPC.NpcDialog(This_Player,
           '��ֻ���㿴һ���������Ķ���.������.\'
           +'��Ҫ�رմ���.\ '
           +'|{cmd}<����/@Q316_1_3> ����ħ��(����1������18���ϵĽ��3)\'
           +'|{cmd}<����/@Q316_1_4>����ף����(���50��, ǿЧ̫��ˮ5) \'
           +'|{cmd}<����/@book2>ħ����(120����)\'
           +'|{cmd}<ȡ��/@exit>'
           
           );
        end;
        2 : 
        begin
           This_NPC.NpcDialog(This_Player,
           '��ֻ���㿴һ���������Ķ���.������.\'
           +'��Ҫ�رմ���.\ '
           +'|{cmd}<����/@Q316_1_2>��������(����1������18���ϵĽ��4) \'
           +'|{cmd}<����/@Q316_1_4>����ף����(���50��, ǿЧ̫��ˮ5) \'
           +'|{cmd}<����/@book3>��ħ��(120����)\'
           +'|{cmd}<ȡ��/@exit>'
           );
        end;
    end;
end;



procedure _book1;
begin
    if This_Player.GoldNum >= 1200000 then
    begin
        This_Player.DecGold(1200000);
        This_Player.Give('�����䵶',1);
        This_Player.SetV(9,18,1); 
       This_NPC.NpcDialog(This_Player,
       '���Ѿ������ˡ�\\'
       +'|{cmd}<����/@main>'
       );

    end else
   This_NPC.NpcDialog(This_Player,
   '��Ľ�Ҳ�����\'
   +'��Ҫ120��������顣\\'
   +'|{cmd}<����/@main>'
   );


end;



procedure _book2;
begin
    if This_Player.GoldNum >= 1200000 then
    begin
        This_Player.DecGold(1200000);
        This_Player.Give('ħ����',1);
        This_Player.SetV(9,18,1); 
       This_NPC.NpcDialog(This_Player,
       '���Ѿ������ˡ�\\'
       +'|{cmd}<����/@main>'
       );

    end else
   This_NPC.NpcDialog(This_Player,
   '��Ľ�Ҳ�����\'
   +'��Ҫ120��������顣\\'
   +'|{cmd}<����/@main>'
   
   );

end;



procedure _book3;
begin
    if This_Player.GoldNum >= 1200000 then
    begin
        This_Player.DecGold(1200000);
        This_Player.Give('��ħ��',1);
        This_Player.SetV(9,18,1); 
       This_NPC.NpcDialog(This_Player,
       '���Ѿ������ˡ�\\'
       +'|{cmd}<����/@main>'
       );

    end else
   This_NPC.NpcDialog(This_Player,
   '��Ľ�Ҳ�����\'
   +'��Ҫ120��������顣\\'
   +'|{cmd}<����/@main>'
   );

end;

procedure _Nopay1;
begin
   This_NPC.NpcDialog(This_Player,
   '�ܱ�Ǹ. ����Ŀǰֻ������һ��. \ \'
   +'|{cmd}<ȡ��/@exit>'
   );

end;

procedure _Q316_1_1;
var
num,duramax,duraav : integer;
begin
   This_Player.CheckBagItemEx('���',num,duramax,duraav);
  // This_Player.PlayerNotice('���' + inttostr(num) + '-' + inttostr(duramax) ,2);
  if This_Player.GetV(11,1) = 13 then
  begin
     if (num >= 5) and (duramax > 17500) and (This_Player.GetBagItemCount('����') > 0) then
     begin
        This_Player.Take('���',5);
        This_Player.Take('����',1);
        This_Player.Give('����',1);
        This_Player.RandomFlyTo('D002');
        //This_Player.SetV(9,18,1); 
        This_Player.SetV(11,1,14);
     end else
     This_NPC.NpcDialog(This_Player,
     '��������, ��Ҫ�ղ�˵����Щ����. \'
     +'�Ѳ���׼�����ˣ�������������, \'
     +'û�в�����ô������? \ \'
     +'|{cmd}<ȡ��/@exit>'
     );
  end;
end;

procedure _Nopay2;
begin
   This_NPC.NpcDialog(This_Player,
   '�ܱ�Ǹ. Ŀǰ����Ŀǰֻ������һ��. \ \'
   +'|{cmd}<ȡ��/@exit>'
   );

end;

procedure _Q316_1_2;
var
num,duramax,duraav : integer;
begin
   if This_Player.GetV(11,1) = 13 then
   begin 
       This_Player.CheckBagItemEx('���',num,duramax,duraav);
       This_Player.PlayerNotice('���' + inttostr(num) + '-' + inttostr(duramax) ,2);
       if (num >= 4) and (duramax > 17500) and (This_Player.GetBagItemCount('����') > 0) then
       begin
          This_Player.Take('���',4);
          This_Player.Take('����',1);
          This_Player.Give('����',1);
          This_Player.RandomFlyTo('D002');
          //This_Player.SetV(9,18,1); 
          This_Player.SetV(11,1,14);
       end else
       This_NPC.NpcDialog(This_Player,
       '��������, ��Ҫ�ղ�˵����Щ����. \'
       +'�Ѳ���׼�����ˣ�������������, \'
       +'û�в�����ô������? \ \'
       +'|{cmd}<ȡ��/@exit>'
       );
   end;
end;

procedure _Nopay3;
begin
   This_NPC.NpcDialog(This_Player,
   '�ܱ�Ǹ. Ŀǰħ��ֻ������һ��. \ \'
   +'|{cmd}<ȡ��/@exit>'
   
   );

end;

procedure _Q316_1_3;
var
num,duramax,duraav : integer;
begin
   if This_Player.GetV(11,1) = 13 then
   begin 
       This_Player.CheckBagItemEx('���',num,duramax,duraav);
       This_Player.PlayerNotice('���' + inttostr(num) + '-' + inttostr(duramax) ,2);
       if (num >= 3) and (duramax > 17500) and (This_Player.GetBagItemCount('����') > 0) then
       begin
          This_Player.Take('���',3);
          This_Player.Take('����',1);
          This_Player.Give('ħ��',1);
          This_Player.RandomFlyTo('D002');
          //This_Player.SetV(9,18,1); 
          This_Player.SetV(11,1,14);
       end else
       This_NPC.NpcDialog(This_Player,
       '����ħ��, ��Ҫ�ղ�˵����Щ����. \'
       +'�Ѳ���׼�����ˣ���������ħ��, \'
       +'û�в�����ô������? \ \'
       +'|{cmd}<ȡ��/@exit>'
       
       );
   end;
end;


procedure _Nopay4;
begin
   This_NPC.NpcDialog(This_Player,
   '�ܱ�Ǹ. Ŀǰף����ֻ��5��. \ \'
   +'|{cmd}<ȡ��/@exit>'
   );

end;

procedure _Q316_1_4;
begin
    if This_Player.GetV(11,1) = 13 then
   begin 
    if (This_Player.GoldNum >= 500000) and (This_Player.GetBagItemCount('ǿЧ̫��ˮ') >= 5) then
    begin
        This_Player.DecGold(500000);
        This_Player.Take('ǿЧ̫��ˮ',5);
        This_Player.Give('ף����',1);
          This_Player.RandomFlyTo('D002');
          //This_Player.SetV(9,18,1); 
          This_Player.SetV(11,1,14); 
    end;
   This_NPC.NpcDialog(This_Player,
   '����ף����, ��Ҫ�ղ�˵����Щ����. \'
   +'�Ѳ���׼�����ˣ���������, \'
   +'û�в�����ô������? \ \'
   +'|{cmd}<ȡ��/@exit>'
   );
   end;
end;

procedure _Q317;
begin
   This_NPC.NpcDialog(This_Player,
   '�����Ķ�������֮��Ҳ����һ��������һ�ν���֮��\'
   +'�ǲ����������׵�. ���ȥ�� \ \'
   +'|{cmd}<ȡ��/@exit>'
   );

end;

begin
  domain;
end. 