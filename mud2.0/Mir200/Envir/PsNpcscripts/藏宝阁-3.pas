{
/*******************************************************************************
}

program Mir2;

{$I common.pas}
const
  nextRoomIdxStr = '61';

procedure _DoExit;
begin
  This_Npc.CloseDialog(This_Player);
end;

procedure domain;


  begin
  This_Npc.NpcDialog(This_Player,
    '������<�ر���/c=red>������Ҫ200��Ԫ�����������ӣ�\'
    +'�㽫�õ�һ�������ӵĻ��ᣬ��ҪС����λ��ᣬ����������\'
    +'���������������� 3�����ӵ������ܺ������������ڰ�������\'
    +'������ 5���ո�\'
    
    +'|{cmd}<����200Ԫ����ʼͶ����/@touzi>'
    
    );
  end;





procedure _touzi;
begin
  if (This_Player.Level >= 50) and (This_Player.FreeBagNum >= 4) and (This_Player.YBNum >= 200  ) then
  begin    
    This_Npc.NpcDialog(This_Player,
    '���ӵ���֮�Ͳ�ͬ������õ����½�����\'
    +'|3��:����,�Ȼ귨�����1��\' 
    +'|4��:ŭն����������ң��,�м��ʻ��ħ��װ�����1��\'
    +'|5��:��Ա����5��             ^6��:��Ա����3��\'
    +'|7��:2000����            ^8��:1800����\'
    +'|9��:��Ա����3��            ^10��:1600����\'
    +'|11��:1700����           ^12��:��Ա����3��\'
    +'|13��:1800����           ^14��:1850����\'
    +'|{cmd}<��һҳ/@nextpage>'
    );
  end
  else if (This_Player.Level >= 50) and (This_Player.FreeBagNum >= 4) and (This_Player.YBNum >= 200) then
  begin
    This_Npc.NpcDialog(This_Player,
    '���ӵ���֮�Ͳ�ͬ������õ����½�����\'
    +'|3��:����,�Ȼ귨�����1��\' 
    +'|4��:ŭն����������ң��,�м��ʻ��ħ��װ�����1��\'
    +'|5��:��Ա����5��             ^6��:��Ա����3��\'
    +'|7��:2000����            ^8��:1800����\'
    +'|9��:��Ա����3��            ^10��:1600����\'
    +'|11��:1700����           ^12��:��Ա����3��\'
    +'|13��:1800����           ^14��:1850����\'
    +'|{cmd}<��һҳ/@nextpage>'
    );   
  end
  else if This_Player.Level < 49 then
  begin
    This_Npc.NpcDialog(This_Player,
    '����ȼ��ﵽ50���ſ����������ӣ�');
  end
  else if This_Player.FreeBagNum < 4 then
  begin
    This_Npc.NpcDialog(This_Player,
    '������һ�°�������������5�����ϵİ����ռ��������Ұɣ�');
  end else if This_Player.YBNum >= 200 then
  begin
    This_Npc.NpcDialog(This_Player,
    '��������200Ԫ�����Ҳ����������ӣ�');
  end;
end;
  
procedure _nextpage;
begin
   if (This_Player.Level >= 50) and (This_Player.FreeBagNum >= 4) and (This_Player.YBNum >= 200) then
  begin
    This_Npc.NpcDialog(This_Player,
    '���ӵ���֮�Ͳ�ͬ������õ����½�����\'
    +'|15�㣺1900����\'
    +'|16�㣺��Ա����3��\'
    +'|17�㣺��Ա����5��\'
    +'|18�㣺ħ��װ�����1��\ \'
    +'|{cmd}<Ͷ����/@gotoprize488>'
    );
  end
  else if (This_Player.Level >= 50) and (This_Player.FreeBagNum >= 4) and (This_Player.YBNum >= 200) then
  begin
    This_Npc.NpcDialog(This_Player,
    '���ӵ���֮�Ͳ�ͬ������õ����½�����\'
    +'|15�㣺1900����\'
    +'|16�㣺��Ա����3��\'
    +'|17�㣺��Ա����5��\'
    +'|18�㣺ħ��װ�����1��\ \'
    +'|{cmd}<Ͷ����/@gotoprize488>'
    );
  end
  else if This_Player.Level < 49 then
  begin
    This_Npc.NpcDialog(This_Player,
     '����ȼ��ﵽ50���ſ����������ӣ�');
  end
  else if This_Player.FreeBagNum < 4 then
  begin
    This_Npc.NpcDialog(This_Player,
    '������һ�°�������������5�����ϵİ����ռ��������Ұɣ���');
  end;
end;

//��ֱ�Ӹ�����ƽ���������������ӳ����ܺ� 
function GetRandomDiceTotal() : Integer;
var temp1 : integer;
    temp2 : integer;    
begin
  temp1 := random(500)+1;
  Result := 0;
  if temp1 = 500 then    //����1/500�ĸ��ʳ�������1��������6 
  begin 
  temp2 := random(2);
    if temp2 = 1 then
    begin
      Result := 3;
    end
    else
    begin
      Result := 18;
    end;
  end
  else if temp1 <= 40 then   //����8%�ĸ��ʽ��Ϊ4��5��16��17
  begin
    temp2 := random(4)+1;
    if temp2 = 1 then
    begin
      Result := 4;
    end
    else if temp2 = 2 then
    begin
      Result := 5;
    end
    else if temp2 = 3 then
    begin
      Result := 16;
    end
    else if temp2 = 4 then
    begin
      Result := 17;
    end;       
  end
  else if temp1 <= 155 then   //����23%�ĸ��ʽ��Ϊ6��7��14��15
  begin
    temp2 := random(4)+1;
    if temp2 = 1 then
    begin
      Result := 6;      
    end
    else if temp2 = 2 then
    begin
      Result := 7;      
    end
    else if temp2 = 3 then
    begin
      Result := 14;      
    end
    else if temp2 = 4 then
    begin
      Result := 15;      
    end;       
  end
  else                       //��������69%�ĸ��ʽ��Ϊ8--13 
  begin
    Result := 8 + random(6);      
  end;
end; 

//���������������ӵĵ���
procedure SetAllDice();
var
  dice_num : Integer;
  dice1 : integer;
  dice2 : integer;
  dice3 : integer;
  temp1 : integer;         //��ʱ��¼��2�����ӵļ���� 
  temp2 : integer;         //��ʱ��¼���һ�����ӵļ�����  
begin
  dice_num := GetRandomDiceTotal();       //ȡ���������ӵĺ� 
  dice1 := Random(6) + 1;
  dice2 := Random(6) + 1;
  temp1 := dice_num - dice1;
  temp2 := temp1 - dice2;
  
//�����һ���������ֵ���������������ӵĺͼ�ȥ��ֵ�����2������֮��С��2����֤����һ������ȡֵ�����Լ�һ��������ֱ�����������˳�ѭ��   
  while (temp1 < 2) do       
  begin
    dice1 := dice1 - 1;
    temp1 := dice_num - dice1;
    temp2 := temp1 - dice2;
  end;
//�����һ���������ֵ���������������ӵĺͼ�ȥ��ֵ�����2������֮�ʹ���12����֤����һ������ȡֵ��С���Լ�һ��������ֱ�����������˳�ѭ��
  while (temp1 > 12) do
  begin
    dice1 := dice1 + 1;
    temp1 := dice_num - dice1;
    temp2 := temp1 - dice2;
  end;
//��һ�������Ѿ��������㴦��ڶ������ӵ�ֵ
//����������֮�ͼ�ȥǰ�������ӵ�ֵ���жϵ��������ӵ�ֵ�Ƿ���1��6�м�
//��ֵС��1����˵���ڶ�������ȡֵ������Ҫ�Լ�1
//��ֵ����6����˵���ڶ�������ȡֵ��С����Ҫ�Լ�1 
  while (temp2 < 1) do
  begin
    dice2 := dice2 - 1;
    temp2 := temp1 - dice2;
  end;
  while (temp2 > 6) do
  begin
    dice2 := dice2 + 1;
    temp2 := temp1 - dice2;
  end;
//ѭ���˳�����������ֵ������ó������¸������ӽ���
//��11�Ż��5��6��7�����ֱ��¼1-3�����ӵĽ�� 
  dice3 := temp2;         
  This_Player.SetV(0,1,dice1);
  This_Player.SetV(0,2,dice2);
  This_Player.SetV(0,3,dice3);
  
  This_Player.SetS(12,5,dice1);
  This_Player.SetS(12,6,dice2);
  This_Player.SetS(12,7,dice3);
  This_Player.SetS(12,3,0);
  This_Player.SetS(12,8,100);
end;

procedure GivePlayerPrize(prize_item:string);
begin
  This_Npc.NpcDialog(This_Player,
  '���ӵĵ���Ϊ�� ' + inttostr(This_Player.GetS(12,5)) + ',' + inttostr(This_Player.GetS(12,6)) + ',' + inttostr(This_Player.GetS(12,7))+'��\'
  +'�����˽���Ϊ��' + prize_item + '���Ͻ��򿪰����鿴һ�°ɣ�'
  );
  This_Player.Give(prize_item,1);
  This_Npc.NpcNotice('��ϲ��'+ This_Player.Name + '�ڲر����ã�' + prize_item + '��');
  This_Player.SetS(12,2,0);
  This_Player.SetS(12,4,1000); 
  This_Player.SetS(12,5,0);
  This_Player.SetS(12,6,0);
  This_Player.SetS(12,7,0); 
end; 

procedure _AfterPlayDice();
var dice1 : Integer;
    dice2 : Integer;
    dice3 : Integer;
    temp3 : integer;
    dice_num : Integer; 
begin
  
  dice1 := This_Player.GetS(12, 5);
  dice2 := This_Player.GetS(12, 6);
  dice3 := This_Player.GetS(12, 7);
  dice_num := dice1 + dice2 + dice3;
  if (dice1 > 0) and (dice2 > 0) and (dice3 > 0) then
  begin
    //������ӵ���ֵ 
    This_Player.SetV(0, 1, 0);
    This_Player.SetV(0, 2, 0);
    This_Player.SetV(0, 3, 0);   
    //��ʾ����ֵ���轱���Ĺ��� 
    case dice_num of
      3:
      begin
          temp3 := random(2) + 1;
          if temp3 = 1 then
          begin
            GivePlayerPrize('����');
          end
          else
          begin
            GivePlayerPrize('�Ȼ귨��');
          end ; 

      end;
      4:
      begin
          temp3 := random(5) + 1;
          if temp3 = 1 then
          begin
            GivePlayerPrize('ŭն');
          end
          else if temp3 = 2 then
          begin
            GivePlayerPrize('����');
          end
          else if temp3 = 3 then
          begin
            GivePlayerPrize('��ң��');
          end
          else
          begin
            This_Npc.NpcDialog(This_Player,
            '���ӵĵ���Ϊ�� ' + inttostr(This_Player.GetS(12,5)) + ',' + inttostr(This_Player.GetS(12,6)) + ','  + inttostr(This_Player.GetS(12,7))+'��\'
            +'�����˽���Ϊ��ŭն��װ�����һ����'
            );
            This_Npc.GiveConfigPrize(This_Player,5,'��ϲ��'+ This_Player.Name + '�ڲر����ã�<$GIFTITEM>��');
          end;
      end;
      5,17: 
      begin
         This_Player.Give('��Ա����',5);
     
        This_Npc.GiveConfigPrize(This_Player,38,'��ϲ��'+ This_Player.Name + '�ڲر����ã���Ա����5��!');
       
      end;
      6,9,12,16:
      begin
        This_Player.Give('��Ա����',3);
       
        This_Npc.GiveConfigPrize(This_Player,38,'��ϲ��'+ This_Player.Name + '�ڲر����ã���Ա����3��!');
       
      end;
      7:
      begin
        This_Npc.NpcDialog(This_Player,
        '���ӵĵ���Ϊ�� ' + inttostr(This_Player.GetS(12,5)) + ',' + inttostr(This_Player.GetS(12,6)) + ','  + inttostr(This_Player.GetS(12,7))+'��\'
        +'�����˽���Ϊ��2000���飡'
          );
        This_Npc.GiveConfigPrize(This_Player,38,'��ϲ��'+ This_Player.Name + '�ڲر���ҡ�����ӵĵ���Ϊ�� ' + inttostr(This_Player.GetS(12,5)) + ',' + inttostr(This_Player.GetS(12,6)) + ','  + inttostr(This_Player.GetS(12,7))+'��ã�2000����!');
      end;
      8,13:
      begin
        This_Npc.NpcDialog(This_Player,
        '���ӵĵ���Ϊ�� ' + inttostr(This_Player.GetS(12,5)) + ',' + inttostr(This_Player.GetS(12,6)) + ','  + inttostr(This_Player.GetS(12,7))+'��\'
        +'�����˽���Ϊ��1800���飡'
          );
        This_Npc.GiveConfigPrize(This_Player,39,'��ϲ��'+ This_Player.Name + '�ڲر���ҡ�����ӵĵ���Ϊ�� ' + inttostr(This_Player.GetS(12,5)) + ',' + inttostr(This_Player.GetS(12,6)) + ','  + inttostr(This_Player.GetS(12,7))+'��ã�1800���飡');
      end;
      10:
      begin
        This_Npc.NpcDialog(This_Player,
        '���ӵĵ���Ϊ�� ' + inttostr(This_Player.GetS(12,5)) + ',' + inttostr(This_Player.GetS(12,6)) + ','  + inttostr(This_Player.GetS(12,7))+'��\'
        +'�����˽���Ϊ��1600���飡'
          );
        This_Npc.GiveConfigPrize(This_Player,40,'��ϲ��'+ This_Player.Name + '�ڲر���ҡ�����ӵĵ���Ϊ�� ' + inttostr(This_Player.GetS(12,5)) + ',' + inttostr(This_Player.GetS(12,6)) + ','  + inttostr(This_Player.GetS(12,7))+'��ã�1600���飡');
      end;
      11:
      begin
        This_Npc.NpcDialog(This_Player,
        '���ӵĵ���Ϊ�� ' + inttostr(This_Player.GetS(12,5)) + ',' + inttostr(This_Player.GetS(12,6)) + ','  + inttostr(This_Player.GetS(12,7))+'��\'
        +'�����˽���Ϊ��1700���飡'
          );
        This_Npc.GiveConfigPrize(This_Player,41,'��ϲ��'+ This_Player.Name + '�ڲر���ҡ�����ӵĵ���Ϊ�� ' + inttostr(This_Player.GetS(12,5)) + ',' + inttostr(This_Player.GetS(12,6)) + ','  + inttostr(This_Player.GetS(12,7))+'��ã�1700���飡');
      end;
      14:
      begin
        This_Npc.NpcDialog(This_Player,
        '���ӵĵ���Ϊ�� ' + inttostr(This_Player.GetS(12,5)) + ',' + inttostr(This_Player.GetS(12,6)) + ','  + inttostr(This_Player.GetS(12,7))+'��\'
        +'�����˽���Ϊ��1850���飡'
          );
        This_Npc.GiveConfigPrize(This_Player,44,'��ϲ��'+ This_Player.Name + '���ڲر���ҡ�����ӵĵ���Ϊ�� ' + inttostr(This_Player.GetS(12,5)) + ',' + inttostr(This_Player.GetS(12,6)) + ','  + inttostr(This_Player.GetS(12,7))+'��ã�1850���飡');
      end;
      15:
      begin
        This_Npc.NpcDialog(This_Player,
        '���ӵĵ���Ϊ�� ' + inttostr(This_Player.GetS(12,5)) + ',' + inttostr(This_Player.GetS(12,6)) + ','  + inttostr(This_Player.GetS(12,7))+'��\'
        +'�����˽���Ϊ��1900���飡'
          );
        This_Npc.GiveConfigPrize(This_Player,45,'��ϲ��'+ This_Player.Name + '�ڲر���ҡ�����ӵĵ���Ϊ�� ' + inttostr(This_Player.GetS(12,5)) + ',' + inttostr(This_Player.GetS(12,6)) + ','  + inttostr(This_Player.GetS(12,7))+'��ã�1900���飡');
      end;
      18:
      begin
        This_Npc.NpcDialog(This_Player,
        '���ӵĵ���Ϊ�� ' + inttostr(This_Player.GetS(12,5)) + ',' + inttostr(This_Player.GetS(12,6)) + ','  + inttostr(This_Player.GetS(12,7))+'��\'
        +'�����˽���Ϊ��ħ��ϵ�����Σ��Ͻ��򿪰����鿴һ�°ɣ�'
          );
        This_Npc.GiveConfigPrize(This_Player,17,'��ϲ��'+ This_Player.Name + '�ڲر���ҡ�����ӵĵ���Ϊ�� ' + inttostr(This_Player.GetS(12,5)) + ',' + inttostr(This_Player.GetS(12,6)) + ','  + inttostr(This_Player.GetS(12,7))+'��ã�<$GIFTITEM>��');
      end;
    end;
  end;
  This_Player.SetS(12,2,0);  
  This_Player.SetS(12,4,1000);   
  This_Player.SetS(12,5,0);
  This_Player.SetS(12,6,0);
  This_Player.SetS(12,7,0);
  This_Player.SetS(12,8,0);
end;

procedure _gotoprize488;
begin

   if compareText(This_Player.MapName,'3') = 0 then
  begin
    if (This_Player.GetV(0, 1) > 0) or (This_Player.GetV(0, 2) > 0) or (This_Player.GetV(0, 3) > 0) then
    begin
    _DoExit;
    end;
    
    if This_Player.YBNum >= 200 then
    begin
      This_Player.PsYBConsum(This_NPC,'Gaoji0LB',20051,200,1);
      //����3�����ӵĵ��� 
      if This_Player.GetS(12,8) < 100 then
      SetAllDice();
      This_Npc.PlayDice(This_Player, 3,'@AfterPlayDice');
    end
    else if This_Player.YBNum >= 200 then
    begin
      This_Player.PsYBConsum(This_NPC,'Gaoji0LB',20051,200,1);
      //����3�����ӵĵ��� 
      if This_Player.GetS(12,8) < 100 then
      SetAllDice();       
      This_Npc.PlayDice(This_Player, 3,'@AfterPlayDice');
    end
    else if This_Player.Level < 49 then
    begin
      This_Npc.NpcDialog(This_Player,
       '����ȼ��ﵽ50���ſ����������ӣ�');
    end
    else if This_Player.FreeBagNum < 4 then
    begin
      This_Npc.NpcDialog(This_Player,
      '������һ�°�������������5�����ϵİ����ռ��������Ұɣ���');
    end
    else if This_Player.YBNum >= 200 then
    begin
      This_Npc.NpcDialog(This_Player,
      '��������㹻��Ԫ�����͸Ͽ콻���Ұɣ���Ȼ����ô����Ͷ�����أ�');
    end; 
  end
  else
  begin
    _DoExit;
  end; 
end;
function Gaoji0LB(price, num: Integer):boolean; 
begin
   result := true; 
 
end;

procedure _gostar;
begin
  if compareText(This_Player.MapName,'3') = 0 then
  begin
     This_Player.RandomFlyTo('3');
  end;
end;

procedure _leave;
begin
  if compareText(This_Player.MapName,'3') = 0 then
  begin
    This_Player.FlyTo('3',330,330);
  end;
end;

begin
  domain;
end.  