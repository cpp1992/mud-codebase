PROGRAM Mir2;

const                                       // ���Կ��|����Կ��|��ͭԿ��|����Կ��|                                                                                                                                                                         ����Ͳ|
  C_NeedLoadGoodsNames_001 = '�̻�|���Է���|����|��Ѫʯ(С)|ħѪʯ(��)|���洫��ʯ|���ش���ʯ|��Ӳ����ľ|Ǭ�����|˫���ؼ�|˫������|��ҳ|��ש|�������ʯ|ѫ��֮��|1000Ԫ��|�޸���ˮ|ѩ˪��ҩ��|����ҩ��ҩ��|̫��ˮ��ҩ��|ǧ�ﴫ��|ǧ�ﴫ��(��)|50������|5������|10������|20������|50������|100������|50���ʯ|100���ʯ|200���ʯ|500���ʯ|1Ԫ��|5Ԫ��|10Ԫ��|50Ԫ��|100Ԫ��|�ɻ�����|�ٻ�ǿ����|����ƾ֤';
  C_NeedLoadGoodsNames_002 = '�̻�|���Է���|����|��Ѫʯ(С)|ħѪʯ(��)|���洫��ʯ|���ش���ʯ|��Ӳ����ľ|Ǭ�����|˫���ؼ�|˫������|��ҳ|��ש|�������ʯ|ѫ��֮��|1000Ԫ��|�޸���ˮ|ѩ˪��ҩ��|����ҩ��ҩ��|̫��ˮ��ҩ��|ǧ�ﴫ��|ǧ�ﴫ��(��)|50������|5������|10������|20������|50������|100������|50���ʯ|100���ʯ|200���ʯ|500���ʯ|1Ԫ��|5Ԫ��|10Ԫ��|50Ԫ��|100Ԫ��|�ɻ�����|�ٻ�ǿ����|����ƾ֤';

var                                      
  UsingGoodsName: string;

//�ṩ����������Ʒ�ӿ� ��Σ���Ҫ���ص���Ʒ(��ʽ����Ʒ1|��Ʒ2|...)  ���أ��ɹ�ʧ��
//function SendYBShopConfig(const NeedLoadGoodsNames: string): Boolean;

//�ṩ��¼��־�ͼ�¼�������нӿ� ��Σ���Ʒ���� ��Ʒ���(����־��) ��Ʒ���� �ܼ�  ���أ�д�����ݿ��Idx�� > 0Ϊ�ɹ��� <= 0Ϊʧ��
//function AddToBuyGoodsLogByScript(const GoodsName: string; const GoodsIdx, GoodsWantNum, TotalPrice: Integer): Integer;

//����������Ϣˢ��ʱ�䣬���´����������¼��ؽű� ��Σ�ʱ���ʽHH:MM:SS
//procedure SetYBShopRefreshTime(const str: string);

function IsUsingGoodsName(const GoodsName: string): Boolean;
var
  Str, TempStr: string;
begin
  Result := False;
  Str := UsingGoodsName;
  while Str <> '' do
  begin
    Str := GetValidStr(Str, TempStr, '|');
    if TempStr = GoodsName then
    begin
      Result := True;
      Exit;
    end;
  end;
end;

function GetYBShopConfig(GoodsName: string; out vClassName: string; out vItemList: string; out vGoodsIdx, vSrcPrice, vCurPrice, vLimitType, vLimitCount: Word): string;
var
  vEffectImg: Integer;     //���ݸ��ͻ�����ʾ����
  vEffectCount: Word;   //���ݸ��ͻ�����ʾ����
  vGoodsExplain: string;   //���ݸ��ͻ�����ʾ����
