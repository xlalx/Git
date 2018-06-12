unit ClientList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MemTableDataEh, Db, ADODB, DBGridEhGrouping, ToolCtrlsEh,
  EhLibADO,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  MemTableEh, DataDriverEh, ADODataDriverEh, StdCtrls, Mask, DBCtrlsEh,
  ExtCtrls;

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
  private
    { Private declarations }
  public
    { Public declarations }
    procedure SetGridColumn;
    procedure SetGridButton;
  end;

//Количество записей, при которых таблица считается пустой
const
  EMPTYTABLE=4;

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
  if clientEditForm.ModalResult = mrOk then
     MemTableEh1.Post;
  clientEditForm.ShowModal;
  clientEditForm.Free;
end;

procedure TClientListForm.Button3Click(Sender: TObject);
  var buttonSel  : Integer;
begin
  buttonSel := MessageDlg('Вы уверены, что хотите удалить клиента?',mtCustom, mbOKCancel, 0);
  if buttonSel = mrOK then
     begin
        //ADODataDriverEh1.DeleteSQL[0]:=ADODataDriverEh1.DeleteSQL[0]+DBGridEh1.FieldColumns['id'].DisplayText;
        MemTableEh1.Delete;
     end;
  SetGridButton;
{
try
if Query1.Active then Close;
Query1.SQL.Clear; //типа очищаем свойство в котором текст запроса хранится

Query1.Sql.Add("delete * from your_table where field="+
DBGrid1.Fields[0].AsString); //здесь подставляя первый столбец DBGrid"a выделенной курсором строки и выполняя эту команду ты удаляешь строку в таблице. Свойство Fields нумеруется с нуля.
Query1.ExecSQL;//Метод специально предназначен для Delete или Insert, т.е. он не возвращает результатов
except
on E:Exception do
ShowMessage(E.Message);
end;
}
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
  if clientEditForm.ModalResult = mrOk then
     MemTableEh1.Post;
  clientEditForm.Free;
end;

end.
