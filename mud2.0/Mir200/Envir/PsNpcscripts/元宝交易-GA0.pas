{********************************************************************

*******************************************************************}

program Mir2;

{$I common.pas}
{$I ActiveValidateCom.pas} 

procedure _DoExit;
begin
  This_Npc.CloseDialog(This_Player);
end;


procedure _newYB(); 
begin
    if This_Player.GetV(11,10) <> 888 then
	begin
		This_Player.SetV(11,10,888);
		This_NPC.YBDealDialogShowMode(This_Player,true);
	end else
	begin
		This_NPC.YBDealDialogShowMode(This_Player,false);
	end;
end;

Procedure _GetYB;
var 
d2,d3 : integer;
s1 , td : double;
begin
	s1 := GetNow;
	d2 := This_Player.GetS(23,1);
    td := ConvertDBToDateTime(d2);
	d3 := minusDataTime(s1,td);
	if (d3 >= 300) or (This_Player.GetS(23,2) < 3) then
	begin
		This_Player.QueryAwardCode(This_Player.Name);
		This_Npc.CloseDialog(This_Player);
	end else
	   This_Npc.NpcDialog(This_Player,
	   '�����̫�죬������ȡ3��û�гɹ���������5���ӣ���' + inttostr(300 - d3) + '����ٴγ��ԣ�'
	   );
end;


Begin     
    This_Npc.NpcDialog(This_Player,
    '���ã���ʲô����Ϊ����Ч�͵ģ��ҿ����ṩ����Ԫ���ĸ������|\'
	+'����·�����Ѫ�������½ǳ�ֵ������Ԫ������<1:10/c=red> |\'
	+'��ֵ��ɺ󣬵���·�����ȡԪ���Ϳ����ˡ�|\'
    +'|{cmd}<��ȡԪ��/@GetYB>'
    );

end.