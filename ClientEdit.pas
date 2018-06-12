unit ClientEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrlsEh;

type
  TClientEditForm = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    DBEditEh1: TDBEditEh;
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
  Edit1.Text := ClientListForm.DBGridEh1.FieldColumns['FirstName'].DisplayText;
  Edit2.Text := ClientListForm.DBGridEh1.FieldColumns['SurName'].DisplayText;
end;

end.
