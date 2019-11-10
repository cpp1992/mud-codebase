
{********************************************************************

*******************************************************************}

PROGRAM Mir2;
{$I common.pas}

Procedure _doexit;
begin
   This_Npc.CloseDialog(This_Player);
end;

procedure _Exit;
begin
  This_Npc.CloseDialog(This_Player);
end;

var
wp_name : array[1..24] of string;
wp_value : array[1..24] of integer; 

procedure OnInitialize;
begin
wp_name[1] :='��˪';
wp_name[2] :='����';
wp_name[3] :='����';
wp_name[4] :='��ħ';
wp_name[5] :='����';
wp_name[6] :='ħ��';
wp_name[7] :='����';
wp_name[8] :='��ɲ';
wp_name[9] :='��֮��';
wp_name[10] :='������';
wp_name[11] :='Ѫ��';
wp_name[12] :='�޼���';
wp_name[13] :='����֮��';
wp_name[14] :='�þ�֮��';
wp_name[15] :='����Ȩ��';
wp_name[16] :='���ƽ�';
wp_name[17] :='ŭն';
wp_name[18] :='����';
wp_name[19] :='����';
wp_name[20] :='�Ȼ귨��';
wp_name[21] :='��ң��';

wp_value[1] :=0;
wp_value[2] :=0;
wp_value[3] :=0;
wp_value[4] :=0;
wp_value[5] :=2;
wp_value[6] :=0;
wp_value[7] :=0;
wp_value[8] :=0;
wp_value[9] :=0;
wp_value[10] :=0;
wp_value[11] :=0;
wp_value[12] :=0;
wp_value[13] :=40;
wp_value[14] :=5;
wp_value[15] :=5;
wp_value[16] :=5;
wp_value[17] :=30;
wp_value[18] :=30;
wp_value[19] :=40;
wp_value[20] :=40;
wp_value[21] :=40;

end; 

procedure _SmeltWeapon;
begin
  This_NPC.NpcDialog(This_Player,
   '�Ϸ����¯������֮�����ã��ɽ��󲿷���������Ϊ���ʯ��\'
   +'�����ܹ����������ٽ��ʯ����Ҫ���������������ˡ�\ \'
   +'|{cmd}<������������/@SmeltWeapon_1>             ^<�����������/@SmeltWeapon_2>\ \'
   +'|{cmd}<�鿴������������/@SmeltWeapon_3>'
   ); 
end; 

procedure _SmeltWeapon_1;
begin
   This_Npc.NpcDialog(This_Player,
   '��Ͷ����������ͬ�������������Ľ��ʯ������ͬ��\'
   +'|<ע�⣺������������ʧ��/c=red>\'
   
   +'|�þ�֮�ȡ�����Ȩ�ȡ����ƽ�       5�Ž��ʯ\'
   +'|ŭն������                      30�Ž��ʯ\'
   +'|����֮��                        40�Ž��ʯ\'
   +'|�Ȼ귨�ȡ���������ң��          40�Ž��ʯ\'
   +'|{cmd}<����/@SmeltWeapon_1_1>    <����/@SmeltWeapon>'
  );
  
end; 

procedure _SmeltWeapon_1_1;
begin
    This_NPC.Click_CommitItem(This_Player,1,'��Ͷ��������'); 
end;

procedure CommitItem(AType:word);
var
wp_kind,dm_num:integer;
begin
   dm_num:=0;
   for wp_kind := 13 to 21 do
   begin
   if wp_name[wp_kind] = This_Item.ItemName then dm_num := wp_value[wp_kind];
   end;
   if dm_num > 0 then
   begin
   This_Player.TakeByClientID(This_Item.ClientItemID);
   This_Player.Give('���ʯ',dm_num);   
   This_Player.NotifyClientCommitItem(1,'');
   end else 
   begin
   This_Player.NotifyClientCommitItem(0,'����Ʒ������������Ͷ���������������');   
   end;   
end;

