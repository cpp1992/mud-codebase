{********************************************************************


*******************************************************************}

program Mir2;

{$I ActiveValidateCom.pas}

procedure _DoExit;
begin
  This_Npc.CloseDialog(This_Player);
end;

procedure _Exit;
begin
  This_Npc.CloseDialog(This_Player);
end;

procedure _buildCorpsnow;
begin
  This_Npc.InputDialog(This_Player, '��������ս�����ƣ�', 0, 101);
end;

procedure P101;
var str_dlg , str_input : string; 
begin
  if This_Npc.InputOk then
  begin
    if (This_Player.Level >= 35) and (This_Player.GoldNum >= 1000000) then
    begin
      str_input := This_Npc.InputStr;
      if (length(str_input) > 0) and (length(str_input) < 15) then
      begin  
        case This_Player.CreateSelfCorps(str_input) of  
            0 : 
            begin
                This_Player.DecGold(1000000);
                str_dlg := 'ս�Ӵ����ɹ���';
            end;
            1 : str_dlg := '����ʧ�ܣ�ս��������Υ���ַ���';
            2 : str_dlg := '����ʧ�ܣ�ս�����Ѵ��ڡ�';
            3 : str_dlg := '������ս�ӣ������˳��ٴ�����';
            4 : str_dlg := '��Ҳ�����';
            5 : str_dlg := '���û��ս��';
            6 : str_dlg := '�����л�';
            7 : str_dlg := 'Ŀ�겻����';
            8 : str_dlg := '�����Ѿ�����';
            9 : str_dlg := '��Ա����������(ս����ļ����)';
            10 : str_dlg := '���󲻴���';
            11 : str_dlg := '��������ʹ���';
            12 : str_dlg := 'ս�Ӳ�����';
            13 : str_dlg := 'ս�ӳ�Ա����';
            14 : str_dlg := '��ϵ���ʹ���';
            15 : str_dlg := '��ϵ�Ѵ���';
            16 : str_dlg := 'ս����������';
            17 : str_dlg := '���ݴ�С����';
            18 : str_dlg := '��Ա������';
            19 : str_dlg := '���ܲ����Լ�';
            20 : str_dlg := '����ɾ���ӳ�(ս�Ӷӳ����ܱ�ɾ��)';
            21 : str_dlg := 'ְλ����';
            22 : str_dlg := '��Ч��Ŀ��';
            23 : str_dlg := '���Ͳ�ƥ��';
            24 : str_dlg := '��Ϣ����̫��';
            25 : str_dlg := 'û���ҵ�Ŀ��';
            26 : str_dlg := '��Ա�Ѿ�����';
            27 : str_dlg := '��ϵ������';
            28 : str_dlg := '��ս��ս����(�޷��˳�ս��)';
            29 : str_dlg := '�ڹ�������(�޷��˳�ս��)';
            30 : str_dlg := 'û�и�����־';
            31 : str_dlg := '�ó�Ա����ְ��';
            32 : str_dlg := '�����˲�����ս';
            33 : str_dlg := '����ս��������';
            34 : str_dlg := 'Ŀ��ս�ӵ����˿��عر�';
            
            555 : str_dlg := '�޲���Ȩ��';
            1000 : str_dlg := 'δ֪����';
    
            
        end;
        
         This_Npc.NpcDialog(This_Player,
         str_dlg + '��\ \'
         +'|{cmd}<����/@main>');
       end else
        This_Npc.NpcDialog(This_Player,
        'ս�����Ʋ��ܳ���7�����ֻ�14��Ӣ����ĸ��\ \'
        +'|{cmd}<����/@main>');
    end else
    This_Npc.NpcDialog(This_Player,
    '��Ҫ����ս�ӣ���������Ҫ֤�����Ƿ�������ʸ����Ŷ��\'
    +'����ս����Ҫ�����ߵȼ��ﵽ35�������ҵݽ�100���Ҳ���\ \'
    +'|{cmd}<����/@main>');
   
  end;
end;

procedure _buildguildnow;
begin
  This_Npc.InputDialog(This_Player, '���������л����ƣ�', 0, 102);
end;

