{
*******************************************************************}

program Mir2;

 

procedure _DoExit;
begin
  This_Npc.CloseDialog(This_Player);
end;


procedure _chuang;
begin
   if This_Player.Level >= 8 then
   begin
      if compareText(This_Player.MapName,'GA0') = 0 then
      begin
         This_Player.RandomFlyTo('0122~1');
      end;
   end else
   begin
      This_Npc.NpcDialog(This_Player,
      '���ĵȼ���������ض�������̫Σ���ˣ�'); 
   end;
end;

procedure _xijie;
begin
   This_Npc.NpcDialog(This_Player,
   '|{cmd}<ͬʱӵ���¿����뿨����ζһ����/@duihuan>\'+
   '|{cmd}<Ϊʲô��ʾ�ҡ����ͨ���Ѿ���Ա�����Ժ����ԡ�/@why>\'+
   '|{cmd}<�һ����ʱ��Ϊʲôϵͳ��ʾ:����Ҫ��һ��������ܶһ��  �/@tishi>\'+
   '|{cmd}<������л�õĽ��ʯ�����ʾ/@xianshi>\'+
   '|{cmd}<���ͨ���Ƿ�������/@shifou>\ \'+
   '|{cmd}<����/@main>');
end;

procedure _shifou;
begin
   This_Npc.NpcDialog(This_Player,
   '���ͨ����������أ�ֻ����ͥͨ����ص�ͨ����\'+
   '���ͨ����û�б��أ������ı����������������ġ�\ \'+
   '|{cmd}<������һҳ/@xijie>');
end;

procedure _xianshi;
begin
   This_Npc.NpcDialog(This_Player,
   '�����������л���˽��ʯ����ô��ͬһ��������޷���ʾ�ģ�\'+
   '�����������һ��أ��򷵻���ͥ���Ϳ��Կ������ӵĽ��ʯ�ˡ�\ \'+
   '|{cmd}<������һҳ/@xijie>');
end;

procedure _tishi;
begin
   This_Npc.NpcDialog(This_Player,
   'ϵͳ�涨ÿ�ζһ�����󣬱����һ���Ӻ�����ٴζһ���\ \'+
   '|{cmd}<������һҳ/@xijie>');
end;

procedure _why;
begin
   This_Npc.NpcDialog(This_Player,
   '�����Ҷ��Լ���ʵ�������ģ�����[ѡ���������]��\'+
   '��û������ı����½������ͨ����\'+
   '��ұ���ֻ�����������ͨ��������й�����ܽ�����ضᱦ��\'+
   '������ͨ��һ����10����\'+
   '�����Ա�ͻ���ʾ�������ͨ���Ѿ���Ա�����Ժ����ԡ�\ \'+
   '|{cmd}<������һҳ/@xijie>');
end;

procedure _duihuan;
begin
   This_Npc.NpcDialog(This_Player,
   '�һ����ʱ�����ʺ�ͬʱ�����¿����뿨��ϵͳ���ȿ��¿��ٿ�\'+
   '�뿨��\'+
   '����Ҷһ��������ڵ��ڵ�ǰ�¿�ʣ��������ϵͳ��ֻ�һ��¿�\'+
   '��ǰ����ȥ1�������Ӧ�����������\'+
   '�����һ�Ҫ�����һ�������ȴ�һ��ʱ�䣬���ʱ��������\'+
   '�������ʱѡ��һ����������������\'+
   '���ʱ���Ժ���ҿ�ʹ���뿨��������Ķһ��뿨�ܶһ�����\'+
   '����Ϊ�뿨�ĵ�ǰ����ȥ1Сʱ����Ӧ�����������\'+ 
   '|{cmd}<����ȥ 1�족������ȥ 1Сʱ����ʲô��˼/@yisi>        ^<������һҳ/@xijie>');
end;