procedure _SmeltWeapon_2;
begin
  This_NPC.NpcDialog(This_Player,
   'ѡ����Ҫ��������������ͬ�������������Ľ��ʯ������ͬ��\'
   +'|<ע�⣺����۳�������������ѡ�����������������/c=red>\ \'
   +'|{cmd}<����������������˪�����ޡ����¡���ħ/@SmeltWeapon_2_3>\ \'
   +'|{cmd}<��������������������ħ�ȡ�����/@SmeltWeapon_2_1~9>\ \'   
   +'|{cmd}<������/@SmeltWeapon_2_1~10>        ^<Ѫ��/@SmeltWeapon_2_1~11>          ^<�޼���/@SmeltWeapon_2_1~12>\'
   +'|{cmd}<����/@SmeltWeapon>'
   ); 
end; 

procedure _SmeltWeapon_2_1(kind:string);
var
wp_kind,wp_num,wp_num1,wp_num2,wp_num3,dm_num,dm_num1,dm_num2,dm_num3:integer;
begin
   wp_kind:= strtointdef(kind,-1);
   if (wp_kind < 9) or (wp_kind > 12) then exit;
   if wp_kind = 9 then
   begin
     wp_num1:= This_Player.GetBagItemCount(wp_name[5]);
     wp_num2:= This_Player.GetBagItemCount(wp_name[6]);
     wp_num3:= This_Player.GetBagItemCount(wp_name[7]);
     wp_num:= wp_num1+wp_num2+wp_num3;
     if wp_num > 0 then
     begin
     dm_num:= wp_num1*wp_value[5]+wp_num2*wp_value[6]+wp_num3*wp_value[7];
     This_NPC.NpcDialog(This_Player,
     '��ȷ����'+inttostr(wp_num1)+'��'+wp_name[5]+'��'+inttostr(wp_num2)+'��'+wp_name[6]+'��'+inttostr(wp_num3)+'��'+wp_name[7]+'����Ϊ'+inttostr(dm_num)+'�Ž��ʯ��\ \'
     +'|{cmd}<ȷ������/@SmeltWeapon_2_2~'+kind+'>\'
     +'|{cmd}<����/@SmeltWeapon_2>' 
     ); 
     end else
     This_NPC.NpcDialog(This_Player,
     '������û����ѡ������\ \'
     +'|{cmd}<����/@SmeltWeapon_2>' 
     );
   end else
   begin
     wp_num:= This_Player.GetBagItemCount(wp_name[wp_kind]);
     dm_num:= wp_num*wp_value[wp_kind];
     if wp_num > 0 then
     begin
     This_NPC.NpcDialog(This_Player,
     '��ȷ����'+inttostr(wp_num)+'��'+wp_name[wp_kind]+'����Ϊ'+inttostr(dm_num)+'�Ž��ʯ��\ \'
     +'|{cmd}<ȷ������/@SmeltWeapon_2_2~'+kind+'>\'
     +'|{cmd}<����/@SmeltWeapon_2>' 
     ); 
     end else
     This_NPC.NpcDialog(This_Player,
     '������û����ѡ������\ \'
     +'|{cmd}<����/@SmeltWeapon_2>' 
     ); 
   end;
end; 