begin
  //����ֵ�ṩ��������� ��Ϊ�����޷�ͨ��var�޸Ĳ���
  //var�ṩ�ű�ֱ��ʹ��
  //vClassCode�谴��
  vClassName := '';
  vItemList := '';
  vGoodsIdx := 0;
  vSrcPrice := 0;
  vCurPrice := 0;
  vEffectImg := 0;
  vEffectCount := 0;
  vGoodsExplain := '';
  vLimitType := 0;    //0���޹� 1ÿ���޹� 2�����޹�
  vLimitCount := 0;

  case GoodsName of
        '�̻�': 
        begin 
          vClassName := 'װ��'; 
          vItemList := '�̻�:1'; 
          vGoodsIdx := 209; 
          vSrcPrice := 50; //ԭ��  
          vCurPrice := 50; //�ۿۼ�  
          vLimitType := 0; //�޹�����  
          vLimitCount := 0; //�޹�����  
          vEffectImg := 450; 
          vEffectCount := 8; 
          vGoodsExplain := '�����̻�Ч��|ʹ�ú����Ѥ���̻�Ч��|Ч��������1����|�����к��ֹ���|��������ɫ��'; 
        end; 
        '���Է���': 
        begin 
          vClassName := 'װ��'; 
          vItemList := '���Է���:1'; 
          vGoodsIdx := 222; 
          vSrcPrice := 30; //ԭ��  
          vCurPrice := 30; //�ۿۼ�  
          vLimitType := 0; //�޹�����  
          vLimitCount := 0; //�޹�����  
          vEffectImg := 520; 
          vEffectCount := 18; 
          vGoodsExplain := '�ɸı䷢��|����ʹ�û�ù�ͷЧ��|Ů��ʹ�û������Ч��|����ͻ�ֳ����ĸ���|��������ɫ��'; 
        end; 
        '��豹���': 
        begin 
          vClassName := 'װ��'; 
          vItemList := '��豹���:1'; 
          vGoodsIdx := 223; 
          vSrcPrice := 2; //ԭ��  
          vCurPrice := 2; //�ۿۼ�  
          vLimitType := 0; //�޹�����  
          vLimitCount := 0; //�޹�����  
          vEffectImg := 540; 
          vEffectCount := 1; 
          vGoodsExplain := '�ɸı䷢��|ʹ�ú�ָ���ԭ���ķ���|��������ɫ��'; 
          
        end; 
        '10������': 
        begin 
          vClassName := 'װ��'; 
          vItemList := '10������:1'; 
          vGoodsIdx := 262; 
          vSrcPrice := 20; //ԭ��  
          vCurPrice := 20; //�ۿۼ�  
          vLimitType := 0; //�޹�����  
          vLimitCount := 0; //�޹�����  
          vEffectImg := 380; 
          vEffectCount := 1; 
          vGoodsExplain := '�ɿ������10������||ʹ�÷���:˫��|'; 
        end; 
        '5������': 
        begin 
          vClassName := 'װ��'; 
          vItemList := '5������:1'; 
          vGoodsIdx := 262; 
          vSrcPrice := 10; //ԭ��  
          vCurPrice := 10; //�ۿۼ�  
          vLimitType := 0; //�޹�����  
          vLimitCount := 0; //�޹�����  
          vEffectImg := 380; 
          vEffectCount := 1; 
          vGoodsExplain := '�ɿ������5������||ʹ�÷���:˫��|'; 
        end; 
        '20������': 
        begin 
          vClassName := 'װ��'; 
          vItemList := '20������:1'; 
          vGoodsIdx := 262; 
          vSrcPrice := 40; //ԭ��  
          vCurPrice := 40; //�ۿۼ�  
          vLimitType := 0; //�޹�����  
          vLimitCount := 0; //�޹�����  
          vEffectImg := 380; 
          vEffectCount := 1; 
          vGoodsExplain := '�ɿ������20������||ʹ�÷���:˫��|'; 
        end; 
        '50������': 
        begin 
          vClassName := 'װ��'; 
          vItemList := '50������:1'; 
          vGoodsIdx := 262; 
          vSrcPrice := 70; //ԭ��  
          vCurPrice := 70; //�ۿۼ�  
          vLimitType := 0; //�޹�����  
          vLimitCount := 0; //�޹�����  
          vEffectImg := 380; 
          vEffectCount := 1; 
          vGoodsExplain := '�ɿ������50������||ʹ�÷���:˫��|'; 
        end; 
        '100������': 
        begin 
          vClassName := 'װ��'; 
          vItemList := '100������:1'; 
          vGoodsIdx := 262; 
          vSrcPrice := 120; //ԭ��  
          vCurPrice := 120; //�ۿۼ�  
          vLimitType := 0; //�޹�����  
          vLimitCount := 0; //�޹�����  
          vEffectImg := 380; 
          vEffectCount := 1; 
          vGoodsExplain := '�ɿ������100������||ʹ�÷���:˫��|'; 
        end; 
        '50���ʯ': 
        begin 
          vClassName := 'װ��'; 
          vItemList := '50���ʯ:1'; 
          vGoodsIdx := 262; 
          vSrcPrice := 20; //ԭ��  
          vCurPrice := 20; //�ۿۼ�  
          vLimitType := 0; //�޹�����  
          vLimitCount := 0; //�޹�����  
          vEffectImg := 380; 
          vEffectCount := 1; 
          vGoodsExplain := '�ɿ������50���ʯ||ʹ�÷���:˫��|'; 
        end; 
        '100���ʯ': 
        begin 
          vClassName := 'װ��'; 
          vItemList := '100���ʯ:1'; 
          vGoodsIdx := 262; 
          vSrcPrice := 40; //ԭ��  
          vCurPrice := 40; //�ۿۼ�  
          vLimitType := 0; //�޹�����  
          vLimitCount := 0; //�޹�����  
          vEffectImg := 380; 
          vEffectCount := 1; 
          vGoodsExplain := '�ɿ������100���ʯ||ʹ�÷���:˫��|'; 
        end; 
        '200���ʯ': 
        begin 
          vClassName := 'װ��'; 
          vItemList := '200���ʯ:1'; 
          vGoodsIdx := 262; 
          vSrcPrice := 80; //ԭ��  
          vCurPrice := 80; //�ۿۼ�  
          vLimitType := 0; //�޹�����  
          vLimitCount := 0; //�޹�����  
          vEffectImg := 380; 
          vEffectCount := 1; 
          vGoodsExplain := '�ɿ������200���ʯ||ʹ�÷���:˫��|'; 
        end;
        '500���ʯ': 
        begin 
          vClassName := 'װ��'; 
          vItemList := '500���ʯ:1'; 
          vGoodsIdx := 262; 
          vSrcPrice := 180; //ԭ��  
          vCurPrice := 180; //�ۿۼ�  
          vLimitType := 0; //�޹�����  
          vLimitCount := 0; //�޹�����  
          vEffectImg := 380; 
          vEffectCount := 1; 
          vGoodsExplain := '�ɿ������500���ʯ||ʹ�÷���:˫��|'; 
        end;             
        '����': 
        begin 
          vClassName := '����'; 
          vItemList := '����:1'; 
          vGoodsIdx := 390; 
          vSrcPrice := 10; //ԭ��  
          vCurPrice := 10; //�ۿۼ�  
          vLimitType := 0; //�޹�����  
          vLimitCount := 0; //�޹�����  
          vEffectImg := 380; 
          vEffectCount := 1; 
          vGoodsExplain := '��ֵ100����|˫������ʹ��|Ҳ����ׯ԰�ֿ�|����Ա���һ�100����|ÿ�ο۳�2000���������'; 
        end; 
        '��ҳ': 
        begin 
          vClassName := '����'; 
          vItemList := '��ҳ:1'; 
          vGoodsIdx := 202; 
          vSrcPrice := 10; //ԭ��  
          vCurPrice := 10; //�ۿۼ�  
          vLimitType := 0; //�޹�����  
          vLimitCount := 0; //�޹�����  
          vEffectImg := 479; 
          vEffectCount := 7; 
          vGoodsExplain := '��������ʹ��Ĵ�ѧʿ���������ڶһ�47��������'; 
        end; 
        'Ǭ�����': 
        begin 
          vClassName := '����'; 
          vItemList := 'Ǭ�����:1'; 
          vGoodsIdx := 203; 
          vSrcPrice := 5; //ԭ��  
          vCurPrice := 5; //�ۿۼ�  
          vLimitType := 0; //�޹�����  
          vLimitCount := 0; //�޹�����  
          vEffectImg := 479; 
          vEffectCount := 7; 
          vGoodsExplain := '˫�����5��Ǭ������ڽ���ر���'; 
        end; 
        '��Ѫʯ(С)': 
        begin 
          vClassName := '����'; 
          vItemList := '��Ѫʯ(С):1'; 
          vGoodsIdx := 204; 
          vSrcPrice := 10; //ԭ��  
          vCurPrice := 10; //�ۿۼ�  
          vLimitType := 0; //�޹�����  
          vLimitCount := 0; //�޹�����  
          vEffectImg := 479; 
          vEffectCount := 7; 
          vGoodsExplain := '����40000HP|װ���ڽ�ɫ����|�Զ��ָ�����40000HP|ÿ�γ����ظ�10��|1��־õ���10000HP|��������ɫ��'; 
        end; 
        '��ħʯ(С)': 
        begin 
          vClassName := '����'; 
          vItemList := '��ħʯ(С):1'; 
          vGoodsIdx := 205; 
          vSrcPrice := 10; //ԭ��  
          vCurPrice := 10; //�ۿۼ�  
          vLimitType := 0; //�޹�����  
          vLimitCount := 0; //�޹�����  
          vEffectImg := 459; 
          vEffectCount := 7; 
          vGoodsExplain := '����60000MP|װ���ڽ�ɫ����|�Զ��ָ�����60000MP|ÿ�γ����ظ�10��|1��־õ���10000MP|��������ɫ��'; 
        end; 
        '��ħʯ(��)': 
        begin 
          vClassName := '����'; 
          vItemList := '��ħʯ(��):1'; 
          vGoodsIdx := 206; 
          vSrcPrice := 20; //ԭ��  
          vCurPrice := 20; //�ۿۼ�  
          vLimitType := 0; //�޹�����  
          vLimitCount := 0; //�޹�����  
          vEffectImg := 459; 
          vEffectCount := 7; 
          vGoodsExplain := '����140000MP|װ���ڽ�ɫ����|�Զ��ָ�����140000MP|ÿ�γ����ظ�10��|1��־õ���10000MP|��������ɫ��'; 
        end; 
        
        'ħѪʯ(��)': 
        begin 
          vClassName := '����'; 
          vItemList := 'ħѪʯ(��):1'; 
          vGoodsIdx := 254; 
          vSrcPrice := 100; //ԭ��  
          vCurPrice := 100; //�ۿۼ�  
          vLimitType := 0; //�޹�����  
          vLimitCount := 0; //�޹�����  
          vEffectImg := 380; 
          vEffectCount := 1; 
          vGoodsExplain := '�Զ��ָ�HP��MP|����Ѫʯ�ͻ�ħʯ��Ч��|��һ��,װ���ڽ�ɫ��|�ָ�HP��MP,������20W|ʹ�÷���ͬ��Ѫʯ|��������ɫ��'; 
        end; 
        '���洫��ʯ': 
        begin 
          vClassName := 'ǿ��'; 
          vItemList := '���洫��ʯ:1'; 
          vGoodsIdx := 217; 
          vSrcPrice := 20; //ԭ��  
          vCurPrice := 20; //�ۿۼ�  
          vLimitType := 0; //�޹�����  
          vLimitCount := 0; //�޹�����  
          vEffectImg := 410; 
          vEffectCount := 10; 
          vGoodsExplain := '���͵�����|ֱ�Ӵ��ͻر���|�������⴩�����귨��½|��ʹ��20��'; 
        end; 
        '���ش���ʯ': 
        begin 
          vClassName := 'ǿ��'; 
          vItemList := '���ش���ʯ:1'; 
          vGoodsIdx := 218; 
          vSrcPrice := 20; //ԭ��  
          vCurPrice := 20; //�ۿۼ�  
          vLimitType := 0; //�޹�����  
          vLimitCount := 0; //�޹�����  
          vEffectImg := 410; 
          vEffectCount := 10; 
          vGoodsExplain := '���͵�����|ֱ�Ӵ��ͻ�����|�������⴩�����귨��½|��ʹ��20��'; 
        end; 
        '�������ʯ': 
        begin 
          vClassName := 'ǿ��'; 
          vItemList := '�������ʯ:1'; 
          vGoodsIdx := 247; 
          vSrcPrice := 20; //ԭ��  
          vCurPrice := 20; //�ۿۼ�  
          vLimitType := 0; //�޹�����  
          vLimitCount := 0; //�޹�����  
          vEffectImg := 380; 
          vEffectCount := 1; 
          vGoodsExplain := '�������|˫�������ڵ�ǰ��ͼ��|�������|�������⴩�����귨��½|��ʹ��50�Σ��ǰ���Ʒ'; 
        end; 
        '�޸���ˮ': 
        begin 
          vClassName := 'ǿ��'; 
          vItemList := '�޸���ˮ:1'; 
          vGoodsIdx := 248; 
          vSrcPrice := 5; //ԭ��  
          vCurPrice := 5; //�ۿۼ�  
          vLimitType := 0; //�޹�����  
          vLimitCount := 0; //�޹�����  
          vEffectImg := 380; 
          vEffectCount := 1; 
          vGoodsExplain := '�޸�ȫ��װ��|���ڰ�����|˫��������������|�Ѵ���װ��|���ۼ��޸�100��־�|�ǰ���Ʒ'; 
        end; 
        '��Ӳ����ľ': 
        begin 
          vClassName := 'ǿ��'; 
          vItemList := '��Ӳ����ľ:1'; 
          vGoodsIdx := 402; 
          vSrcPrice := 30; //ԭ��  
          vCurPrice := 30; //�ۿۼ�  
          vLimitType := 0; //�޹�����  
          vLimitCount := 0; //�޹�����  
          vEffectImg := 380; 
          vEffectCount := 1; 
          vGoodsExplain := '����ֿ�|�ڲֿⱣ��Ա��|��������ֿ�'; 
        end; 
        '��ש': 
        begin 
          vClassName := 'ǿ��'; 
          vItemList := '��ש:1'; 
          vGoodsIdx := 235; 
          vSrcPrice := 60; //ԭ��  
          vCurPrice := 60; //�ۿۼ�  
          vLimitType := 0; //�޹�����  
          vLimitCount := 0; //�޹�����  
          vEffectImg := 380; 
          vEffectCount := 1; 
          vGoodsExplain := '��ש,��ֵ500W'; 
        end; 
        'ѩ˪��ҩ��': 
        begin 
          vClassName := 'ǿ��'; 
          vItemList := 'ѩ˪��ҩ��:1'; 
          vGoodsIdx := 215; 
          vSrcPrice := 6; //ԭ��  
          vCurPrice := 6; //�ۿۼ�  
          vLimitType := 0; //�޹�����  
          vLimitCount := 0; //�޹�����  
          vEffectImg := 470; 
          vEffectCount := 8; 
          vGoodsExplain := '��������ѩ˪|��6������ѩ˪��������|�Խ�Լ����Ŀռ�|��ʹ��10��'; 
        end; 
        '����ҩ��ҩ��': 
        begin 
          vClassName := 'ǿ��'; 
          vItemList := '����ҩ��ҩ��:1'; 
          vGoodsIdx := 216; 
          vSrcPrice := 10; //ԭ��  
          vCurPrice := 10; //�ۿۼ�  
          vLimitType := 0; //�޹�����  
          vLimitCount := 0; //�޹�����  
          vEffectImg := 470; 
          vEffectCount := 8; 
          vGoodsExplain := '��������ҩ|��6������ҩ��������|�Խ�Լ����Ŀռ�|��ʹ��10��'; 
        end; 
        '̫��ˮ��ҩ��': 
        begin 
          vClassName := 'ǿ��'; 
          vItemList := '̫��ˮ��ҩ��:1'; 
          vGoodsIdx := 214; 
          vSrcPrice := 3; //ԭ��  
          vCurPrice := 3; //�ۿۼ�  
          vLimitType := 0; //�޹�����  
          vLimitCount := 0; //�޹�����  
          vEffectImg := 470; 
          vEffectCount := 8; 
          vGoodsExplain := '����ǿЧ̫��ˮ|��6��ǿЧ̫��ˮ��������|�Խ�Լ����Ŀռ�|��ʹ��20��'; 
        end; 
        'ǧ�ﴫ��': 
        begin 
          vClassName := '����'; 
          vItemList := 'ǧ�ﴫ��:1'; 
          vGoodsIdx := 208; 
          vSrcPrice := 10; //ԭ��  
          vCurPrice := 10; //�ۿۼ�  
          vLimitType := 0; //�޹�����  
          vLimitCount := 0; //�޹�����  
          vEffectImg := 429; 
          vEffectCount := 7; 
          vGoodsExplain := '��ȫ������|װ���ڽ�ɫ����|ʹ�á�@��������|��������ҷ�����ɫ����|��������ɫ��|��ʹ��10��'; 
        end; 
        'ǧ�ﴫ��(��)': 
        begin 
          vClassName := '����'; 
          vItemList := 'ǧ�ﴫ��(��):1'; 
          vGoodsIdx := 225; 
          vSrcPrice := 30; //ԭ��  
          vCurPrice := 30; //�ۿۼ�  
          vLimitType := 0; //�޹�����  
          vLimitCount := 0; //�޹�����  
          vEffectImg := 429; 
          vEffectCount := 7; 
          vGoodsExplain := '��ȫ������|װ���ڽ�ɫ����|ʹ�á�@��������|��������ҷ�����ɫ����|��������ɫ��|��ʹ��20��'; 
        end; 
        
        '��(��)': 
        begin 
          vClassName := '����'; 
          vItemList := '��(��):1'; 
          vGoodsIdx := 341; 
          vSrcPrice := 2; //ԭ��  
          vCurPrice := 2; //�ۿۼ�  
          vLimitType := 0; //�޹�����  
          vLimitCount := 0; //�޹�����  
          vEffectImg := 380; 
          vEffectCount := 1; 
          vGoodsExplain := '�ɶһ�5�����|����������ħ�ؽ����һ�|��һ��һ�����|������ӡ�����ɻ����ǰ�|�������������λ����|˫��ÿ����������|��Ϊ6����'; 
        end; 
        '��(С)': 
        begin 
          vClassName := '����'; 
          vItemList := '��(С):1'; 
          vGoodsIdx := 342; 
          vSrcPrice := 1; //ԭ��  
          vCurPrice := 1; //�ۿۼ�  
          vLimitType := 0; //�޹�����  
          vLimitCount := 0; //�޹�����  
          vEffectImg := 380; 
          vEffectCount := 1; 
          vGoodsExplain := '�ɶһ�2�����|����������ħ�ؽ����һ�|�ɳ��ջ������|�������ΰ�|˫���һ���õ�����|���ɱ�Ϊ6����'; 
        end; 
        '50������': 
        begin 
          vClassName := '����'; 
          vItemList := '50������:1'; 
          vGoodsIdx := 337; 
          vSrcPrice := 50; //ԭ��  
          vCurPrice := 50; //�ۿۼ�  
          vLimitType := 0; //�޹�����  
          vLimitCount := 0; //�޹�����  
          vEffectImg := 490; 
          vEffectCount := 8; 
          vGoodsExplain := '2Сʱ50������|���2Сʱ50������|�����°빦��|��������ɫ��'; 
        end;
        '˫������': 
        begin 
          vClassName := '����'; 
          vItemList := '˫������:1'; 
          vGoodsIdx := 337; 
          vSrcPrice := 20; //ԭ��  
          vCurPrice := 20; //�ۿۼ�  
          vLimitType := 0; //�޹�����  
          vLimitCount := 0; //�޹�����  
          vEffectImg := 490; 
          vEffectCount := 8; 
          vGoodsExplain := '24Сʱ˫������|���24Сʱ˫������|�����°빦��|��������ɫ��'; 
        end;
        '˫���ؼ�': 
        begin 
          vClassName := '����'; 
          vItemList := '˫���ؼ�:1'; 
          vGoodsIdx := 337; 
          vSrcPrice := 10; //ԭ��  
          vCurPrice := 10; //�ۿۼ�  
          vLimitType := 0; //�޹�����  
          vLimitCount := 0; //�޹�����  
          vEffectImg := 490; 
          vEffectCount := 8; 
          vGoodsExplain := '12Сʱ˫������|���12Сʱ˫������|�����°빦��|��������ɫ��'; 
        end; 
        'ѫ��֮��': 
        begin 
          vClassName := '����'; 
          vItemList := 'ѫ��֮��:1'; 
          vGoodsIdx := 335; 
          vSrcPrice := 10; //ԭ��  
          vCurPrice := 10; //�ۿۼ�  
          vLimitType := 0; //�޹�����  
          vLimitCount := 0; //�޹�����  
          vEffectImg := 490; 
          vEffectCount := 8; 
          vGoodsExplain := '�ϳ�ѫ�±ر�'; 
        end; 
        '1000Ԫ��': 
        begin 
          vClassName := '����'; 
          vItemList := '1000Ԫ��:1'; 
          vGoodsIdx := 336; 
          vSrcPrice := 1000; //ԭ��  
          vCurPrice := 1000; //�ۿۼ�  
          vLimitType := 0; //�޹�����  
          vLimitCount := 0; //�޹�����  
          vEffectImg := 490; 
          vEffectCount := 8; 
          vGoodsExplain := '˫��ʹ��|��õȶ�Ԫ��'; 
        end; 
        '1Ԫ��': 
        begin 
          vClassName := 'ǿ��'; 
          vItemList := '1Ԫ��:1'; 
          vGoodsIdx := 403; 
          vSrcPrice := 1; //ԭ��  
          vCurPrice := 1; //�ۿۼ�  
          vLimitType := 0; //�޹�����  
          vLimitCount := 0; //�޹�����  
          vEffectImg := 380; 
          vEffectCount := 1; 
          vGoodsExplain := '˫��ʹ��|��õȶ�Ԫ��'; 
        end; 
        '5Ԫ��': 
        begin 
          vClassName := 'ǿ��'; 
          vItemList := '5Ԫ��:1'; 
          vGoodsIdx := 403; 
          vSrcPrice := 5; //ԭ��  
          vCurPrice := 5; //�ۿۼ�  
          vLimitType := 0; //�޹�����  
          vLimitCount := 0; //�޹�����  
          vEffectImg := 380; 
          vEffectCount := 1; 
          vGoodsExplain := '˫��ʹ��|��õȶ�Ԫ��'; 
        end; 
        '10Ԫ��': 
        begin 
          vClassName := 'ǿ��'; 
          vItemList := '10Ԫ��:1'; 
          vGoodsIdx := 403; 
          vSrcPrice := 10; //ԭ��  
          vCurPrice := 10; //�ۿۼ�  
          vLimitType := 0; //�޹�����  
          vLimitCount := 0; //�޹�����  
          vEffectImg := 380; 
          vEffectCount := 1; 
          vGoodsExplain := '˫��ʹ��|��õȶ�Ԫ��'; 
        end; 
        '50Ԫ��': 
        begin 
          vClassName := 'ǿ��'; 
          vItemList := '50Ԫ��:1'; 
          vGoodsIdx := 403; 
          vSrcPrice := 50; //ԭ��  
          vCurPrice := 50; //�ۿۼ�  
          vLimitType := 0; //�޹�����  
          vLimitCount := 0; //�޹�����  
          vEffectImg := 380; 
          vEffectCount := 1; 
          vGoodsExplain := '˫��ʹ��|��õȶ�Ԫ��'; 
        end; 
        '100Ԫ��': 
        begin 
          vClassName := 'ǿ��'; 
          vItemList := '100Ԫ��:1'; 
          vGoodsIdx := 403; 
          vSrcPrice := 100; //ԭ��  
          vCurPrice := 100; //�ۿۼ�  
          vLimitType := 0; //�޹�����  
          vLimitCount := 0; //�޹�����  
          vEffectImg := 380; 
          vEffectCount := 1; 
          vGoodsExplain := '˫��ʹ��|��õȶ�Ԫ��'; 
        end; 
        '�ٻ�ǿ����': 
        begin 
          vClassName := '����'; 
          vItemList := '�ٻ�ǿ����:1'; 
          vGoodsIdx := 214; 
          vSrcPrice := 200; //ԭ��  
          vCurPrice := 200; //�ۿۼ�  
          vLimitType := 0; //�޹�����  
          vLimitCount := 0; //�޹�����  
          vEffectImg := 470; 
          vEffectCount := 8; 
          vGoodsExplain := '��ʿר������|�ɽ�����˲��������7��'; 
        end;
		'�ɻ�����': 
        begin 
          vClassName := '����'; 
          vItemList := '�ɻ�����:1'; 
          vGoodsIdx := 214; 
          vSrcPrice := 5; //ԭ��  
          vCurPrice := 5; //�ۿۼ�  
          vLimitType := 0; //�޹�����  
          vLimitCount := 0; //�޹�����  
          vEffectImg := 470; 
          vEffectCount := 8; 
          vGoodsExplain := '����ɳ�Ϳ˲ر���ı�ҪƷ'; 
        end;
        '����ƾ֤': 
        begin 
          vClassName := '����'; 
          vItemList := '����ƾ֤:1'; 
          vGoodsIdx := 403; 
          vSrcPrice := 200; //ԭ��  
          vCurPrice := 200; //�ۿۼ�  
          vLimitType := 0; //�޹�����  
          vLimitCount := 0; //�޹�����  
          vEffectImg := 380; 
          vEffectCount := 1; 
          vGoodsExplain := '��������������|�����ٻ���չ���|�м��ʻ��װ��'; 
        end; 		
  end;

  if (vClassName <> '') and IsUsingGoodsName(GoodsName)  then
    Result := vClassName + '$'
            + vItemList + '$'
            + IntToStr(vGoodsIdx) + '$'
            + IntToStr(vSrcPrice) + '$'
            + IntToStr(vCurPrice) + '$'
            + IntToStr(vLimitType) + '$'
            + IntToStr(vLimitCount) + '$'
            + IntToStr(vEffectImg) + '$'
            + IntToStr(vEffectCount) + '$'
            + vGoodsExplain
  else
    Result := '';
