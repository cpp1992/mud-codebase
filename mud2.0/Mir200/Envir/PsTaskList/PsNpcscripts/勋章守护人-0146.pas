{
/*******************************************************************************

/*******************************************************************************
}
program Mir2;

{$I common.pas}

procedure _huan5;
begin
  This_Npc.NpcDialog(This_Player,
    '�弶ѫ�µ���ȡ��ֻ��ָ�����жһ���������������жһ�\' +
    'ָ���һ��弶ѫ����Ҫ��������ֵ640��\ \' +
    '|{cmd}<��ȡָ���弶ѫ��/@zhiding5>\' +
    '|{cmd}<����/@main>');
end;

procedure _zhiding5;
begin
  This_Npc.NpcDialog(This_Player,
    '��ѡ����Ҫ��ȡ������ѫ��,�弶ѫ����ָ����ȡ��\' +
    'ָ���һ���Ҫ����640������ֵ\' +
    '|{cmd}<ָ���һ�����ѫ��51��/@winmedal~51>\' +
    '|{cmd}<ָ���һ�����ѫ��52��/@winmedal~52>\' +
    '|{cmd}<ָ���һ�����ѫ��53��/@winmedal~53>\' +
    '|{cmd}<ָ���һ�����ѫ��54��/@winmedal~54>\' +
    '|{cmd}<ָ���һ�����ѫ��55��/@winmedal~55>\');
end;

procedure _winmedal(str: string);
var
  medal_kind,temp:integer;
begin  
  //This_Npc.SpeGetMedalBySw(This_Player, str);
  medal_kind := StrToIntDef(str,-1);
  if (medal_kind < 51) or (medal_kind > 55) then
  begin
    This_Npc.NpcDialog(This_Player,
    '��ȡ��ѫ������Ƿ���'
    );
    exit; 
  end;
  
  if This_Player.MyShengwan >= 640 then
  begin
    if This_Player.FreeBagNum < 1 then
    begin
      This_Npc.NpcDialog(This_Player,
      '��İ������ˣ��������������������Ұɣ�'
      );
      exit; 
    end;
    This_Player.MyShengwan := This_Player.MyShengwan - 640;
    This_Player.Give('����ѫ��' + str + '��',1);
    This_Npc.NpcDialog(This_Player,
    '��ϲ��һ�[����ѫ��'+ str + '��]�ɹ���'
    ); 
  end
  else
    This_Npc.NpcDialog(This_Player,
    '�������ֵ������������'
    );
end;

procedure _huan;
begin
  This_Npc.NpcDialog(This_Player,
    '��Ҫ��ȡ����ѫ�µĻ������Ҫ���㹻������ֵ��\' +
    'ָ���һ�������һ�������ʹ���������жһ�\' +
    '|{cmd}<��ȡ���ѫ��/@feizhiding>\' +
    '|{cmd}<��ȡָ��ѫ��/@zhiding>\ ' +
    '|{cmd}<����/@main>');
end;

procedure _feizhiding;
begin
  This_Npc.NpcDialog(This_Player,
    '��ѡ����Ҫ��ȡ������ѫ�£������������ȡ�ġ�\\' +
    '|{cmd}<�����ȡ11��15������ѫ��/@lingxunz~1>\' +
    '|{cmd}<�����ȡ21��25������ѫ��/@lingxunz~2>\' +
    '|{cmd}<�����ȡ31��35������ѫ��/@lingxunz~3>\' +
    '|{cmd}<�����ȡ41��45������ѫ��/@lingxunz~4>\' +
    '|{cmd}<����/@main>');
end;

procedure _lingxunz(str: string);
var
  medal_kind,temp:integer;
begin
  //This_Npc.RndGetMedal(This_Player, str);
  medal_kind := StrToIntDef(str,-1);
  if (medal_kind < 0) or (medal_kind > 4) then
  begin
    This_Npc.NpcDialog(This_Player,
    '��ȡ��ѫ������Ƿ���'
    );
    exit; 
  end;
  
  if This_Player.MyShengwan >= 20*medal_kind then
  begin
    if This_Player.FreeBagNum < 1 then
    begin
      This_Npc.NpcDialog(This_Player,
      '��İ������ˣ��������������������Ұɣ�'
      );
      exit; 
    end;
    
    This_Player.MyShengwan := This_Player.MyShengwan - 20*medal_kind;
    temp := random(5)+1; 
    This_Player.Give('����ѫ��'+str+inttostr(temp) + '��',1); 
    This_Npc.NpcDialog(This_Player,
    '��ϲ��һ�[����ѫ��'+ str + inttostr(temp) + '��]�ɹ���'
    );
  end 
  else
    This_Npc.NpcDialog(This_Player,
    '�������ֵ������������'
    );  
end;



procedure _zhiding;
begin
  This_Npc.NpcDialog(This_Player,
    '�����������ȡָ��������ѫ�£�\' +
    '��Ȼ����Ҫ���������������\ \' +
    '|{cmd}<����ѫ��11��/@zhidxunz~11>   ^<����ѫ��12��/@zhidxunz~12>   |{cmd}<����ѫ��13��/@zhidxunz~13>   ^<����ѫ��14��/@zhidxunz~14>\'+
    '|{cmd}<����ѫ��15��/@zhidxunz~15>   \'+ 
    '|{cmd}<����ѫ��21��/@zhidxunz~21>   ^<����ѫ��22��/@zhidxunz~22>   |{cmd}<����ѫ��23��/@zhidxunz~23>   ^<����ѫ��24��/@zhidxunz~24>\'+
    '|{cmd}<����ѫ��25��/@zhidxunz~25>\ \' +
    '|{cmd}<��һҳ/@zhiding_1>           ^<����/@main>');
end;

procedure _zhiding_1;
begin
  This_Npc.NpcDialog(This_Player,
    '�����������ȡָ��������ѫ�£�\' +
    '��Ȼ����Ҫ���������������\ \' +
    '|{cmd}<����ѫ��31��/@zhidxunz~31>   ^<����ѫ��32��/@zhidxunz~32>   |{cmd}<����ѫ��33��/@zhidxunz~33>   ^<����ѫ��34��/@zhidxunz~34>\' + 
    '|{cmd}<����ѫ��35��/@zhidxunz~35>  \' +
    '|{cmd}<����ѫ��41��/@zhidxunz~41>   ^<����ѫ��42��/@zhidxunz~42>   |{cmd}<����ѫ��43��/@zhidxunz~43>   ^<����ѫ��44��/@zhidxunz~44>\' +
    '|{cmd}<����ѫ��45��/@zhidxunz~45>   \ \' +
    '|{cmd}<��һҳ/@zhiding>           ^<����/@main>');
end;

procedure _zhidxunz(str: string);
var
  medal_kind,temp1,temp2:integer;
begin
  //This_Npc.SpeGetMedalByRy(This_Player, str);
  medal_kind := StrToIntDef(str,-1);
  
  temp1 := medal_kind div 10;
  temp2 := medal_kind mod 10; 
  
  if (temp1 < 1) or (temp1 > 4) then
  begin
    This_Npc.NpcDialog(This_Player,
    '��ȡ��ѫ������Ƿ���'
    );
    exit; 
  end;
  
  if (temp2 < 1) or (temp2 > 5) then
  begin
    This_Npc.NpcDialog(This_Player,
    '��ȡ��ѫ������Ƿ���'
    );
    exit; 
  end;
  
  if This_Player.MyShengwan >= 80*temp1 then
  begin
    if This_Player.FreeBagNum < 1 then
    begin
      This_Npc.NpcDialog(This_Player,
      '��İ������ˣ��������������������Ұɣ�'
      );
      exit; 
    end;
    
    This_Player.MyShengwan := This_Player.MyShengwan - 80*temp1;
    This_Player.Give('����ѫ��' + str + '��',1);
    This_Npc.NpcDialog(This_Player,
    '��ϲ��һ�[����ѫ��' + str + '��]�ɹ���'
    );  
  end
  else
    This_Npc.NpcDialog(This_Player,
    '�������ֵ������'
    );
end;

procedure _sj;
begin
  This_Npc.NpcDialog(This_Player,
    'ѫ�¿ɳɹ������Ĵ�����ѫ�µĵȼ�һ��,��1��ѫ��ֻ�ܳɹ�����1��\' +
    '�����뽫��Ҫ����������ѫ����������϶����Ƿ�����İ����ڣ�\' +
    '�������Ҫ�ڰ����ڷź���������ѫ�µĸ���ԭ�ϣ�\' +
    'ÿ����������ѫ�¶�������������ڵ�����ԭ��,�뱣�ܺ���Ҫ��Ʒ��\' +
    'ѫ��������Ϊ���֣�һ���ǳ���������һ���ǡ����ʡ�������\\' +
    '|{cmd}<�鿴�����䷽/@cksj>\' +
    '|{cmd}<ѡ��ѫ�³�������/@cgsj>\' +
    '|{cmd}<ѡ��ѫ�¾�������/@jcsj>\' +
    '|{cmd}<����/@main>');
end;

procedure _cksj;
begin
  This_Npc.NpcDialog(This_Player,
    '����������,1����2��ѫ�µ��䷽����Ҫ�����ѫ�����Զ�Ӧ������,\' +
    '����3����4��ѫ�µ��䷽����Ҫ����ʥս���������𡢱�����ְҵ\' +
    '��Ӧ��װ����,������ħ��������ѫ�µ������䷽�п��Է����Ӧ��\' +
    '�͵�������������,ÿ����������߱�5����Ʒ:����,������,\' +
    'ѫ��֮��,�̱�ʯ��,��ˮ����5����Ʒ��������Ҫ������,����Ұﲻ\' +
    '����,��֮Խ�ӽ��䷽�ɹ���Խ��ѫ�³�������ʧ����ѫ�²������飬\' +
    '��ʧ��һ��ѫ�µ��ܳ־ý�����5�㾪�������У������֪����ȷ\' +
    '���䷽������ֻ��50���ĳɹ����ᣬʧ�ܵĻ�ѫ�¾ͻ����飬���\' +
    'δ�����䷽Ҫ��Ļ�Ҳ�϶�������ġ�                 ^<������ҳ/@sj>');
end;

procedure _cgsj;
begin
  This_Npc.NpcDialog(This_Player,
    '��һ��������Ҫ������Ϊ:��ָ��\' +
    '�ɹ�һ���Ժ�ڶ�����Ҫ��������:����\' +
    '��������Ҫ��������:���������Ĵ�����Ҫ����:ͷ����\' +
    'ѫ�³�������ʧ����Ҳ�������飬��ʧ��һ��ѫ�µ��ܳ־ý�����5�㡣\' +
    '��ѫ�µ��ܳ־õ��ڻ��ߵ���5��ʱ�������ٽ���ѫ�µĳ���������\' +
    'ÿ�γ�����������Ҫ����3�������ֵ\\' +
    '|{cmd}<��ʼ��������/@kscgsj>\' +
    '|{cmd}<����/@sj>');
end;

procedure _uplvmedal;
begin
  This_Npc.UpMedalAbil(This_Player);
end;

procedure _kscgsj;
begin
  This_Npc.NpcDialog(This_Player,
    '������İ������Ƿ����㹻���䷽���ϣ�\' +
    'һ�������ȷ������������ʼ��������ѫ�£�\' +
    '��ʹ��İ�����ʲôҲû�У������д��������Σ�\' +
    '���ᱻ��Ϊ����ԭ�����ߣ����������ǰ��Ҫ��ϸ���ǣ�\' +
    '�ڰ����ڷ�������Ϊ����ʵ��䷽ԭ�ϡ�\' +
    '�ܲ��������ɹ��Ϳ�����������ˣ�\\' +
    '|{cmd}<ȷ������/@uplvmedal>\' +
    '|{cmd}<����/@sj>');
end;

procedure _jcsj;
begin
  This_Npc.NpcDialog(This_Player,
    '��Ҫ��������ѫ�µġ����ʡ�������\' +
    '�������\' +
    '�㻹�ǵȵ������ɣ�\\' +
    '|{cmd}<����/@sj>');
end;

procedure _sj5;
begin
  This_Npc.NpcDialog(This_Player,
    '�弶����ѫ�¿ɲ��򵥣�Ҫ����Ҳû��ô���ס�\' +
    'һ��������ѫ�µ�ħ���ͻᱻ�ͷţ���������޷����ݣ�\' +
    '���Ǵ�˵���ѫ��ͬʱҲ�����ž��˵����ܡ�\' +
    '��֪�������������\' +
    '|{cmd}<��֪����/@zhidao>\' +
    '|{cmd}<�Ҳ�֪��/@buzhidao>');
end;

procedure _zhidao;
begin
  This_Npc.NpcDialog(This_Player,
    '�Ǿ���������Ұ�...\ \' +
    '|{cmd}<����/@main>');
end;

procedure _buzhidao;
begin
  This_Npc.NpcDialog(This_Player,
    '��Ȼ��֪�����ǻ���ʲô��˵�ģ�\' +
    '�㻹����ȥ�������������ɡ�\ \' +
    '|{cmd}<����/@main>');
end;


procedure _checkswry;
begin
  This_Npc.NpcDialog(This_Player,
    '��Ŀǰ�������ǣ�' + inttostr(This_Player.MyShengwan));
end;



begin
  This_Npc.NpcDialog(This_Player,
    '���������ȡ����ѫ��,ֻҪ���㹻������,\' +
    '�ȼ�Խ�ߵ�ѫ����ҪԽ�������������ѫ�������������£�\' +
    'һ��ѫ����Ҫ:20��,�һ�ָ����ŵ�һ��ѫ����Ҫ:80��\' +
    '����ѫ����Ҫ:40��,�һ�ָ����ŵĶ���ѫ����Ҫ:160��\' +
    '����ѫ����Ҫ:60��,�һ�ָ����ŵ�����ѫ����Ҫ:240��\' +
    '�ļ�ѫ����Ҫ:80��,�һ�ָ����ŵ��ļ�ѫ����Ҫ:320��\' +
    '|{cmd}<�һ�����ѫ��/@huan>                   ^<�һ��弶����ѫ��/@huan5>\' +
    //'|{cmd}<��������ѫ��/@sj>                   ^<�����弶����ѫ��/@sj5>\' +
    '|{cmd}<��ѯ��������/@checkswry>');
end.