procedure _yisi;
begin
   This_Npc.NpcDialog(This_Player,
   '�¿��û��ڶһ����ʱ��ϵͳ�ᱣ����ǰ�¿������һ�죬�Ծ�\'+
   '����֤����´��ܵ�½��Ϸ��\'+
   '��ǰ�¿����ܶһ����������ȵ����¿��ĵ�ǰ����ȥ1�죬\'+
   '��������1����Ȼ�����¿�����ʱ����Ȼ���ġ��ļƷѷ�ʽ��\'+
   '�뿨�û��ڶһ����ʱ��ϵͳҲ��������ǰ�뿨�����һСʱ��\'+
   '��ǰ�뿨���ܶһ����������ȵ����뿨�ĵ�ǰ����ȥ 1С\'+
   'ʱ���������� 1СʱҲ��Ȼ�����뿨��������Ϸ�����ġ��ļƷ�\'+
   '��ʽ��\'+
   '|{cmd}<����/@xijie>');
end;

procedure _randomga0;
var
tga0 : integer;
begin
  if compareText(This_Player.MapName,'GA0') = 0 then
  begin
     tga0 := random(5);
     if tga0 = 4 then
     begin
        This_Player.Flyto('GA0',70,71);
     end else if tga0 = 3 then
     begin
        This_Player.Flyto('GA0',73,64);
     end else if tga0 = 2 then
     begin
        This_Player.Flyto('GA0',73,69);
     end else if tga0 = 1 then
     begin
        This_Player.Flyto('GA0',62,72);
     end else if tga0 = 0 then
     begin
        This_Player.Flyto('GA0',61,64);
     end; 
  end;
end;

procedure _ybbuylingfu;
var
  num : integer;
begin
  num := This_Player.GetV(14,2);
  if num < 0 then
  begin
    num := 0;
    This_Player.SetV(14,2,0);
    This_Npc.NpcDialog(This_Player,
    '�һ���׼��1��Ԫ���������Զһ�1�������\'
    +'������������Ķһ����������Ѿ�ͬ�����϶һ�����\' 
    +'�㻹û�жһ������\'  
    +'|{cmd}<��ѯ���/@chklinfu>\'
    +'|{cmd}<��һ��/@ybaddone> ^<������/@ybaddfive> ^<��ʮ��/@ybaddten>      |<��һ��/@ybdecone> ^<������/@ybdecfive> ^<��ʮ��/@ybdecten>\'
    +'|{cmd}<ȷ��ʹ��Ԫ���һ�/@ybbuylf>          ^<����һ����/@ybbuylf_1>          |<����/@main>'
    );
  end
  else if num = 0 then
  begin
    This_Npc.NpcDialog(This_Player,
    '�һ���׼��1��Ԫ���������Զһ�1�������\'
    +'������������Ķһ����������Ѿ�ͬ�����϶һ�����\'
    +'�㻹û�жһ������\'  
    +'|{cmd}<��ѯ���/@chklinfu>\'
    +'|{cmd}<��һ��/@ybaddone> ^<������/@ybaddfive> ^<��ʮ��/@ybaddten>      |<��һ��/@ybdecone> ^<������/@ybdecfive> ^<��ʮ��/@ybdecten>\'
    +'|{cmd}<ȷ��ʹ��Ԫ���һ�/@ybbuylf>          ^<����һ����/@ybbuylf_1>          |<����/@main>'
    );
  end
  else if num < 1000 then
  begin
    This_Npc.NpcDialog(This_Player,
    '�һ���׼��1��Ԫ���������Զһ�1�������\'
    +'������������Ķһ����������Ѿ�ͬ�����϶һ�����\' 
    +'�����һ�' + inttostr(num) + '�����\' 
    +'|{cmd}<��ѯ���/@chklinfu>\'
    +'|{cmd}<��һ��/@ybaddone> ^<������/@ybaddfive> ^<��ʮ��/@ybaddten>      |<��һ��/@ybdecone> ^<������/@ybdecfive> ^<��ʮ��/@ybdecten>\'
    +'|{cmd}<ȷ��ʹ��Ԫ���һ�/@ybbuylf>          ^<����һ����/@ybbuylf_1>          |<����/@main>'
    );
  end
  else
  begin
    num := 1000;
    This_Player.SetV(14,2,num);
    This_Npc.NpcDialog(This_Player,
    'һ�����ɶһ�1000�������\'
    +'���Ѿ�ѡ��һ�1000��������Ƿ���жһ���\ \'
    +'|{cmd}<��ѯ���/@chklinfu>\'
    +'|{cmd}<��һ��/@ybdecone> ^<������/@ybdecfive> ^<��ʮ��/@ybdecten>\'
    +'|{cmd}<ȷ��ʹ��Ԫ���һ�/@ybbuylf>          ^<����һ����/@ybbuylf_1>          |<����/@main>'
    ); 
  end;
