                                     {********************************************************************
* ��Ԫ���ƣ������ʼ� 
* ��Ԫ���ߣ�
* ժ    Ҫ��
* ��    ע��

*******************************************************************}

program mir2;

procedure _gowolong;
begin
   if This_Player.Level >= 55 then    //������ڶ��ټ� 
   if This_Player.MyLFnum >= 300 then //�����շѶ�������ſ��Խ���   ����Ԫ���� if This_Player.YBNum >= 300 then �滻ǰ��� 
   
  begin
     if compareText(This_Player.MapName, '3') = 0 then    //�����Ǽ�������ͼ��NPC������jiuд�ĸ���ͼ 
     begin
        This_Player.Flyto('hero1', 220, 212);    //����ǰ���ĵ�ͼ   hero1 �ǵ�ͼ�� 
        This_Npc.CloseDialog(This_Player);
     end ; 
      This_Player.DecLF(0, 300, false);        //�����շѶ��٣�������д�����  Ԫ�� ����� This_Player.PsYBConsum(This_NPC,'ForgeDiaYB',20150,100,1);      �������100�ǿ۶���Ԫ�� 
    
      end else
     begin
      This_Npc.NpcDialog(This_Player,
      '�ȼ�����52���������300����ȱ��ħ��ָ���������Ƿ���ȫ!'   );
      
      
     end else   
     begin
         
         This_Npc.NpcDialog(This_Player,
      '�ȼ�����55���������300����ȱ��ħ��ָ���������Ƿ���ȫ!'   );
      
      
       
 
   end; 
end;
begin
 // This_Npc.showbook(This_Player, 1, 0, '@gowolong'); 
  This_Npc.NpcDialog(This_Player,
   '�����ˣ�����Ҫ�ռ�װ����\' +
   '�����ӵ��һ֧�����Ž����ӵ��ǿ�������Ķ��飬\' +          //����de���Լ���
   '����ǰ����ս��½ǿ��-����ׯ��-�����������ϴ���\' +
   '�ɴ�½��ǿ����������ռ�ս�׺��ռ��������ȷ��\' +
   'Ҫǰȥ��ս����ս��Ҫ55����ħ��ָ���飬300���\' +     //�Լ��Ļ�   
   
   '|{cmd}<����55����ǰ����ս�ռ�����ɽׯ/@gowolong>'
    );  
end.