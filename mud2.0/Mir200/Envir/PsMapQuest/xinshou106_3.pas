program mir2;

var
  iCount : Integer;

begin
  if This_Player.GetV(106,1)= 5 then //判断是否领取任务 
  begin
    iCount := This_Player.GetV(106,3);  //打怪计数标记 
    if iCount = -1 then
    begin
      iCount := 0; 
  	end   
    else if iCount = 2 then
	  begin
  	  iCount := iCount + 1;
  	  This_Player.SetV(106,3,iCount);
      This_Player.SetV(106,1,6); // 完成任务标记 
      This_Player.PlayerNotice('你现在已经杀死蜈蚣，获得蜈蚣的毒囊：'+inttostr(iCount)+'/3', 2);
      This_Player.PlayerNotice('赶快回去找盟重药店老板吧！', 2);
      This_Player.UpdateTaskDetail(106,1);
      This_Player.UpdateTaskProgress(106,0);
    end
    else if iCount < 2 then
    begin
  	  iCount := iCount + 1;
  	  This_Player.SetV(106,3,iCount);
      This_Player.PlayerNotice('你现在已经杀死蜈蚣，获得蜈蚣的毒囊：'+Inttostr(iCount)+'/3', 2);
      This_Player.UpdateTaskProgress(106,0);
    end;
  end; 
end.