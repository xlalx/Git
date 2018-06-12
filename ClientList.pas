unit ClientList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MemTableDataEh, Db, ADODB, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  MemTableEh, DataDriverEh, ADODataDriverEh;

type
  TClientListForm = class(TForm)
    ADODataDriverEh1: TADODataDriverEh;
    ADOConnectionProviderEh1: TADOConnectionProviderEh;
    DataSource1: TDataSource;
    MemTableEh1: TMemTableEh;
    DBGridEh1: TDBGridEh;
    procedure ADOConnectionProviderEh1InlineConnectionBeforeConnect(
      Sender: TObject);
    procedure MemTableEh1AfterOpen(DataSet: TDataSet);
    procedure DBGridEh1ColWidthsChanged(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
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
var
 i: Integer;
begin
 if FileExists(FileNameIni) then
    DBGridEh1.RestoreColumnsLayoutIni(FileNameIni,'ClientListForm_DBGridEh1', [crpColIndexEh, crpColWidthsEh, crpColVisibleEh])
 else
   begin
     //for i:=0 to 4 do

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
end;

procedure TClientListForm.FormDestroy(Sender: TObject);
begin
  DBGridEh1.SaveColumnsLayoutIni(FileNameIni, 'ClientListForm_DBGridEh1',true);
end;

end.
