{
/*******************************************************************************
}

program Mir2;

procedure _DoExit;
begin
  This_Npc.CloseDialog(This_Player);
end;

procedure _reqname;
var 
reqnameType:integer;
reqnameStr:string;
begin
  if This_Npc.GetCelebName = This_Player.Name then 
  begin
    reqnameType := This_Npc.ReqBecomeCeleb(This_Player);
    case reqnameType of
      0:
      begin
      reqnameStr:='����ɹ�����ɹ������˵���ȼ���';
      end;
      -1:reqnameStr:='�����������԰�!'; 
      -2:reqnameStr:='������������ĵȼ�����35!'; 
      -3:reqnameStr:='���ƺ��Ҵ���������˰ɣ�';
      -4:reqnameStr:='ǰһ����ʿ�ɹ����뻹����10���ӣ��������������....';
      -5:reqnameStr:='������������ֻ��һ���Ϳ����ϰ���!'; 
    end;  
  end else
  begin
    reqnameType := This_Npc.ReqBecomeCeleb(This_Player); 
    case reqnameType of
      0:
      begin

      reqnameStr:='����ɹ���';
      end;
      -1:reqnameStr:='�����������԰�!'; 
      -2:reqnameStr:='������������ĵȼ�����35!'; 
      -3:reqnameStr:='���ƺ��Ҵ���������˰ɣ�';
      -4:reqnameStr:='ǰһ����ʿ�ɹ����뻹����10���ӣ��������������....';
      -5:reqnameStr:='������������ֻ��һ���Ϳ����ϰ���!'; 
    end;          
  end; 
  This_Npc.NpcDialog(This_Player,reqnameStr); 
end;

procedure OnInitialize;
begin
  This_Npc.AddNpcProp(8);
  This_Npc.AddNpcProp(13);
  This_Npc.AddNpcProp(2);
end;

begin

  This_Npc.NpcDialog(This_Player,
  '��Ϊ�Լ�����һ����񣬴Ӵ������������������ˣ�\'
  +'�������Լ��ĵȼ��;���ֵ�г�ֵ����ţ�\'
  +'�Ǿ��������ύ����ɡ�\'
  +'ֻҪ��ĵȼ��;���ֵ�ȱ�����ǰ��ʾ����λӢ�۸ߣ�\'
  +'������ͽ�����Ϊ����\' 
  +'ע�⣺�����ʱ��ɱ���ְҵ���Ա�Ŷ��\ \'
  +'|{cmd}<����/@reqname>                       ^<�˳�/@doexit>'
  );
end.