end;

function GetLimitValue(const GoodsName: string): Integer;
begin
  //�ͻ�����Ҫͨ���÷���ȡ�õ�ǰ�޹���������Ҫȥ��
  Result := 0;
  case GoodsName of
       //   '����': Result := This_Player.GetV(89, 1);
   // '�������ʯ': Result := This_Player.GetV(91, 1);
      '����֮��': Result := This_Player.GetV(91, 2);
  end;
end;

procedure SetLimitValue(const GoodsName: string; const Value: Integer);
begin
  //�ݶ�91Ϊÿ�����
  case GoodsName of
   //       '����': This_Player.SetV(89, 1, Value);
   // '�������ʯ': This_Player.SetV(91, 1, Value);
      '����֮��': This_Player.SetV(91, 2, Value);
  end;
end;

procedure EverydayClearLimitValue;
var
  I: Integer;
begin
  for I := 1 to 50 do
  begin
    This_Player.SetV(91, I, 0);
    
    if This_Player.GetV(89, I) < 0 then
    This_Player.SetV(89, I, 0);
  end;
end;

procedure ClientBuy(const GoodsName: string; const WantNum, NeedNum: Integer; const IsUseGloryPoint: Boolean);
var
  vClassName: string;
  vItemList: string;
  vGoodsIdx, vSrcPrice, vCurPrice, vLimitType, vLimitCount: Word;
  Price: Integer;
  CurLimitValue: Integer;
