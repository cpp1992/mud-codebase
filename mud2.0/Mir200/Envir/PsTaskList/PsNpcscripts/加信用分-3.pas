{
*******************************************************************}


program mir2;

 function getXYstr(Num:integer) : string; 
var temp_xy,temp_xy1,temp_xy2 : integer; 
begin 
    temp_xy1 := This_Player.GetActivePoint; 
    temp_xy2 := This_Player.GetTmpActivePoint;
    temp_xy :=temp_xy1+temp_xy2;
    case Num of
    0: result := inttostr(temp_xy);
    1: result := inttostr(temp_xy1);
    2: result := inttostr(temp_xy2);
    end;   
end;  




procedure _DoExit;
begin
  This_Npc.CloseDialog(This_Player);
end;

procedure _Exit;
begin
  This_Npc.CloseDialog(This_Player);
end;
Procedure _xinyong;
begin
   if This_Player.GoldNum >= 100000 then  
     begin 
      This_Player.IncActivePoint(1);  //�������÷�1
      This_Player.DecGold(100000);
      This_NPC.NpcNotice('��ϲ'+ This_Player.Name+'���������ô�ʹ������1�����÷֣����÷�30���Ͽ�����֤��Ϊ�����û���'); 
      
     end else 
     begin
      This_Npc.NpcDialog(This_Player,
          '��Ҳ���10��! '  );
     end;
  
    
     
    
end;





Begin
   This_Npc.NpcDialog(This_Player,
   '��ǰ������������֤���ܣ�δ��֤�û����Я�����ô���200W\'+
   '������Ʒ��������޷�ʰȡ�����÷ֿ���ͨ����ɱBOSS��ã�Ҳ�����������������10���һ�һ�����÷�\'+
   '���÷ִ���30�֣��������ϱ��Ͳֿ⴦��֤��\'+
   '�㵱ǰ�Ĵ������÷�Ϊ<' + getXYstr(0) + '/c=red>�֣�������ʱ���÷�Ϊ<' + getXYstr(2) + '/c=red>�֣�\'+
   '|{cmd}<10��1�����÷�/@xinyong>');    


end.    