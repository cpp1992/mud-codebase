{********************************************************************

*******************************************************************}
procedure _exit; 
begin
    This_NPC.CloseDialog(This_Player);
    exit;
end;

procedure Q315;
begin
   This_NPC.NpcDialog(This_Player,
   '�����������ͷ��\ \'
   +'|{cmd}<�ر�/@exit>'
   +''
   );


end;

procedure Q314;
begin
   This_NPC.NpcDialog(This_Player,
   '������õ���������˵��\ '
   +'��Ϊ�������˺ܶ����飿\'
   +'��Ϊ�����ѣ���лл�㡣 \'
   +'��Ҫ�������ϰ����ҵĶ�����\ \'
   +'|{cmd}<��һ��/@Q314_1> \'
   +'|{cmd}<�ر�/@exit>'
   );

end;

procedure domain;
begin
    case random(2) of
        0 :
        begin
            //if This_Player.GetV(9,8) = 1 then 
            IF (This_Player.GetV(11,1) = 13) then 
            Q315
            else 
            //IF This_Player.GetV(9,9) = 1 then
            IF (This_Player.GetV(11,1) = 12) then 
            Q314
            else
            This_NPC.NpcDialog(This_Player,
           'Ŷ����ҲҪ��һ��׬Ǯ���������Ŀ�ջ��\'
           +'�����͵�Ŭ�����¡�\ \'
           +'|{cmd}<�˳�/@exit>'
           );
        end;
        1 : 
        This_NPC.NpcDialog(This_Player,
       'Ŷ����ҲҪ��һ��׬Ǯ���������Ŀ�ջ��\'
       +'�����͵�Ŭ�����¡�\ \'
       +'|{cmd}<�˳�/@exit>'
       );
    end;
end;



procedure _normal;
begin
   This_NPC.NpcDialog(This_Player,
   'Ŷ����ҲҪ��һ��׬Ǯ���������Ŀ�ջ��\'
   +'�����͵�Ŭ�����¡�\ \'
   +'|{cmd}<�˳�/@exit>'
   );

end;





procedure _Q314_1;
begin

   This_NPC.NpcDialog(This_Player,
   '��ô��' + This_Player.Name + '���Ը���в��飬 \'
   +'��������ϵ���Ʒ��������һ������Ҳ���޳ɡ�\'
   +'����Ҳ��������ϸ��ҵ���Ʒ��\'
   +'��ô' + This_Player.Name + '����ô�죿 \ \'
   +'|{cmd}<û��/@Q314_1_1>�κθо�\'
   +'|��Ҳ<û��/@Q314_1_2>��ϵ\'
   +'|�����<�ܲ�����/@Q314_1_3>\'
   +''
   +''
   );

end;

procedure _Q314_1_1;
begin
    //IF This_Player.GetV(9,8) <= 0 then
    IF This_Player.GetV(11,1) = 12 then
    begin
        if This_Player.FreeBagNum > 0 then
        begin
            //This_Player.SetV(9,8,1);
            This_Player.SetV(11,1,13);
            This_Player.Give('ף����',1);
        
           This_NPC.NpcDialog(This_Player,
           '' + This_Player.Name + 'Ҳ���ǵģ�\ '
           +'һ�㶼��̰�ġ� \ '
           +'�治�򵥰����������Ҹ�������������Ը����Ʒ��\'
           +'���㣬����ף���͡�\'
           +'�ú���������������ȥ������ͷ��\ \'
           +'|{cmd}<�ر�/@exit>'
           );
        end else
        This_NPC.NpcDialog(This_Player,
       '��İ���̫���ˣ�\ \'
       +'|{cmd}<�ر�/@exit>'
       );
    end else
    Q315;
end;

procedure _Q314_1_2;
begin
   This_NPC.NpcDialog(This_Player,
   '' + This_Player.Name + '�������������������\ '
   +'��Ĳ�˵���ܰ��Ǹ���Ʒ��Ѹ����ˣ�\'
   +'�������Ϻ������ˣ�\'
   +'������һ���⡣\ \'
   +'|{cmd}<��һ��/@Q314_1_2_1>'
   );

end;

procedure _Q314_1_3;
begin
    IF This_Player.GetV(11,1) = 12 then
    begin
        if This_Player.FreeBagNum > 0 then
        begin
            //This_Player.SetV(9,8,1);
            This_Player.SetV(11,1,13);
            This_Player.Give('��������',1);
            This_NPC.NpcDialog(This_Player,
            '' + This_Player.Name + '����Ʒ��ռ����δ��Ҳ̫ǿ�ˣ�\  '
            +'���Ͻ��Ұ�������㡣\'
            +'�����������ף��ú�������\ '
            +'��������ȥ������ͷ��\ \'
            +'|{cmd}<�ر�/@exit>'
            );
        end else
        This_NPC.NpcDialog(This_Player,
       '��İ���̫���ˣ�\ \'
       +'|{cmd}<�ر�/@exit>'
       );
    end else
    Q315;
end;

