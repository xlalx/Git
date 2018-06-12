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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ClientListForm: TClientListForm;

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

end.