end;

procedure showchklinfu();
var
  num : integer;
begin
  num := This_Player.GetV(14,2);
  if num < 0 then
  begin
    num := 0;
    This_Player.SetV(14,2,0);
    This_Npc.NpcDialog(This_Player,
    '�һ���׼��1��Ԫ���������Զһ�1�������\'
    +'������������Ķһ����������Ѿ�ͬ�����϶һ�����\' 
    +'�㻹û�жһ������\' 
    +'|{cmd}<��ѯ���/@chklinfu>\'
    +'|{cmd}<��һ��/@ybaddone> ^<������/@ybaddfive> ^<��ʮ��/@ybaddten>      |<��һ��/@ybdecone> ^<������/@ybdecfive> ^<��ʮ��/@ybdecten>\'
    +'|{cmd}<ȷ��ʹ��Ԫ���һ�/@ybbuylf>          ^<����һ����/@ybbuylf_1>          |<����/@main>'
    );
  end
  else if num = 0 then
  begin
    This_Npc.NpcDialog(This_Player,
    '�һ���׼��1��Ԫ���������Զһ�1�������\'
    +'������������Ķһ����������Ѿ�ͬ�����϶һ�����\' 
    +'�㻹û�жһ������\' 
    +'|{cmd}<��ѯ���/@chklinfu>\'
    +'|{cmd}<��һ��/@ybaddone> ^<������/@ybaddfive> ^<��ʮ��/@ybaddten>      |<��һ��/@ybdecone> ^<������/@ybdecfive> ^<��ʮ��/@ybdecten>\'
    +'|{cmd}<ȷ��ʹ��Ԫ���һ�/@ybbuylf>          ^<����һ����/@ybbuylf_1>          |<����/@main>'
    );
  end
  else if num < 1000 then
  begin
    This_Npc.NpcDialog(This_Player,
    '�һ���׼��1��Ԫ���������Զһ�1�������\'
    +'������������Ķһ����������Ѿ�ͬ�����϶һ�����\' 
    +'�����һ�' + inttostr(num) + '�����\' 
    +'|{cmd}<��ѯ���/@chklinfu>\'
    +'|{cmd}<��һ��/@ybaddone> ^<������/@ybaddfive> ^<��ʮ��/@ybaddten>      |<��һ��/@ybdecone> ^<������/@ybdecfive> ^<��ʮ��/@ybdecten>\'
    +'|{cmd}<ȷ��ʹ��Ԫ���һ�/@ybbuylf>          ^<����һ����/@ybbuylf_1>          |<����/@main>'
    );
  end
  else
  begin
    num := 1000;
    This_Player.SetV(14,2,num);
    This_Npc.NpcDialog(This_Player,
    'һ�����ɶһ�1000�������\'
    +'���Ѿ�ѡ��һ�1000��������Ƿ���жһ���\ \'
    +'|{cmd}<��ѯ���/@chklinfu>\'
    +'|{cmd}<��һ��/@ybdecone> ^<������/@ybdecfive> ^<��ʮ��/@ybdecten>\'
    +'|{cmd}<ȷ��ʹ��Ԫ���һ�/@ybbuylf>          ^<����һ����/@ybbuylf_1>          |<����/@main>'
    
    ); 
  end;