begin
  if This_Player.GetS(80, 40) <> GetDateNum(GetNow) then
  begin
    EverydayClearLimitValue;
    This_Player.SetS(80, 40, GetDateNum(GetNow));
  end;

  if This_Player.FreeBagNum >= NeedNum then
  begin
    if GetYBShopConfig(GoodsName, vClassName, vItemList, vGoodsIdx, vSrcPrice, vCurPrice, vLimitType, vLimitCount) <> '' then
    begin
      if (WantNum > 0) and (WantNum < 1000) then
      begin
        CurLimitValue := GetLimitValue(GoodsName);

        if not ((vLimitType > 0) and (CurLimitValue + WantNum > vLimitCount)) then   //�޹������ж�
        begin
          Price := WantNum * vCurPrice;   //�ܼ�

          if This_Player.YBNum >= Price then
          begin
            if This_Player.AddToBuyGoodsLogByScript(GoodsName, vGoodsIdx, WantNum, Price) > 0 then
            begin
              if This_Player.PsYBConsumEx(2, 'YBShopBuy_YB', GoodsName, vGoodsIdx, vCurPrice, WantNum) then
              begin
                //�ύ�۷ѳɹ�
                if vLimitType > 0 then
                begin
                  SetLimitValue(GoodsName, CurLimitValue + WantNum);
                end;
              end
              else
                This_Player.PlayerDialog('�����Ԫ��ʧ�ܣ�');
            end
            else
              This_Player.PlayerDialog('ϵͳ��æ������ʧ�ܡ�');
          end
          else
            This_Player.PlayerDialog('����û���㹻��Ԫ����');
        end
        else
          This_Player.PlayerDialog('�Ѵﵽ�޹������ޡ�');
      end
      else
        This_Player.PlayerDialog('�����������Ϸ���');
    end
    else
      This_Player.PlayerDialog('�̳�δ���۴���Ʒ��');
  end
  else
    This_Player.PlayerDialog('������û���㹻�Ŀռ䡣');
