                                        program mir2;

var
  shuxing: string;
  shuxingzhi, shuxingzhi1, fangyu, moyu, shengming, mofa, xiangcha: integer;
  shuxingzu: array [1 .. 5] of integer;
  shouci, shuaxin: Boolean;

procedure OnInitialize;
begin
  shuxingzu[1] := 0;
  shuxingzu[2] := 4;
  shuxingzu[3] := 5;
  shuxingzu[4] := 8;
  shuxingzu[5] := 9;
end;

procedure _letgo;
var
  xuanzhongzhi, fujiazhi: integer;
begin
  case This_Player.Job of
    0:
      shuxing := '����';
    1:
      shuxing := 'ħ��';
    2:
      shuxing := '����';
  end;
  if shouci then
  begin
    if This_Player.MyLFnum >= 500 then
    begin
      shuxingzhi := 0;
      shuxingzhi1 := 0;
      fangyu := 0;
      moyu := 0;
      shengming := 0;
      mofa := 0;
      shuaxin := False;
      This_Player.DecLF(20250, 500, False);    //����۳�100��� 
      shuaxin := True;
      xuanzhongzhi := random(5) + 1;
      shuxingzu[1] := 0;
      fujiazhi := random(10) + 1;
      case shuxingzu[xuanzhongzhi] of
        0:
          begin
            case This_Player.Job of
              0:
                begin
                  shuxingzhi := This_Player.MaxDC *35 / 100;    // �����սʿ������ ���Ϊ 35Ϊ���������Ի�õ����� ��߿��Ըĳ�100 
                  shuxingzhi1 := shuxingzhi + fujiazhi;
                end;
              1:
                begin
                  shuxingzu[1] := 1;
                  shuxingzhi := This_Player.MaxMC * 20 / 100;  //ħ�� 
                  shuxingzhi1 := shuxingzhi + fujiazhi;
                end;
              2:
                begin
                  shuxingzu[1] := 2;
                  shuxingzhi := This_Player.MaxSC * 20 / 100;  //���� 
                  shuxingzhi1 := shuxingzhi + fujiazhi;
                end;
            end;
          end;
        4:
          begin
            shuxingzhi := This_Player.MaxHP * 30 / 100;      //HP 
            shengming := shuxingzhi + fujiazhi;
          end;
        5:
          begin
            shuxingzhi := This_Player.MaxMP * 30 / 100;    //MP
            mofa := shuxingzhi + fujiazhi;
          end;
        8:
          begin
            shuxingzhi := This_Player.MaxAC * 20 / 100;    //���� 
            fangyu := shuxingzhi + fujiazhi;
          end;
        9:
          begin
            shuxingzhi := This_Player.MaxAC * 20 / 100;  //���� 
            moyu := shuxingzhi + fujiazhi;
          end;
      end;
    end
    else
      This_Player.PlayerNotice('ÿ��ˢ������������Ҫ���500����', 0);
  end;
  shouci := True;
  This_Npc.NpcDialog(This_Player, '�㽫����������һ�����Լӳɣ�' + '|' + shuxing + '��' +
    inttostr(shuxingzhi1) + '��' + '|������' + inttostr(fangyu) + '��' + '|ħ����' +
    inttostr(moyu) + '��' + '|����ֵ��' + inttostr(shengming) + '��' + '|ħ��ֵ��' +
    inttostr(mofa) + '��' +
    '|����������1Сʱ�ڽ��޷��������������������ؿ�����|{cmd}<ˢ������/@letgo> ^{cmd}<��������/@kaiqi>')
end;

procedure _kaiqi;
var
  shuxingming: string;
  shuxingshuzhi: integer;
begin
  if shuaxin then
  begin
    This_Player.SetV(50, 5, ConvertDateTimeToDB(GetNow));
    if shuxingzhi1 > 0 then
    begin
      shuxingming := '������';
      shuxingshuzhi := shuxingzhi1;
      This_Player.AddPlayerAbil(This_Player.Job, shuxingzhi1, 3600);    //����ʱ�� 3600 ��  ���Ը�   
    end;
    if fangyu > 0 then
    begin
      shuxingming := '����';
      shuxingshuzhi := fangyu;
      This_Player.AddPlayerAbil(8, fangyu, 3600);
    end;
    if moyu > 0 then
    begin
      shuxingming := 'ħ��';
      shuxingshuzhi := moyu;
      This_Player.AddPlayerAbil(9, moyu, 3600);
    end;
    if shengming > 0 then
    begin
      shuxingming := 'HP';
      shuxingshuzhi := shengming;
      This_Player.AddPlayerAbil(4, shengming, 3600);
    end;
    if mofa > 0 then
    begin
      shuxingming := 'MP';
      shuxingshuzhi := mofa;
      This_Player.AddPlayerAbil(5, mofa, 3600);
    end;
    This_Npc.CloseDialog(This_Player);
    ServerSay('���<' + This_Player.Name + '>�������������壬' + shuxingming + '������' +
      inttostr(shuxingshuzhi) + '�㣬��ʱɱ��������� �� ', 5);
  end
  else
    This_Player.PlayerNotice('����ˢ����Ҫ���ӵ�������', 0);
end;

begin
  shuaxin := False;
  This_Npc.NpcSay('�������������ʱ�����ĸ������ԣ�����ʱ��1Сʱ����PK�ر���');
  xiangcha := minusDataTime(GetNow,
    ConvertDBToDateTime(This_Player.GetV(50, 5)));
  if (This_Player.GetV(50, 5) = -1) or (xiangcha >= 3610) then    //�������ü��ʣ��ʱ�����  3610   
  begin
    shouci := False;
    This_Npc.NpcDialog(This_Player, '�������������ʱ����������ԣ�ɱ�˶ᱦ������������' +
      '|����500����������ˢ��һ���������ԣ���������������Ա������ӳɡ�����ʱ��1Сʱ��|�㵱ǰ�����������' +
      inttostr(This_Player.MyLFnum) + '|{cmd}<��Ҫ����/@letgo>');
  end
  else
    This_Npc.NpcDialog(This_Player, '����' + inttostr(3610 - xiangcha) +   //������3610��ȥ��ȥ��ʱ�� ���� ʣ�࿪��ʱ�� 
      '���ſ����ٴο���������');

end.