end;

procedure _chklinfu;
begin
  This_Npc.NpcDialog(This_Player,
  '�㵱ǰ����������ǣ�' + inttostr(This_Player.MyLFnum)
  ); 
end;

procedure ybaddlinfu(num : integer);
var
  allnum : integer;
begin
  allnum := This_Player.GetV(14,2) + num;
  if  allnum < 1000 then
  begin
    This_Player.SetV(14,2,allnum);
    showchklinfu;
  end
  else
  begin
    This_Player.SetV(14,2,1000);
    showchklinfu;
  end;
end; 


procedure _ybaddone;
begin
  ybaddlinfu(1);
end;

procedure _ybaddfive;
begin
  ybaddlinfu(5);
end;  

procedure _ybaddten;
begin
  ybaddlinfu(10);
end;

procedure ybdeclinfu(num : integer);
var
  allnum : integer;
begin
  allnum := This_Player.GetV(14,2) - num;
  if  allnum > 0 then
  begin
    This_Player.SetV(14,2,allnum);
    showchklinfu;
  end
  else
  begin
    This_Player.SetV(14,2,0);
    showchklinfu;
  end;
end; 

procedure _ybdecone;
begin
  ybdeclinfu(1);
end;

procedure _ybdecfive;
begin
  ybdeclinfu(5);
end;  

procedure _ybdecten;
begin
  ybdeclinfu(10);
end;

procedure _ybbuylf;
var
  linfu_num : integer;
begin
  linfu_num := This_Player.GetV(14,2);
  if This_Player.YBNum >= linfu_num then
  begin
    This_Npc.ClientYBbuyLF(This_Player, linfu_num);
    This_Player.SetV(14,2,0);
  end
  else
  begin
    This_Npc.NpcDialog(This_Player,
    '������û����ô���Ԫ����\ \|{cmd}<����/@main>');
  end;
end;

procedure _ybbuylf_1;
begin
  This_Npc.InputDialog(This_Player, '������Ҫ�һ����������(1~~1000)��', 0, 101);
end;

procedure P101;
var
  linfu_num : integer;
begin
  if This_Npc.InputOk then
  begin
    linfu_num := strtointdef(Trim(This_Npc.InputStr), 0);
    if This_Player.YBNum >= linfu_num then
    begin
      if (linfu_num > 0) and (linfu_num <= 1000) then
      begin
        This_Npc.ClientYBbuyLF(This_Player, linfu_num);
      end
      else
      begin
        This_Npc.NpcDialog(This_Player,
        'ÿ�ζһ����ܳ���1000�š�\ \|{cmd}<����/@main>'); 
      end;
    end
    else
    begin
      This_Npc.NpcDialog(This_Player,
      '������û����ô���Ԫ����\ \|{cmd}<����/@main>'); 
    end;
  end; 
end;

Begin
   This_Npc.NpcDialog(This_Player,
   '�ڽ������ͨ��ǰ��˲�䣬ʹ��1�����������������Ρ�\'+
   '��ʱ�����ͨ���ڵĹ��ｫ�޷������㣬ͨ���ң��ҿ��Խ�����\'+
   'Ԫ���һ�������������������Ҫ�һ������������\'+
   '1��Ԫ���һ�1�����������ׯ԰�󣬵ȴ�һ���Ӻ�Ϳɶһ������\ \'+
   '|{cmd}<ǰ����ͥ�����/@chuang>                  ^<��ѯ�������/@chklinfu>\'+ 
   '|{cmd}<�˽ⴳ��صĹ���/@xijie>                ^<ʹ��Ԫ���һ����/@ybbuylingfu>\'+
   '|{cmd}<ȥ��Χ����/@randomga0>                      ^<�뿪/@doexit>');
end.