end;

function YBShopBuy_YB(const DescName: string; const Price, Num: Integer): Boolean;
var
  vClassName,T_name : string;
  vItemList: string;
  vGoodsIdx, vSrcPrice, vCurPrice, vLimitType, vLimitCount: Word;
  Str, TempStr, SubTempStr: string;
begin
  Result := False;
  if GetYBShopConfig(DescName, vClassName, vItemList, vGoodsIdx, vSrcPrice, vCurPrice, vLimitType, vLimitCount) <> '' then
  begin
    if This_Player.FreeBagNum > 0 then
    begin
      Str := vItemList;
      while Str <> '' do
      begin
        Str := GetValidStr(Str, TempStr, '/');
        if TempStr <> '' then
        begin
          TempStr := GetValidStr(TempStr, SubTempStr, ':');

          //SubTempStr ��Ʒ��
          //TempStr ��Ʒ����
          if copy(SubTempStr,length(SubTempStr) - 3 , length(SubTempStr)) = '(��)' then
          This_Player.GiveBindItem(SubTempStr, StrToIntDef(TempStr, 0))
          else
          This_Player.Give(SubTempStr, StrToIntDef(TempStr, 0));

          This_Player.AddLogRec(51, SubTempStr, 333333, StrToIntDef(TempStr, 0), '�̳ǹ���' + DescName);
        end;
      end;

      Result := True;
    end
    else
      This_Player.PlayerDialog('������û�пռ䣬����ϵGM������Ʒ��');
  end
  else
    This_Player.PlayerDialog('��Ʒ���¼ܣ���ȡ��Ʒʧ�ܣ�����ϵGM������Ʒ��');
end;

procedure Execute;
var
  nowDay: Integer;
begin
  nowDay := StrToIntDef(MirDateTimeToStr('yyyyMMdd' , GetNow), -1);

  if (nowDay >= 20160802) and (nowDay <= 20160927) then
    UsingGoodsName := C_NeedLoadGoodsNames_001
  else
    UsingGoodsName := C_NeedLoadGoodsNames_002;

  if not SendYBShopConfig(UsingGoodsName) then
    DebugOut('[Error]YBShopScript����' + UsingGoodsName + 'ʧ�ܣ�');
end;

procedure Initialize;
begin
  UsingGoodsName := C_NeedLoadGoodsNames_001;     //�ű����صĳ�ʼֵ

  SetYBShopRefreshTime('00:00:00');
  SetYBShopRefreshTime('06:00:00');
  SetYBShopRefreshTime('12:00:00');

  Execute;
end;

Begin
end.