procedure _SmeltWeapon_2_2(kind:string);
var
wp_kind,wp_num,wp_num1,wp_num2,wp_num3,dm_num,dm_num1,dm_num2,dm_num3:integer;
begin
   wp_kind:= strtointdef(kind,-1);
   if (wp_kind < 9) or (wp_kind > 12) then exit;
   if wp_kind = 9 then
   begin
     wp_num1:= This_Player.GetBagItemCount(wp_name[5]);
     wp_num2:= This_Player.GetBagItemCount(wp_name[6]);
     wp_num3:= This_Player.GetBagItemCount(wp_name[7]);
     wp_num:= wp_num1+wp_num2+wp_num3;
     if wp_num > 0 then
     begin
     dm_num:= wp_num1*wp_value[5]+wp_num2*wp_value[6]+wp_num3*wp_value[7];
     if wp_num1 > 0 then This_Player.Take(wp_name[5],wp_num1);
     if wp_num2 > 0 then This_Player.Take(wp_name[6],wp_num2);
     if wp_num3 > 0 then  This_Player.Take(wp_name[7],wp_num3);
     This_Player.Give('���ʯ',dm_num);
     This_NPC.NpcDialog(This_Player,
     '�����ɹ���������'+inttostr(dm_num)+'�Ž��ʯ��\ \'
     +'|{cmd}<����/@SmeltWeapon_2>' 
     ); 
     end else
     This_NPC.NpcDialog(This_Player,
     '������û����ѡ��������\ \'
     +'|{cmd}<����/@SmeltWeapon_2>' 
     ); 
   end else
   begin    
     wp_num:= This_Player.GetBagItemCount(wp_name[wp_kind]);
     dm_num:= wp_num*wp_value[wp_kind];
     if wp_num > 0 then
     begin 
     This_Player.Take(wp_name[wp_kind],wp_num);
     This_Player.Give('���ʯ',dm_num);
     This_NPC.NpcDialog(This_Player,
     '�����ɹ���������'+inttostr(dm_num)+'�Ž��ʯ��\ \'
     +'|{cmd}<����/@SmeltWeapon_2>' 
     ); 
     end else
     This_NPC.NpcDialog(This_Player,
     '������û����ѡ��������\ \'
     +'|{cmd}<����/@SmeltWeapon_2>' 
     ); 
   end;  
end; 

procedure _SmeltWeapon_2_3;
var
wp_num,wp_num1,wp_num2,wp_num3,wp_num4,gd_num:integer;
begin
   wp_num1:= This_Player.GetBagItemCount(wp_name[1]);
   wp_num2:= This_Player.GetBagItemCount(wp_name[2]);
   wp_num3:= This_Player.GetBagItemCount(wp_name[3]);
   wp_num4:= This_Player.GetBagItemCount(wp_name[4]);
   wp_num:= wp_num1+wp_num2+wp_num3+wp_num4;
   if wp_num > 0 then
   begin
   gd_num:= wp_num*2000;
   This_NPC.NpcDialog(This_Player,
   '��ȷ������'+inttostr(wp_num1)+'��'+wp_name[1]+'��'+inttostr(wp_num2)+'��'+wp_name[2]+'��'+inttostr(wp_num3)+'��'+wp_name[3]+'��'+inttostr(wp_num4)+'��'+wp_name[4]+'\'
   +'�����'+inttostr(gd_num)+'�����\' 
   +'|{cmd}<ȷ������/@SmeltWeapon_2_4>\'
   +'|{cmd}<����/@SmeltWeapon_2>' 
   ); 
   end else
   This_NPC.NpcDialog(This_Player,
   '������û����ѡ������\ \'
   +'|{cmd}<����/@SmeltWeapon_2>' 
   );
end; 

procedure _SmeltWeapon_2_4;
var
wp_num,wp_num1,wp_num2,wp_num3,wp_num4,gd_num:integer;
begin
   wp_num1:= This_Player.GetBagItemCount(wp_name[1]);
   wp_num2:= This_Player.GetBagItemCount(wp_name[2]);
   wp_num3:= This_Player.GetBagItemCount(wp_name[3]);
   wp_num4:= This_Player.GetBagItemCount(wp_name[4]);
   wp_num:= wp_num1+wp_num2+wp_num3+wp_num4;
   if wp_num > 0 then
   begin
   gd_num:= wp_num*2000;
   if wp_num1 > 0 then This_Player.Take(wp_name[1],wp_num1);
   if wp_num2 > 0 then This_Player.Take(wp_name[2],wp_num2);
   if wp_num3 > 0 then  This_Player.Take(wp_name[3],wp_num3);
   if wp_num4 > 0 then  This_Player.Take(wp_name[4],wp_num4);
   This_Player.AddGold(gd_num);
   This_NPC.NpcDialog(This_Player,
   '������'+inttostr(gd_num)+'��ҡ�\ \'
   +'|{cmd}<����/@SmeltWeapon_2>' 
   ); 
   end else
   This_NPC.NpcDialog(This_Player,
   '������û����ѡ��������\ \'
   +'|{cmd}<����/@SmeltWeapon_2>' 
   ); 
