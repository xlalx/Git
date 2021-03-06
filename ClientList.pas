unit ClientList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MemTableDataEh, Db, ADODB, DBGridEhGrouping, ToolCtrlsEh,
  EhLibADO,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  MemTableEh, DataDriverEh, ADODataDriverEh, StdCtrls, Mask, DBCtrlsEh,
  ExtCtrls, ComCtrls, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdHTTP, frxClass, frxDBSet, frxADOComponents, frxDCtrl,
  uLkJSON;

type
  TClientListForm = class(TForm)
    ADODataDriverEh1: TADODataDriverEh;
    DataSource1: TDataSource;
    MemTableEh1: TMemTableEh;
    DBGridEh1: TDBGridEh;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    DBEditEh1: TDBEditEh;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBEditEh2: TDBEditEh;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    DBEditEh3: TDBEditEh;
    DBEditEh4: TDBEditEh;
    DBEditEh5: TDBEditEh;
    DBEditEh6: TDBEditEh;
    DBEditEh7: TDBEditEh;
    DBEditEh8: TDBEditEh;
    Panel1: TPanel;
    Panel2: TPanel;
    DateTimePicker1: TDateTimePicker;
    ComboBox1: TComboBox;
    Label10: TLabel;
    IdHTTP1: TIdHTTP;
    Label11: TLabel;
    frxReport1: TfrxReport;
    Button5: TButton;
    frxDialogControls1: TfrxDialogControls;
    frxADOComponents1: TfrxADOComponents;
    ADOConnection1: TADOConnection;
    Button6: TButton;
    frxReport2: TfrxReport;
    Label12: TLabel;
    DBEditEh9: TDBEditEh;
    ADOQuery1: TADOQuery;
    procedure ADOConnectionProviderEh1InlineConnectionBeforeConnect(
      Sender: TObject);
    procedure MemTableEh1AfterOpen(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure DBGridEh1SortMarkingChanged(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure DateTimePicker1CloseUp(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    { Private declarations }
    procedure DisplayCurrency;
    procedure SetGridColumn;
    procedure SetGridButton;
  public
    { Public declarations }
    flagInsert : Boolean;
  end;

//���������� �������, ��� ������� ������� ��������� ������
const
  EMPTYTABLE=6;

var
  ClientListForm: TClientListForm;
  FileNameIni: String;

implementation

uses ClientEdit;

{$R *.dfm}

procedure TClientListForm.ADOConnectionProviderEh1InlineConnectionBeforeConnect(
  Sender: TObject);
var
  FilePath: String;
begin
  FilePath := ExtractFilePath(ParamStr(0))+'\clients.mdb';
end;

procedure TClientListForm.SetGridColumn;
begin
 if FileExists(FileNameIni) then
    DBGridEh1.RestoreColumnsLayoutIni(FileNameIni,'ClientListForm_DBGridEh1', [crpColIndexEh, crpColWidthsEh, crpColVisibleEh])
 else
   begin
     DBGridEh1.Columns[0].Width:=0;
     DBGridEh1.Columns[0].Title.Caption:='ID';
     DBGridEh1.Columns[0].Visible:=false;

     DBGridEh1.Columns[1].Width:=150;
     DBGridEh1.Columns[1].Title.Caption:='���';

     DBGridEh1.Columns[2].Width:=200;
     DBGridEh1.Columns[2].Title.Caption:='�������';

     DBGridEh1.Columns[3].Width:=250;
     DBGridEh1.Columns[3].Title.Caption:='�����';

     DBGridEh1.Columns[4].Width:=0;
     DBGridEh1.Columns[4].Title.Caption:='���. �����';
     DBGridEh1.Columns[4].Visible:=false;

     DBGridEh1.Columns[5].Width:=150;
     DBGridEh1.Columns[5].Title.Caption:='��.�����';

     DBGridEh1.Columns[6].Width:=0;
     DBGridEh1.Columns[6].Title.Caption:='���. ��. �����';
     DBGridEh1.Columns[6].Visible:=false;

     DBGridEh1.Columns[7].Width:=100;
     DBGridEh1.Columns[7].Title.Caption:='�������';

     DBGridEh1.Columns[8].Width:=0;
     DBGridEh1.Columns[8].Title.Caption:='���. �������';
     DBGridEh1.Columns[8].Visible:=false;

     DBGridEh1.Columns[9].Width:=0;
     DBGridEh1.Columns[9].Title.Caption:='���� ��������';
     DBGridEh1.Columns[9].Visible:=false;

     DBGridEh1.Columns[10].Width:=0;
     DBGridEh1.Columns[10].Title.Caption:='���� ��������';
     DBGridEh1.Columns[10].Visible:=false;

     DBGridEh1.Columns[11].Width:=0;
     DBGridEh1.Columns[11].Title.Caption:='���� �������������';
     DBGridEh1.Columns[11].Visible:=false;

     DBGridEh1.Width :=875;
   end;
end;

procedure TClientListForm.SetGridButton;
begin
  if DbGridEh1.RowCount <=  EMPTYTABLE+1 then
     Button3.Enabled := false
  else
     Button3.Enabled := true;
  Button2.Enabled := Button3.Enabled;
end;

procedure TClientListForm.DisplayCurrency;
  var
     getUrl,
     getStr     :string;
     strCurrency,
     strCnt     :string;
     jsCurse    :TlkJSONobject;
begin
   // http://www.nbrb.by/API/ExRates/Rates/145?onDate=2016-7-5
   getUrl:='http://www.nbrb.by/API/ExRates/Rates/';
   // ������������ ����� �����
   // ��� - 145 ��� - 298 ���� 292 ��� �� ����������� 190
   case ComboBox1.ItemIndex of
     0:
       begin
         if DateTimePicker1.Date >= EncodeDate(2016, 07, 1) then
           begin
             getUrl := getUrl + '298';
             strCnt := '���. ������ �� 100 ���.������';
           end
         else
           begin
             getUrl := getUrl + '190';
             strCnt := '���. ������ �� 1 ���.�����';
           end;
       end;
     1:
       begin
         getUrl := getUrl + '145';
         strCnt := '���. ������ �� 1 ������ ���';
       end;
     2:
       begin
         getUrl := getUrl + '292';
         strCnt := '���. ������ �� 1 ����';
       end;
   end;
   Label10.Caption := '�������� ����� �����....';
   // {"Cur_ID":145,"Date":"2016-07-05T00:00:00","Cur_Abbreviation":"USD","Cur_Scale":1,"Cur_Name":"������ ���","Cur_OfficialRate":1.9979}
   getUrl := getUrl + '?onDate='+ FormatDateTime('YYYY-MM-DD',DateTimePicker1.Date);
   try
      getStr:=IdHTTP1.get(getUrl);  //��������� ��� ��������
   except
      On E: Exception do
         begin
           // ��������� ������ Not Found
           if IdHTTP1.ResponseCode = 404 then
              Label10.Caption := '���������� �������� ������ � ����� �����'
           else
              Label10.Caption := '������ ��� ��������� ����� �����';
           //ShowMessage(Label10.Caption);
           //ShowMessage(Label10.Caption+':'+E.Message);
           Exit;
         end;
   end;
   //��������� ����� ����� ���������� lkJSON
   jsCurse := TlkJSON.ParseText(getStr) as TlkJSONobject;
   strCurrency := vartostr(jsCurse.Field['Cur_OfficialRate'].Value);
   if strCurrency <> '' then
      Label10.Caption := strCurrency+' '+strCnt
   else
      Label10.Caption := '���������� ���������� ���������� � ����� �����';
   jsCurse.Free;
end;

procedure TClientListForm.MemTableEh1AfterOpen(DataSet: TDataSet);
begin
 SetGridColumn;
end;

procedure TClientListForm.FormCreate(Sender: TObject);
begin
  // ��������� �������� ��
  try
    MemTableEh1.Open;
  except
     on E:Exception Do
      begin
        ShowMessage('������ ��� ������ � ��: '+e.Message);
        Application.Terminate;
      end;
  end;
  try
    ADOConnection1.Open;
  except
     on E:Exception Do
       begin
         ShowMessage('������ ��� ������ � ��: '+e.Message);
         Application.Terminate;
       end;
  end;
  FileNameIni:=ExtractFilePath(ParamStr(0))+'\clients.ini';
  //������������� �����
  SetGridColumn;
  DBGridEh1.SaveColumnsLayoutIni(FileNameIni, 'ClientListForm_DBGridEh1',true);
  //���� �����
  DateTimePicker1.Date:=Now;
  DateTimePicker1.MaxDate:=Now;
  DisplayCurrency;
end;

procedure TClientListForm.FormDestroy(Sender: TObject);
begin
  DBGridEh1.SaveColumnsLayoutIni(FileNameIni, 'ClientListForm_DBGridEh1',true);
end;

procedure TClientListForm.Button1Click(Sender: TObject);
begin
  if Button1.Caption = '������' then
    begin
      DBGridEh1.SearchPanel.ApplySearchFilter;
      Button1.Caption := '������ ������';
    end
  else
    begin
      DBGridEh1.SearchPanel.CancelSearchFilter;
      Button1.Caption := '������';
    end;
end;

procedure TClientListForm.DBGridEh1SortMarkingChanged(Sender: TObject);
var
  i : integer;
begin
   for i := 0 to DBGridEh1.SortMarkedColumns.Count - 1 do
     begin
       MemTableEh1.SortOrder:=DBGridEh1.SortMarkedColumns.Items[i].FieldName;
       if DBGridEh1.SortMarkedColumns.Items[i].Title.SortMarker = smUpEh then
          MemTableEh1.SortOrder := MemTableEh1.SortOrder + ' ASC'
       else
          MemTableEh1.SortOrder := MemTableEh1.SortOrder + ' DESC';
    end;
end;

// �������������� �������
procedure TClientListForm.Button2Click(Sender: TObject);
begin
  flagInsert:=false;
  clientEditForm:=TClientEditForm.Create(Application);
  clientEditForm.ShowModal;
  clientEditForm.Free;
end;

// �������� �������
procedure TClientListForm.Button3Click(Sender: TObject);
  var buttonSel  : Integer;
begin
  buttonSel := MessageDlg('�� �������, ��� ������ ������� �������?',mtCustom, mbOKCancel, 0);
  if buttonSel = mrOK then
     begin
        ADOConnection1.BeginTrans;
        try
           // �������� �������������� ������
           AdoQuery1.SQL.Clear;
           ADOQuery1.SQL.Add('delete from addresses where client_id = :id');
           ADOQuery1.Parameters.ParamByName('id').Value := DbGridEh1.FieldColumns['id'].DisplayText;
           ADOQuery1.ExecSQL;
           AdoQuery1.SQL.Clear;
           ADOQuery1.SQL.Add('delete from phones where client_id = :id');
           ADOQuery1.Parameters.ParamByName('id').Value := DbGridEh1.FieldColumns['id'].DisplayText;
           ADOQuery1.ExecSQL;
           AdoQuery1.SQL.Clear;
           ADOQuery1.SQL.Add('delete from emails where client_id = :id');
           ADOQuery1.Parameters.ParamByName('id').Value := DbGridEh1.FieldColumns['id'].DisplayText;
           ADOQuery1.ExecSQL;
           // �������� �������� �������
           MemTableEh1.Delete;
           MemTableEh1.ApplyUpdates(0);
           ADOConnection1.CommitTrans;
           DbGridEh1.Refresh;
        except
           on E:Exception Do
             begin
               MemTableEh1.Cancel;
               ADOConnection1.RollBackTrans;
               ShowMessage('������ ��� �������� �������: '+e.Message);
             end;
        end;
     end;
  SetGridButton;
end;

procedure TClientListForm.FormActivate(Sender: TObject);
begin
  //������������� �����
  SetGridButton;
end;

// ���������� �������
procedure TClientListForm.Button4Click(Sender: TObject);
begin
  flagInsert:=true;
  clientEditForm:=TClientEditForm.Create(Application);
  clientEditForm.ShowModal;
  clientEditForm.Free;
  SetGridButton;
end;

// ����� ������
procedure TClientListForm.ComboBox1Change(Sender: TObject);
begin
 DisplayCurrency;
end;

procedure TClientListForm.DateTimePicker1CloseUp(Sender: TObject);
begin
  DisplayCurrency;
end;

// ����� �� �������� �� ����
procedure TClientListForm.Button5Click(Sender: TObject);
begin
  frxReport1.ShowReport;
end;

// ����� �� �������� (���������)
procedure TClientListForm.Button6Click(Sender: TObject);
begin
  frxReport2.ShowReport;
end;

end.
