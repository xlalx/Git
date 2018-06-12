unit ClientEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrlsEh, MemTableDataEh, Db, ADODB,
  DataDriverEh, ADODataDriverEh;

type
  TClientEditForm = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    ADODataDriverEh1: TADODataDriverEh;
    Label4: TLabel;
    Edit3: TEdit;
    Label5: TLabel;
    Edit4: TEdit;
    Label6: TLabel;
    Edit5: TEdit;
    Label7: TLabel;
    Edit6: TEdit;
    Label8: TLabel;
    Edit7: TEdit;
    Label9: TLabel;
    Edit8: TEdit;
    Button1: TButton;
    Button2: TButton;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ClientEditForm: TClientEditForm;

implementation

uses ClientList;

{$R *.dfm}

procedure TClientEditForm.FormCreate(Sender: TObject);
begin
  //ADODataDriverEh1.SelectSQL. :='select * from clients where id = '+
  //                 ClientListForm.DBGridEh1.FieldColumns['id'].DisplayText;
  //Edit1.Text := ClientListForm.DBGridEh1.FieldColumns['FirstName'].DisplayText;
  Edit1.Text := ClientListForm.DBGridEh1.FieldColumns['FirstName'].DisplayText;
  Edit2.Text := ClientListForm.DBGridEh1.FieldColumns['SurName'].DisplayText;
  Edit3.Text := ClientListForm.DBGridEh1.FieldColumns['Address'].DisplayText;
  Edit4.Text := ClientListForm.DBGridEh1.FieldColumns['Address2'].DisplayText;
  Edit5.Text := ClientListForm.DBGridEh1.FieldColumns['Email'].DisplayText;
  Edit6.Text := ClientListForm.DBGridEh1.FieldColumns['Email2'].DisplayText;
  Edit7.Text := ClientListForm.DBGridEh1.FieldColumns['Phone'].DisplayText;
  Edit6.Text := ClientListForm.DBGridEh1.FieldColumns['Phone2'].DisplayText;        
end;

end.