end; 

procedure _SmeltWeapon_3;
begin
  This_NPC.NpcDialog(This_Player,
   '�������������������������������ʯ��\'
   +'|�þ�֮�ȡ�����Ȩ�ȡ����ƽ�       5�Ž��ʯ\'
   +'|ŭն������                      30�Ž��ʯ\'
   +'|����֮��                        40�Ž��ʯ\'
   +'|�Ȼ귨�ȡ���������ң��          40�Ž��ʯ\'
   +'|{cmd}<����/@SmeltWeapon>'
   ); 
end; 

procedure _ForgeWeapon;
begin
  This_NPC.NpcDialog(This_Player,
   '��Ҫ���ж�����\'
   +'��ϧ�����������޷��ٶ���������������ˡ�\'
   +'�����Ը�⣬�ҿ��Խ����ҵ�ͽ���������죬�������Ǹ��Ե�\'
   +'������������ͬ�����ܶ�����������������졣\'
   +'ʹ��88�Ž��ʯ���ܹ�����1�Σ����Ƿ���Ҫ���죿\ \'
   +'|{cmd}<ʹ��88�Ž��ʯ��ʼ����/@ForgeWeapon_1>\ \'
   +'|{cmd}<�鿴�ɶ��������/@ForgeWeapon_2>'
   ); 
end; 

procedure _ForgeWeapon_1;
var
wp_kind,wp_rand1,wp_rand2:integer; 
begin
  if This_Player.GetBagItemCount('���ʯ') >= 88 then
  begin
    if This_Player.FreeBagNum > 0 then
    begin
      wp_rand1 := random(10000);
      if wp_rand1 < 810 then
      begin
      wp_kind:=1;          //��˪
      end else
      if wp_rand1 < 2810 then
      begin
      wp_kind:=2;          //���� 
      end else
      if wp_rand1 < 4810 then
      begin
      wp_kind:=3;          //���� 
      end else
      if wp_rand1 < 6810 then
      begin
      wp_kind:=4;          //��ħ 
      end else
      if wp_rand1 < 7810 then
      begin
      wp_kind:=5;          //����
      end else
      if wp_rand1 < 8810 then
      begin
      wp_kind:=6;         //ħ�� 
      end else
      if wp_rand1 < 9810 then
      begin
      wp_kind:=7;         //����
      end else
      if wp_rand1 < 9830 then
      begin
      wp_kind:=8;         //��ɲ
      end else
      if wp_rand1 < 9850 then
      begin
      wp_kind:=9;         //��֮��
      end else
      if wp_rand1 < 9910 then
      begin
      wp_kind:=10;         //������
      end else
      if wp_rand1 < 9970 then
      begin
      wp_kind:=12;        //�޼���
      end else
      if (wp_rand1 < 9985) then
      begin
      wp_kind:=11;        //Ѫ��
      end else
      if (GetG(2,2) > 0) and (wp_rand1 < 9990) then
      begin
      wp_kind:=11;        //Ѫ��
      end else
      begin
        if  GetG(36,22) = 70 then wp_rand2 := random(305)  else      //������������Ҵﵽ55��ʱ���ɳ鵽���쵵 
        if  GetG(2,2) > 0 then wp_rand2 := random(305)   //������������Ҵﵽ41��ʱ���ɳ鵽������ 
        else wp_rand2 := random(325);  
        
        if wp_rand2 < 5 then
        begin
        wp_kind:=13;          //����֮�� 
        end else
        if wp_rand2 < 105 then
        begin
        wp_kind:=14;         //�þ�֮�� 
        end else
        if wp_rand2 < 205 then
        begin
        wp_kind:=15;         //����Ȩ��
        end else
        if wp_rand2 < 305 then
        begin
        wp_kind:=16;         //���ƽ� 
        end else
        if wp_rand2 < 315 then
        begin
        wp_kind:=17;         //ŭն 
        end else
        if wp_rand2 < 325 then
        begin
        wp_kind:=18;         //���� 
        end else
        if wp_rand2 < 330 then
        begin
        wp_kind:=19;         //���� 
        end else
        if wp_rand2 < 335 then
        begin
        wp_kind:=20;         //�Ȼ귨�� 
        end else
        if wp_rand2 < 340 then
        begin
        wp_kind:=21;         //��ң�� 
        end; 
      end;
      This_Player.Take('���ʯ',88);
      This_Player.Give(wp_name[wp_kind],1);
      //This_Player.IncActivePoint(1);  //���ӻ�Ծ��1
      if wp_rand1 >= 6800 then
      begin
      This_NPC.NpcDialog(This_Player,
      '����ɹ���\'+
      '��ϲ���������ˣ�<'+wp_name[wp_kind]+'/c=red>��\ \'+ 
      '|{cmd}<��������/@ForgeWeapon_1>'
      ); 
      end else 
      This_NPC.NpcDialog(This_Player,
      '����ɹ���\'+
      '�������ˣ�'+wp_name[wp_kind]+'��\ \'+ 
      '|{cmd}<��������/@ForgeWeapon_1>'
      ); 
      if (wp_kind >= 13) then This_NPC.NpcNotice('��ϲ'+This_Player.Name+'�����ζ���ʦ��������ˣ�'+wp_name[wp_kind]+'��'); 
    end else
    This_NPC.NpcDialog(This_Player,
    '��İ���̫���ˣ�������һ�°ɡ�'
    ); 
  end else
  This_NPC.NpcDialog(This_Player,
  '����������Ҫ88�Ž��ʯ��'
  );
