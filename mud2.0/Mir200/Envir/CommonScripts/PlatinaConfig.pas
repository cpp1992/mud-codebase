{

/*  �ű����� :
/*  ��ӦNPC  : �׽��ʺŵĽ������� 

}


{/**********************�ⲿ�ִ����������ɰ׽��ʺŵĽ�������**********************/}
const REWARD_KIND = 82; //���影��������
const START_LEVEL = 50; //�׽��˺ŵ���ʼ�ȼ� 

//������Ҷ�Ӧ�׽��ʺŵȼ��Ľ��� 
procedure GivePlatinaReward();
var
  //����򻯴���,���н���ֻ��һ����Ʒ,������Ϊ1 
  name  : array[1..REWARD_KIND] of string;
  pos   : array[1..REWARD_KIND] of Integer;
  total : Integer;
  i     : Integer;
  rand  : Integer;    //���������
  temp  : Integer;    //
  platina_level : Integer;  //�׽��˺ŵȼ� 
begin
  //��ֹ����һ�����NPC����Ĵ������
  if (This_Player = nil) or (This_Npc = nil) then
  begin
    Exit;
  end;
  
  //����������ȼ��Ƚ� 
  platina_level := This_Player.PlatLv + START_LEVEL;
  
  //���ǰ׽��˺�,ֻ��51����66���İ׽��ʺ��н���������ȡ 
  if (platina_level < 51) then
  begin
    This_Npc.NpcDialog(This_Player,
    '�����ǰ׽��˺�,���ܵ���������ȡ������\'); 
    Exit;   
  end;
  
  //����ȡ�����еİ׽��˺ŵĽ���,66��������ȡ�����н���
  if (platina_level > 66) then
  begin
    This_Npc.NpcDialog(This_Player,
    '������ȡ�����еİ׽��˺ŵĽ�����\'); 
    Exit;   
  end;  
  
  //��ǰ�ȼ��Ľ����Ƿ��Ѿ���ȡ 
  if (This_Player.Level < platina_level) then
  begin
    This_Npc.NpcDialog(This_Player,
    '�Ҽǵ����Ѿ���ȡ��ǰ�ȼ��İ׽��˺ŵĽ�����\'); 
    Exit;   
  end;
  
  //������֮ǰ,�ж��Ƿ����㹻�Ŀո�
  if This_Player.FreeBagNum < 1 then
  begin
    This_Npc.NpcDialog(This_Player,
    '���İ���̫��,������ȡ,���������������ȡ��\');   
    Exit;
  end; 
  
//ר�Ŵ�����ߵȼ�66���İ׽��ʺŽ���
  if platina_level = 66 then
  begin
    This_Npc.NpcDialog(This_Player,
    '��������ȡ66���İ׽�������\'
    + '����ʵ�������������׽𡱸���ζ��һ�����Σ�\'
    + '��Ҫָ����ȡ�������е�һ�ѣ����ȱ������5���׽���ְ���\'
    + '����Ҫ��ȡ��һ�������أ�\'
    + '|{cmd}<����/@kaitian>            ^<����/@zhentian>            ^<����/@xuantian>');
    Exit;
  end;
       
//����51-65���׽��ʺŵĽ������� 

  //��ʼ��
  for i := 1 to REWARD_KIND do
  begin
    name[i] := '';
    pos[i]  := 0;
  end;

  //��ʼ����������Ʒ������
//51���Ľ��� 
  name[1]   := '����ս��';
  name[2]   := '��������';
  name[3]   := '��������';  
  name[4]   := '��������';
  name[5]   := '����սѥ';
  name[6]   := '��â����';
  name[7]   := '��â����';
  name[8]   := '��â����';
  name[9]   := '��â��ѥ';
  name[10]  := '��â����';
  name[11]  := '��������';
  name[12]  := '���滤��';
  name[13]  := '��������';
  name[14]  := '����ħѥ';
  name[15]  := '����ħ��';
  
//52���Ľ��� 
  name[16]  := 'ǿ������ս��';
  name[17]  := 'ǿ����������';
  name[18]  := 'ǿ����������';  
  name[19]  := 'ǿ����������';
  name[20]  := 'ǿ������սѥ';
  name[21]  := 'ǿ����â����';
  name[22]  := 'ǿ����â����';
  name[23]  := 'ǿ����â����';
  name[24]  := 'ǿ����â��ѥ';
  name[25]  := 'ǿ����â����';
  name[26]  := 'ǿ����������';
  name[27]  := 'ǿ�����滤��';
  name[28]  := 'ǿ����������';
  name[29]  := 'ǿ������ħѥ';
  name[30]  := 'ǿ������ħ��';
//53���Ľ���
  name[31]  := '��ս��ָ';
  name[32]  := '��ս����';
  name[33]  := '������ָ';
  name[34]  := '��������';
  name[35]  := '̫������';
  name[36]  := '̫����ָ';
//54���Ľ���
  name[37]  := '��ս��ָ';
  name[38]  := '��ս����';
  name[39]  := '������ָ';
  name[40]  := '��������';
  name[41]  := '̫������';
  name[42]  := '̫����ָ';
//55���Ľ���
  name[43]  := '��������(����)';
  name[44]  := 'Ԥ��ͷ��(����)';
  name[45]  := '��˵ħѥ(����)';
//56���Ľ���
  name[46]  := '��ս��ָ';
  name[47]  := '��ս����';
  name[48]  := '������ָ';
  name[49]  := '��������';
  name[50]  := '̫����ָ';
  name[51]  := 'ս������';
  name[52]  := 'ս������';
  name[53]  := 'ս���ָ';
  name[54]  := 'ʥħ����';
  name[55]  := 'ʥħ����';
  name[56]  := 'ʥħ��ָ';
  name[57]  := '�������';
  name[58]  := '�������';
  name[59]  := '����ָ';
  name[60]  := '̫������';
//57���Ľ���
  name[61]  := 'ս������';
  name[62]  := 'ս���ָ';
  name[63]  := 'ʥħ����';
  name[64]  := 'ʥħ����';
  name[65]  := 'ʥħ��ָ';
  name[66]  := '�������';
  name[67]  := '�������';
  name[68]  := '����ָ';
  name[69]  := 'ս������';
//58���Ľ���
  name[70]  := '����ѫ��(����)';
  name[71]  := '�ž�֮��(����)';
//59���Ľ���
  name[72]  := '����ѫ��(����)';
  name[73]  := '�ž�֮��(����)';
//60���Ľ��� 
  name[74]  := '����ѥ(����)';
  name[75]  := '��������(����)';
  name[76]  := '������(����)';

//61-62���Ľ��� 
  name[77]  := '����ѥ(����)';
  name[78]  := '��������(����)';
  name[79]  := '������(����)';
//63-65���Ľ��� 
  name[80]  := '��������(����)';
  name[81]  := '��������(����)';
  name[82]  := '������ָ(����)';


  //���ý����ĸ��ʣ������Ҫ���Կ�����ҵ��������أ�
  total  := 300;   //total��ʾ�����õ��ĸ��ʶ���300��֮��
  //���ݰ׽��˺ŵĵȼ���ͬ,���ò�ͬ����
  //ͬʱ�ı�׽��˺ŵȼ�,������61-66���İ׽��˺���ȡ�׽���ְ� 
  case platina_level of
    51:
    begin
      pos[1] := 20;
      pos[2] := 20;
      pos[3] := 20;
      pos[4] := 20;
      pos[5] := 20;
      pos[6] := 20;
      pos[7] := 20;
      pos[8] := 20;
      pos[9] := 20;
      pos[10] := 20;
      pos[11] := 20;
      pos[12] := 20;
      pos[13] := 20;
      pos[14] := 20;
      pos[15] := 20; 
      This_Player.PlatLv := This_Player.PlatLv + 1;
    end;
    52:
    begin
      pos[16] := 20;
      pos[17] := 20;
      pos[18] := 20;
      pos[19] := 20;
      pos[20] := 20;
      pos[21] := 20;
      pos[22] := 20;
      pos[23] := 20;
      pos[24] := 20;
      pos[25] := 20;
      pos[26] := 20;
      pos[27] := 20;
      pos[28] := 20;
      pos[29] := 20;
      pos[30] := 20;                        
      This_Player.PlatLv := This_Player.PlatLv + 1;
    end;
    53:
    begin
      pos[31] := 50;
      pos[32] := 50;
      pos[33] := 50;
      pos[34] := 50;
      pos[35] := 50;
      pos[36] := 50;
      This_Player.PlatLv := This_Player.PlatLv + 1;
    end; 
    54:
    begin
      pos[37] := 50;
      pos[38] := 50;
      pos[39] := 50;
      pos[40] := 50;
      pos[41] := 50;
      pos[42] := 50;                       
      This_Player.PlatLv := This_Player.PlatLv + 1;
    end;
    55:
    begin
      pos[43] := 100;
      pos[44] := 100;
      pos[45] := 100;      
      This_Player.PlatLv := This_Player.PlatLv + 1;
    end;
    56:
    begin
      pos[46] := 20;
      pos[47] := 20;
      pos[48] := 20;
      pos[49] := 20;
      pos[50] := 20;
      pos[51] := 20;
      pos[52] := 20;
      pos[53] := 20;
      pos[54] := 20;
      pos[55] := 20;
      pos[56] := 20;
      pos[57] := 20;
      pos[58] := 20;
      pos[59] := 20;
      pos[60] := 20;                        
      This_Player.PlatLv := This_Player.PlatLv + 1;
    end;
    57:
    begin
      pos[61] := 33;
      pos[62] := 33;
      pos[63] := 33;  
      pos[64] := 33;
      pos[65] := 34;
      pos[66] := 34;
      pos[67] := 33;
      pos[68] := 33;
      pos[69] := 33;           
      This_Player.PlatLv := This_Player.PlatLv + 1;
    end; 
    58:
    begin
      pos[70] := 150;
      pos[71] := 150;
      This_Player.PlatLv := This_Player.PlatLv + 1;   
    end;
    59:
    begin
      pos[72] := 150;
      pos[73] := 150;
      This_Player.PlatLv := This_Player.PlatLv + 1;  
    end; 
    60:
    begin
      pos[74] := 100;
      pos[75] := 100;
      pos[76] := 100;
      This_Player.PlatLv := This_Player.PlatLv + 1;
    end;  
    61, 62:
    begin
      if This_Player.GetBagItemCount('�׽���ְ�') >= 1 then
      begin
        pos[77] := 100;
        pos[78] := 100;
        pos[79] := 100;
        This_Player.Take('�׽���ְ�', 1);
        This_Player.PlatLv := This_Player.PlatLv + 1;
      end
      else                        
      begin                          
        This_Npc.NpcDialog(This_Player,
        '�����û���㹻�İ׽���ְ�,�Ҳ��ܸ��㽱��');
      end;      
    end; 
    63, 64, 65:
    begin
      if This_Player.GetBagItemCount('�׽���ְ�') >= 1 then
      begin
        pos[80] := 100;
        pos[81] := 100;
        pos[82] := 100;      
        This_Player.Take('�׽���ְ�', 1);
        This_Player.PlatLv := This_Player.PlatLv + 1;
      end
      else                        
      begin                          
        This_Npc.NpcDialog(This_Player,
        '�����û���㹻�İ׽���ְ�,�Ҳ��ܸ��㽱��');
      end; 
    end; 
    else   
    begin
      //....
    end;    
  end;

  //����������ɽ���
  rand := Random(total) + 1;
  temp := 0;
  for i := 1 to REWARD_KIND do
  begin
    temp := temp + pos[i];
    if rand <= temp then
    begin
      if (name[i] <> '')then
      begin
        This_Player.Give(name[i], 1);
      end;      
      Exit;
    end;
  end;
end;

//����66���׽��˺ŵ��ռ�����
procedure GiveFinalReward(index : Integer);
var
  item_name : string;
begin
  if (This_Player = nil) or (This_Npc = nil) then
  begin
    Exit;
  end;
  
  if This_Player.GetBagItemCount('�׽���ְ�') < 5 then
  begin
    This_Npc.NpcDialog(This_Player,
        '�����û���㹻�İ׽���ְ������Ҳ��ܸ��㽱��');   
    Exit;
  end; 
  
  case index of
  1: item_name := '����';
  2: item_name := '����';
  3: item_name := '����';
  else
     Exit;
  end; 
  
  //����!!!!!!!!!!!!!!!!!!!!!!!! 
  if (This_Player.PlatLv + START_LEVEL) = 66 then
  begin
     This_Player.Take('�׽���ְ�', 5);
     This_Player.PlatLv := This_Player.PlatLv + 1;      
     This_Player.Give(item_name, 1);
     This_Npc.NpcDialog(This_Player, 
     '��ϲ�㣬����ȡ��66���İ׽��ɫ������Ʒ��' + item_name + '��');
     This_Npc.NpcNotice('��ϲ����' + This_Player.Name + '������ȡ��66���İ׽��ɫ������Ʒ��' + item_name + '��');
  end
  else
  begin
     This_Npc.NpcDialog(This_Player,
        '���Ѿ���ȡ����66���İ׽��ɫ�����������ٴ���ȡ'); 
  end;
end; 

procedure _kaitian;
begin
  GiveFinalReward(1); //�쿪�� 
end;

procedure _zhentian;
begin
  GiveFinalReward(2); //������
end;

procedure _xuantian;
begin
  GiveFinalReward(3); //������
end;