unit ClientList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MemTableDataEh, Db, ADODB, DBGridEhGrouping, ToolCtrlsEh,
  EhLibADO,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  MemTableEh, DataDriverEh, ADODataDriverEh, StdCtrls, Mask, DBCtrlsEh,
  ExtCtrls, ComCtrls, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdHTTP, frxClass, frxDBSet, frxADOComponents, frxDCtrl;

type
  TClientListForm = class(TForm)
    ADODataDriverEh1: TADODataDriverEh;
    ADOConnectionProviderEh1: TADOConnectionProviderEh;
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
    procedure ADOConnectionProviderEh1InlineConnectionBeforeConnect(
      Sender: TObject);
    procedure MemTableEh1AfterOpen(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1SortMarkingChanged(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure DateTimePicker1Change(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
    procedure DisplayCurrency;
    procedure SetGridColumn;
    procedure SetGridButton;
  public
    { Public declarations }
  end;

//Количество записей, при которых таблица считается пустой
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
  FilePath := ExtractFilePath(ParamStr(0))+'\clients.accdb';
  ADOConnectionProviderEh1.InlineConnection.ConnectionString :=
    'Provider=Microsoft.ACE.OLEDB.12.0;User ID=Admin;'+
    'Data Source=' + FilePath + ';'+
    'Mode=Share Deny None;Jet OLEDB:System database="";';
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
     DBGridEh1.Columns[1].Title.Caption:='Имя';

     DBGridEh1.Columns[2].Width:=200;
     DBGridEh1.Columns[2].Title.Caption:='Фамилия';

     DBGridEh1.Columns[3].Width:=250;
     DBGridEh1.Columns[3].Title.Caption:='Адрес';

     DBGridEh1.Columns[4].Width:=0;
     DBGridEh1.Columns[4].Title.Caption:='Доп. адрес';
     DBGridEh1.Columns[4].Visible:=false;

     DBGridEh1.Columns[5].Width:=150;
     DBGridEh1.Columns[5].Title.Caption:='Эл.почта';

     DBGridEh1.Columns[6].Width:=0;
     DBGridEh1.Columns[6].Title.Caption:='Доп. эл. почта';
     DBGridEh1.Columns[6].Visible:=false;

     DBGridEh1.Columns[7].Width:=100;
     DBGridEh1.Columns[7].Title.Caption:='Телефон';

     DBGridEh1.Columns[8].Width:=0;
     DBGridEh1.Columns[8].Title.Caption:='Доп. телефон';
     DBGridEh1.Columns[8].Visible:=false;

     DBGridEh1.Columns[9].Width:=0;
     DBGridEh1.Columns[9].Title.Caption:='Дата создания';
     DBGridEh1.Columns[9].Visible:=false;

     DBGridEh1.Columns[10].Width:=0;
     DBGridEh1.Columns[10].Title.Caption:='Дата корректировки';
     DBGridEh1.Columns[10].Visible:=false;

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
     getStr   : string;
     iPos     : integer;
     strCurrency,
     strCnt   : string;
begin
   // http://www.nbrb.by/API/ExRates/Rates/145?onDate=2016-7-5
   // {"Cur_ID":145,"Date":"2016-07-05T00:00:00","Cur_Abbreviation":"USD","Cur_Scale":1,"Cur_Name":"Доллар США","Cur_OfficialRate":1.9979}
   getUrl:='http://www.nbrb.by/API/ExRates/Rates/';
   // Формирование кодов валют
   // США - 145 РУР - 298 Евро 292
   case ComboBox1.ItemIndex of
     0:
       begin
         getUrl := getUrl + '298';
         strCnt := 'бел. рублей за 100 рос.рублей';
       end;
     1:
       begin
         getUrl := getUrl + '145';
         strCnt := 'бел. рублей за 1 доллар США';
       end;
     2:
       begin
         getUrl := getUrl + '292';
         strCnt := 'бел. рублей за 1 Евро';
       end;
   end;
   Label1.Caption := 'Загрузка курса валют....';
   // http://www.nbrb.by/API/ExRates/Rates/298?onDate=2016-7-5
   // url := url + '?onDate='+FormatDateTime('YYYY-MM-DD',DBDateTimeEditEh1.Value);
   // url := url + '?onDate='+ FormatDateTime('YYYY-MM-DD',DateTimePicker1.Date);
   getUrl := getUrl + '?onDate='+ FormatDateTime('YYYY-MM-DD',DateTimePicker1.Date);
   try
      getStr:=IdHTTP1.get(getUrl);  //скачиваем код страницы
   except
      On E: Exception do
         begin
           Label10.Caption := 'Ошибка при получении курса валют';
           ShowMessage(Label1.Caption+' '+E.Message);
           Exit;
         end;
   end;
   // Обработка Курс
   iPos := pos('Cur_OfficialRate',getStr);
   strCurrency := copy(getStr,iPos+length('Cur_OfficialRate')+2,6);
   Label10.Caption := strCurrency+' '+strCnt;
end;

procedure TClientListForm.MemTableEh1AfterOpen(DataSet: TDataSet);
begin
 SetGridColumn;
end;

procedure TClientListForm.FormCreate(Sender: TObject);
begin
  FileNameIni:=ExtractFilePath(ParamStr(0))+'\clients.ini';
  //Инициализация грида
  SetGridColumn;
  DBGridEh1.SaveColumnsLayoutIni(FileNameIni, 'ClientListForm_DBGridEh1',true);
  //Курс валют
  DisplayCurrency;
end;

procedure TClientListForm.FormDestroy(Sender: TObject);
begin
  DBGridEh1.SaveColumnsLayoutIni(FileNameIni, 'ClientListForm_DBGridEh1',true);
end;

procedure TClientListForm.Button1Click(Sender: TObject);
begin
  if Button1.Caption = 'Фильтр' then
    begin
      DBGridEh1.SearchPanel.ApplySearchFilter;
      Button1.Caption := 'Убрать фильтр';
    end
  else
    begin
      DBGridEh1.SearchPanel.CancelSearchFilter;
      Button1.Caption := 'Фильтр';
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

procedure TClientListForm.Button2Click(Sender: TObject);
begin
  clientEditForm:=TClientEditForm.Create(Application);
  MemTableEh1.Edit;
  clientEditForm.ShowModal;
  clientEditForm.Free;
end;

procedure TClientListForm.Button3Click(Sender: TObject);
  var buttonSel  : Integer;
begin
  buttonSel := MessageDlg('Вы уверены, что хотите удалить клиента?',mtCustom, mbOKCancel, 0);
  if buttonSel = mrOK then
     begin
        MemTableEh1.Delete;
     end;
  SetGridButton;
end;

procedure TClientListForm.FormActivate(Sender: TObject);
begin
  //Инициализация грида
  SetGridButton;
end;

procedure TClientListForm.Button4Click(Sender: TObject);
begin
  clientEditForm:=TClientEditForm.Create(Application);
  MemTableEh1.Append;
  clientEditForm.ShowModal;
  clientEditForm.Free;
  SetGridButton;
end;

procedure TClientListForm.ComboBox1Change(Sender: TObject);
begin
 DisplayCurrency;
end;

procedure TClientListForm.DateTimePicker1Change(Sender: TObject);
begin
 DisplayCurrency;
end;

procedure TClientListForm.Button5Click(Sender: TObject);
begin
  frxReport1.ShowReport;
end;

end.