end; 

procedure _ForgeWeapon_2;
begin
   if GetG(36,22) = 70 then
  begin
   This_NPC.NpcDialog(This_Player,
   '���ܶ�����������У�\'
   +'��˪�����ޡ����¡���ħ��������ħ�ȡ����ߡ���ɲ����֮�С�\'
   +'�����¡�Ѫ�����޼������þ�֮�ȡ�����Ȩ�ȡ����ƽ���ŭն��\'
   +'����������֮�С��������Ȼ귨�ȡ���ң�ȡ����졢���졢���졣\ \'
   +'|{cmd}<����/@ForgeWeapon>'
   ); 
   end else        
   if GetG(2,2) > 0 then
   begin
   This_NPC.NpcDialog(This_Player,
   '���ܶ�����������У�\'
   +'��˪�����ޡ����¡���ħ��������ħ�ȡ����ߡ���ɲ����֮�С�\'
   +'�����¡�Ѫ�����޼������þ�֮�ȡ�����Ȩ�ȡ����ƽ���ŭն��\'
   +'����������֮�С��������Ȼ귨�ȡ���ң�ȡ�\'
   +'<ע�⣺������������Ҵﵽ55��ʱ���ܶ�������졢���졢���졣/c=red>\ \'
   +'|{cmd}<����/@ForgeWeapon>'
   ); 
   end else
   This_NPC.NpcDialog(This_Player,
   '���ܶ�����������У�\'
   +'��˪�����ޡ����¡���ħ��������ħ�ȡ����ߡ���ɲ����֮�С�\'
   +'�����¡�Ѫ�����޼������þ�֮�ȡ�����Ȩ�ȡ����ƽ���ŭն��\'
   +'����������֮�С�\'
   +'|<ע�⣺������������Ҵﵽ40��ʱ���ܶ�����������Ȼ귨�ȡ���ң�ȡ�/c=red>\'
   +'|{cmd}<����/@ForgeWeapon>'
   ); 
end; 

begin
   This_NPC.NpcDialog(This_Player,
   '�Ϸ�����һ�������Ҽ�ʶ���귨��½�ϵ�������������\'
   +'Ҳ�����˴�����Ķ�����������ɡ����������ѵ�Ī����\'
   +'���ʯ�Ķ��졣�����һᾡ�����ܰ�����ʿ�Ǵ����Ը��\ \'
   +'|{cmd}<������������ý��ʯ��/@SmeltWeapon>             \ \'
   +'|{cmd}<�������������������/@ForgeWeapon>'
   ); 
end. 