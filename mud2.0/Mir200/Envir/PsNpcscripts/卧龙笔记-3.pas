{********************************************************************
* ��Ԫ���ƣ������ʼ� 
* ��Ԫ���ߣ�
* ժ    Ҫ��
* ��    ע��

*******************************************************************}

program mir2;

procedure _gowolong;
begin
   if This_Player.Level >= 52 then
   
   
  begin
      if This_Player.MyLFnum >= 300 then
     begin
         if (This_Player.GetBagItemCount('ħ��ָ����') > 0) then
          begin
           This_Player.Flyto('hero1', 220, 212);
           This_Player.Take('ħ��ָ����', 1);
           This_Player.DecLF(0, 300, false);
		   ServerSay('���<' + This_Player.Name + '>����������ɽׯ', 2);
         end else
          begin
          This_Npc.NpcDialog(This_Player,
          'û��ħ��ָ����! '  );
           end ;
     end else  
     begin
            This_Npc.NpcDialog(This_Player,
            '�������300!'   );
     end ; 
  end else

     begin
         
         This_Npc.NpcDialog(This_Player,
        '�ȼ�����52��������!  ');

     end; 
end;

  
begin
 // This_Npc.showbook(This_Player, 1, 0, '@gowolong'); 
  This_Npc.NpcDialog(This_Player,
   +'<������������ʼǡ������/c=red>\|'
   +'�����ˣ�����Ҫ�ռ�װ����\|'
   +'�����ӵ��һ֧�����Ž����ӵ��ǿ�������Ķ��飬\|'
   +'����ǰ����ս��½ǿ��-����ׯ��-�����������ϴ���\|'
   +'�ɴ�½��ǿ����������ռ�ս�׺��ռ��������ȷ��\|'
   +'Ҫǰȥ��ս����ս��Ҫ<52��/c=red>��<ħ��ָ����/c=red>��<300���/c=red>\|'
   +'|{cmd}<����52����ǰ����ս����ɽׯ/@gowolong>'
    );  
end.