unit ClientList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MemTableDataEh, Db, ADODB, DBGridEhGrouping, ToolCtrlsEh,
  EhLibADO,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  MemTableEh, DataDriverEh, ADODataDriverEh, StdCtrls;

type
  TClientListForm = class(TForm)
    ADODataDriverEh1: TADODataDriverEh;
    ADOConnectionProviderEh1: TADOConnectionProviderEh;
    DataSource1: TDataSource;
    MemTableEh1: TMemTableEh;
    DBGridEh1: TDBGridEh;
    Button1: TButton;
    Button2: TButton;
    procedure ADOConnectionProviderEh1InlineConnectionBeforeConnect(
      Sender: TObject);
    procedure MemTableEh1AfterOpen(DataSet: TDataSet);
    procedure DBGridEh1ColWidthsChanged(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1SortMarkingChanged(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure SetGridColumn;
  end;

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
     DBGridEh1.Columns[0].Width:=150;
     DBGridEh1.Columns[0].Title.Caption:='���';

     DBGridEh1.Columns[1].Width:=200;
     DBGridEh1.Columns[1].Title.Caption:='�������';

     DBGridEh1.Columns[2].Width:=250;
     DBGridEh1.Columns[2].Title.Caption:='�����';

     DBGridEh1.Columns[3].Width:=150;
     DBGridEh1.Columns[3].Title.Caption:='��.�����';

     DBGridEh1.Columns[4].Width:=100;
     DBGridEh1.Columns[4].Title.Caption:='�������';

     DBGridEh1.Width :=875;
   end;
end;

procedure TClientListForm.MemTableEh1AfterOpen(DataSet: TDataSet);
begin
 SetGridColumn;
 // ������ � ���������
 //addEhColumns('FirstName','���',true,DBGridEh1,74 );

 {
 col:=DBGridEh1.Columns.Add;
 col.FieldName :='FirstName';
 col.Title.Caption :='���';
 col.Width :=150;
 col.Visible :=visible;
 }
 //DBGridEh1.Columns.SaveToFile('clients.ini');
end;

procedure TClientListForm.DBGridEh1ColWidthsChanged(Sender: TObject);
begin
  //DBGridEh1.Columns.SaveToFile('clients.ini');
  //DBGridEh1.SaveColumnsLayout(DefaultIniStorage, 'ClientListForm_DBGridEh1');
end;

procedure TClientListForm.FormCreate(Sender: TObject);
begin
  //DBGridEh1.SaveColumnsLayout(DefaultIniStorage, 'ClientListForm_DBGridEh1');
  //DBGridEh1.RestoreColumnsLayout(IniStorage, 'ClientListForm_DBGridEh1', [crpColIndexEh, crpColWidthsEh, crpColVisibleEh]);
  FileNameIni:=ExtractFilePath(ParamStr(0))+'\clients.ini';
  SetGridColumn;
  DBGridEh1.SaveColumnsLayoutIni(FileNameIni, 'ClientListForm_DBGridEh1',true);
  //DBGridEh1.DefaultApplySorting;
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
      //DBEditEh1.Text := '';
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
    end
end;

procedure TClientListForm.Button2Click(Sender: TObject);
begin
  //ADOQuery1.Insert;
  //clientEditForm1:=Form1.Create(Application);
  //Application.CreateForm(TClientEditForm, ClientEditForm);
  clientEditForm:=TClientEditForm.Create(Application);
  clientEditForm.ShowModal;
  if clientEditForm.ModalResult = mrOk then;
     //ADOQuery1.Post;
  clientEditForm.Free;
end;

end.
