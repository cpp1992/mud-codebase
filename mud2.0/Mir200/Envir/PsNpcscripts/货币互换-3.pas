{
*******************************************************************}

Program Mir2;



Procedure _doexit;
begin
   This_NPC.CloseDialog(This_Player);
end;

function Gaoji0LB(price, num: Integer):boolean;
begin                                               

  result := true;
end;




procedure _xiane4;
     begin
    if This_Player.FreeBagNum > 0 then
begin
   if This_Player.MyLFnum >= 500 then 
  begin
  This_Player.Give('50Ԫ��',1);
  This_Player.DecLF(0, 500, false);
  end
    else
    This_Npc.NpcDialog(This_Player,
    '�Բ�����û��500��������ܶһ�Ԫ����'
    );
  end else
   This_Npc.NpcDialog(This_Player,
	'�Բ����㱳��������'
	);
	end;

procedure _xiane5;
     begin
    if This_Player.FreeBagNum > 0 then
begin
   if This_Player.MyLFnum >= 500 then 
  begin
  This_Player.Give('���ʯ',60);
  This_Player.DecLF(0, 500, false);
  end
    else
    This_Npc.NpcDialog(This_Player,
    '�Բ�����û��500��������ܶһ����ʯ��'
    );
  end else
   This_Npc.NpcDialog(This_Player,
	'�Բ����㱳��������'
	);
	end;	

	
procedure _xiane7;
     begin
    if This_Player.FreeBagNum > 0 then
begin
   if This_Player.YBNum >= 50 then 
  begin
  This_Player.Give('50Ԫ��',1);
  This_Player.PsYBConsum(This_NPC,'YB_NewComeBag',20001,50,1); 
  end
    else
    This_Npc.NpcDialog(This_Player,
    '�Բ�����û��50Ԫ�������ܶһ�ȡ����'
    );
  end else
   This_Npc.NpcDialog(This_Player,
	'�Բ����㱳��������'
	);
	end;
		
procedure _xiane1;
begin
   if This_Player.MyLFnum >= 100 then 
  begin
  This_Player.MyShengwan := This_Player.MyShengwan + 5;
  This_Player.DecLF(0, 100, false);
  end
    else
    This_Npc.NpcDialog(This_Player,
    '�Բ�����û��100��������ܶһ�������'
    );
	end;



   begin
      This_NPC.NpcDialog(This_Player,
      '����������Ի��һ���Ŷ\ \'
	  +'|{cmd}<500����һ�50��Ԫ��/@xiane4>  \'
	  +'|{cmd}<500����һ�60�����ʯ/@xiane5>  \'
	  +'|{cmd}<100����һ�5������/@xiane1>  \'
	  +'|{cmd}<��ȡ50Ԫ��/@xiane7>  \'
      );
end.