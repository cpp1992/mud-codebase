{********************************************************************


*******************************************************************}

PROGRAM Mir2;

{$I ActiveValidateCom.pas}

procedure Execute;
var
SYtime1,SYtime2 :integer;
begin
  SYtime1 := AutoOpenDay(3) + GetDateNum(GetNow);
  SYtime2 := AutoOpenDay(4) + GetDateNum(GetNow);
  if GetG(36,31) < SYtime1 then
  begin
  SetG(36,31,GetDateNum(GetNow));
  ChgMonItemPercent('��ҳ',0);
  ChgMonItemPercent('����ҳ',0); 
  end else
  if GetG(36,31) = SYtime1 then
  begin
  ChgMonItemPercent('��ҳ',100);
  ChgMonItemPercent('����ҳ',100);
  SetG(36,31,SYtime1 +30);
  end; 
  
  if GetG(36,35) < SYtime2 then
  begin
  SetG(36,35,GetDateNum(GetNow));
  ChgMonItemPercent('�ر�ͼ��Ƭ',0);
  end else
  if GetG(36,35) = SYtime2 then
  begin
  ChgMonItemPercent('�ر�ͼ��Ƭ',100);
  SetG(36,35,SYtime2 +30);
  end; 
end;

Begin
   This_Npc.NpcDialog(This_Player,
   '����ʲôҲûд...'
   );
end.