procedure _Q314_1_2_1;
begin
   This_NPC.NpcDialog(This_Player,
   '�����е�ð������֪������ʢ��ĵط���\'
   +'��֪�����ʢ����뷨��\ \'
   +'��ʢ��<û��/@Q314_1_2_1_1>�κθо� \'
   +'|{cmd}<��/@Q314_1_2_1_2>��ըʢ�� \'
   +'|��<ϲ��/@Q314_1_2_1_3>ʢ��'
   );

end;

procedure _Q314_1_2_1_1;
begin
    //IF This_Player.GetV(9,8) <= 0 then
    IF This_Player.GetV(11,1) = 12 then
    begin
        if This_Player.FreeBagNum > 0 then
        begin
            //This_Player.SetV(9,8,1);
            This_Player.SetV(11,1,13);
            This_Player.Give('��������',1);
        
           This_NPC.NpcDialog(This_Player,
           'ûʲô�о���\'
           +'����������һ����ģ���ô���أ� \'
           +'ȥ��һ������ͷ��\ \'
           +'|{cmd}<�ر�/@exit>'
           );
        end else
        This_NPC.NpcDialog(This_Player,
       '��İ���̫���ˣ�\ \'
       +'|{cmd}<�ر�/@exit>'
       );
    end else
    Q315;
end;


procedure _Q314_1_2_1_2;
begin
   This_NPC.NpcDialog(This_Player,
   '�������ʢ���кܴ�Ĳ�����\'
   +'�ܰ��Լ����뷨ֱ�ʵؽ�������' + This_Player.Name + '��������\'
   +'������һ���⡣\ \'
   +'|{cmd}<��һ��/@Q314_1_2_1_2_1>'
   );

end;

procedure _Q314_1_2_1_3;
begin
    IF This_Player.GetV(11,1) = 12 then
    begin
        if This_Player.FreeBagNum > 0 then
        begin
            //This_Player.SetV(9,8,1);
            This_Player.SetV(11,1,13);
            This_Player.Give('ף����',1);
        
           This_NPC.NpcDialog(This_Player,
           '��ϲ��ʢ��?\'
           +'��������Ϊ��׼����ף���͡�\'
           +'����ȥ��һ������ͷ��\ \'
           +'|{cmd}<�ر�/@exit>'
   );
        end else
        This_NPC.NpcDialog(This_Player,
       '��İ���̫���ˣ�\ \'
       +'|{cmd}<�ر�/@exit>'
       );
    end else
    Q315;
end;

procedure _Q314_1_2_1_2_1;
begin
   This_NPC.NpcDialog(This_Player,
   '�������һ�����⣬�����á�\'
   +'����ý������ָʾ��������ʲô�����ˣ�\'
   +'�ú����룬�ٸ��һش�ɡ�\ \'
   +''
   +'|{cmd}<����/@Q314_1_2_1_2_1_1>��Ȥ\'
   +'|{cmd}<����/@Q314_1_2_1_2_1_2>��������'
   );

end;


procedure _Q314_1_2_1_2_1_1;
begin
    IF This_Player.GetV(11,1) = 12 then
    begin
        if This_Player.FreeBagNum > 0 then
        begin
            //This_Player.SetV(9,8,1);
            This_Player.SetV(11,1,13);
            This_Player.Give('ף����',1);
           This_NPC.NpcDialog(This_Player,
           '������Ȥ���ˣ�\'
           +'�������˻�ܲ����˵ģ�\'
           +'�������������ˣ���������Ϊ��׼�������\'
           +'�����ˣ�����ȥ��һ������ͷ��\ \'
           +'|{cmd}<�ر�/@exit>'
           );
        end else
        This_NPC.NpcDialog(This_Player,
       '��İ���̫���ˣ�\ \'
       +'|{cmd}<�ر�/@exit>'
       );
    end   
  else 
    Q315;

end;

procedure _Q314_1_2_1_2_1_2;
begin
    IF This_Player.GetV(11,1) = 12 then
    begin
        if This_Player.FreeBagNum > 1 then
        begin
            
            if random(5) = 0 then
            begin
            //This_Player.SetV(9,8,1);
                This_Player.SetV(11,1,13);
                This_Player.Give('ף����',1); 
                This_Player.Give('��������',1);
            
               This_NPC.NpcDialog(This_Player,
               '�������Ҳ��������Ϊ��\'
               +'' + This_Player.Name + '�������һ����\'
               +'����׼������Ʒ�У�����������\'
               +'�ɲ�Ҫ�����Ͻ���������ȥ��һ������ͷ��\ \'
               +'|{cmd}<�ر�/@exit>'
               );
        
            end
            else
            begin
               // This_Player.SetV(9,8,1);
               // This_Player.Give('ǿЧ̫��ˮ',1);
            
               This_NPC.NpcDialog(This_Player,
               '�������Ҳ���������ã�������.. \'
               +'' + This_Player.Name + '�������һ������\'
               +'����׼������Ʒ�У�����һ����\'
               +'��Ҫ�����Ͻ���������ȥ��һ������ͷ��\ \'
               +'|{cmd}<�ر�/@exit>'
               );
        
            end;
        end else
        This_NPC.NpcDialog(This_Player,
       '��İ���̫���ˣ�\ \'
       +'|{cmd}<�ر�/@exit>'
       );
    end;
end;





begin
    domain;
end.