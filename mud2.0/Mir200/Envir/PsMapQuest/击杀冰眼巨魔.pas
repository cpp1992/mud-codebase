{******************************************************************
* ��Ŀ���ƣ�
* ��Ԫ���ƣ���ɱ���۾�ħ��PsMapQuest�� 
* ��Ԫ���ߣ�
* ժ    Ҫ��
* ��    ע��
*******************************************************************}
Program Mir2;

Begin
   if ( This_Player.GetV(22,2) <> 10 ) or ( This_Player.GetV(22,3) >= 50 ) then
     Exit;
   else if This_Player.GetV(22,10) = 100 then
   begin
      if ( This_Player.IsGroupOwner ) or ( This_Player.IsTeamMember ) then
      begin
         //ȫ��������ServerSay(neir ��string; ziti : integer); 
         //���е�һ������Ϊ�������ݣ��ڶ�������Ϊ������ɫ(0=�죬1=�̣�2=��ɫ��3=��ɫ��4=��ɫ��5=�������̵�);
         This_Player.GroupSetV(22,3,50);
         This_Player.GroupSetV(22,2,0);
         This_Player.PlayerNotice('��ϲ�㣬�����ڳɹ��ػ�ɱ�˱��۾�ħ��',2);
         ServerSay('���˶��ѵ�֧�֣�' + This_Player.Name + '�ھ�ħ֮���ɹ��ػ�ɱ�˱��۾�ħ��',0); 
      end else
      begin
         This_Player.SetV(22,3,50);
         This_Player.SetV(22,2,0);
         This_Player.PlayerNotice('��ϲ�㣬�����ڳɹ��ػ�ɱ�˱��۾�ħ��',2);
         ServerSay(This_Player.Name + '�ھ�ħ֮���ɹ��ػ�ɱ�˱��۾�ħ��',0);         
      end;
   end else
   begin
      if ( This_Player.IsGroupOwner ) or ( This_Player.IsTeamMember ) then
      begin
         This_Player.GroupSetV(22,3,50);
         This_Player.GroupSetV(22,10,100);
         This_Player.GroupSetV(22,2,0);
         This_Player.PlayerNotice('��ϲ�㣬�����ڳɹ��ػ�ɱ�˱��۾�ħ��',2);
         ServerSay('���˶��ѵ�֧�֣�' + This_Player.Name + '�ھ�ħ֮���ɹ��ػ�ɱ�˱��۾�ħ��',0); 
      end else
      begin
         This_Player.SetV(22,3,50);
         This_Player.SetV(22,10,100);
         This_Player.SetV(22,2,0);
         This_Player.PlayerNotice('��ϲ�㣬�����ڳɹ��ػ�ɱ�˱��۾�ħ��',2);
         ServerSay(This_Player.Name + '�ھ�ħ֮���ɹ��ػ�ɱ�˱��۾�ħ��',0);         
      end; 
   end;
end. 