procedure P102;
var str_dlg , str_input : string; 
begin
  if This_Npc.InputOk then
  begin
    if (This_Player.GetBagItemCount('����Ž�') >= 1) and (This_Player.GoldNum >= 5000000) then
    begin 
      str_input := This_Npc.InputStr;
      if (length(str_input) > 0) and (length(str_input) < 15) then
      begin  
        case This_Player.CreateSelfGild(str_input) of  
            0 : 
            begin
              This_Player.Take('����Ž�',1);
              This_Player.DecGold(5000000); 
            str_dlg := '�лᴴ���ɹ���';
            
            end; 
            1 : str_dlg := '����ʧ�ܣ��л�������Υ���ַ���';
            2 : str_dlg := '����ʧ�ܣ��л����Ѵ��ڡ�';
            3 : str_dlg := '�������лᣬ�����˳��ٴ�����';
            4 : str_dlg := '��Ҳ�����';
            5 : str_dlg := '���û��ս��';
            6 : str_dlg := '�����л�';
            7 : str_dlg := 'Ŀ�겻����';
            8 : str_dlg := '�����Ѿ�����';
            9 : str_dlg := '��Ա����������(ս����ļ����)';
            10 : str_dlg := '���󲻴���';
            11 : str_dlg := '��������ʹ���';
            12 : str_dlg := '�л᲻����';
            13 : str_dlg := '�л��Ա����';
            14 : str_dlg := '��ϵ���ʹ���';
            15 : str_dlg := '��ϵ�Ѵ���';
            16 : str_dlg := 'ս����������';
            17 : str_dlg := '���ݴ�С����';
            18 : str_dlg := '��Ա������';
            19 : str_dlg := '���ܲ����Լ�';
            20 : str_dlg := '����ɾ���ӳ�(ս�Ӷӳ����ܱ�ɾ��)';
            21 : str_dlg := 'ְλ����';
            22 : str_dlg := '��Ч��Ŀ��';
            23 : str_dlg := '���Ͳ�ƥ��';
            24 : str_dlg := '��Ϣ����̫��';
            25 : str_dlg := 'û���ҵ�Ŀ��';
            26 : str_dlg := '��Ա�Ѿ�����';
            27 : str_dlg := '��ϵ������';
            28 : str_dlg := '���л�ս����(�޷��˳��л�)';
            29 : str_dlg := '�ڹ�������(�޷��˳��л�)';
            30 : str_dlg := 'û�и�����־';
            31 : str_dlg := '�ó�Ա����ְ��';
            32 : str_dlg := '�����˲�����ս';
            33 : str_dlg := '����ս��������';
            34 : str_dlg := 'Ŀ���л�����˿��عر�';
            
            555 : str_dlg := 'ս�Ӷӳ��ſ��Դ����л�';
            1000 : str_dlg := 'δ֪����';
    
            
        end;
        
      
       This_Npc.NpcDialog(This_Player,
       str_dlg + '��\ \'
       +'|{cmd}<����/@main>');
      end else
      This_Npc.NpcDialog(This_Player,
      '�л����Ʋ��ܳ���7�����ֻ�14��Ӣ����ĸ��\ \'
      +'|{cmd}<����/@main>'); 
    end else
    This_Npc.NpcDialog(This_Player,
     '��Ҫ�����лᣬ��������Ҫ֤�����Ƿ�������ʸ����Ŷ��\'
     +'�����л���Ҫ<500����/c=red>��<һ������Ž�/c=red>Ϊ�����ģ��������\'
     +'ֻ��������������ֵ�Ŷ����Ҫ����ɱ��������Ҫ���Լ���\'
     +'��ǿ����У�\ \'
     +'|{cmd}<֪����/@exit>');
  end;
end;

procedure _requestcastlewarnow;
begin  
   //if AutoOpen(6) then
   
    if This_Player.ReqCastleWar then
       begin
		This_NPC.DelStrFromFile('\CastleWar\inmap.txt','mapUser=1');
		This_NPC.AddStrToFile('\CastleWar\inmap.txt','mapUser=0');
   
		This_NPC.DelStrFromFile('\CastleWar\complete.txt','Start=0');
		This_NPC.AddStrToFile('\CastleWar\complete.txt','Start=1');
   
		This_Player.RandomFlyTo('3');
		This_NPC.NpcNotice('��Ҫ��Ϣ���лᡶ'+This_Player.GuildName+'�������빥ɳս��������һ��Ѫ���ȷ磡');
       end;
end;


procedure _requestcastlewar;
begin
    
    This_Npc.NpcDialog(This_Player,
    'Ҫ�󹥳�ս���������Ҫ��һ������ͷ����������\' +
    '������ڷ�������������뱻�����˵Ļ�����ô����ս��\' +
    '����<����/c=red>���С�\ \' +
    '|{cmd}<�ṩһ������ͷ��/@requestcastlewarnow>\' +
    '|{cmd}<ȡ��/@main>\');
end;

procedure _buildCorpsexp;
begin
    This_Npc.NpcDialog(This_Player,

    '����ս����Ҫ�����ߵȼ��ﵽ35�������ҵݽ�100����.\ \' +
    '|{cmd}<����/@main>\');
end;


procedure _buildguildexp;
begin
     This_Npc.NpcDialog(This_Player,
     'ս�Ӷӳ��ſ��Դ����лᣬ\'
     +'�����л���Ҫ<500����/c=red>��<һ������Ž�/c=red>Ϊ�����ģ��������\'
     +'ֻ��������������ֵ�Ŷ����Ҫ����ɱ��������Ҫ���Լ���\'
     +'��ǿ����У�\ \'
     +'|{cmd}<����/@main>');
end;
////////////////////////////////////
procedure _sha_YF; 
begin
This_Player.Flyto('3',672 + random(5),280 + random(4));
end;
procedure _sha_WQ; 
begin
This_Player.Flyto('3',632 + random(5),320 + random(4));
end;
procedure _sha_CK; 
begin
This_Player.Flyto('3',648 + random(4),262 + random(4));
end;
procedure _sha_DM; 
begin
This_Player.Flyto('3',664 + random(4),320 + random(4));
end;
procedure _sha_HG; 
begin
   if This_Player.GoldNum >= 20000 then
   begin
      if compareText(This_Player.MapName,'3') = 0 then
      begin
         This_Player.DecGold(20000);
         This_Player.RandomFlyTo('0150');
      end;
   end else
   begin 
      This_NPC.NpcDialog(This_Player,
      '2W��Ҷ�û�л���ֱ�ɻʹ����Һ�æ,�Ͻ�������\ \');
   end;
end;

Procedure _move;

   begin
      This_Player.Flyto('3',330,330);
   end;


procedure domain;
begin

      This_Npc.NpcDialog(This_Player,
      '��Ȼ�Ѿ�������������֤�����Ѿ���ȫ����ˣ��ǾͰ�����ͷ��ͽ�ש���Ұɡ�\'
	  +'|�ύ��ɳս����<����/c=red>�����������ɱ¾�ɣ�\'
	  +'|{cmd}<������ɳս/@requestcastlewarnow>\' 
      +'|{cmd}<��������/@move>\' 	  
      );  

end;



begin

  domain;    
end.