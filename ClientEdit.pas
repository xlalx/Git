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
    DBEditEh1: TDBEditEh;
    procedure FormCreate(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure Edit5KeyPress(Sender: TObject; var Key: Char);
    procedure Edit6KeyPress(Sender: TObject; var Key: Char);
    procedure Edit7KeyPress(Sender: TObject; var Key: Char);
    procedure Edit8KeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
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
  Edit3.Text := ClientListForm.DBGridEh1.FieldColumns['Address'].DisplayText;
  Edit4.Text := ClientListForm.DBGridEh1.FieldColumns['Address2'].DisplayText;
  Edit5.Text := ClientListForm.DBGridEh1.FieldColumns['Email'].DisplayText;
  Edit6.Text := ClientListForm.DBGridEh1.FieldColumns['Email2'].DisplayText;
  Edit7.Text := ClientListForm.DBGridEh1.FieldColumns['Phone'].DisplayText;
  Edit6.Text := ClientListForm.DBGridEh1.FieldColumns['Phone2'].DisplayText;
  //ClientListForm.MemTableEh1.
  ClientListForm.MemTableEh1.Edit;
end;

procedure TClientEditForm.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = Char(VK_RETURN)) and (length(Edit1.Text) > 0) then
     Edit2.SetFocus;
end;

procedure TClientEditForm.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = Char(VK_RETURN)) and (length(Edit2.Text) > 0) then
     Edit3.SetFocus;
end;

procedure TClientEditForm.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = Char(VK_RETURN)) and (length(Edit3.Text) > 0) then
     Edit4.SetFocus;
end;

procedure TClientEditForm.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = Char(VK_RETURN) then
     Edit5.SetFocus;
end;

procedure TClientEditForm.Edit5KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = Char(VK_RETURN)) and (length(Edit5.Text) > 0) then
     Edit6.SetFocus;
end;

procedure TClientEditForm.Edit6KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = Char(VK_RETURN) then
     Edit7.SetFocus;
end;

procedure TClientEditForm.Edit7KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = Char(VK_RETURN)) and (length(Edit7.Text) > 0) then
     Edit8.SetFocus;
end;

procedure TClientEditForm.Edit8KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = Char(VK_RETURN) then
     Button1.SetFocus;
end;

procedure TClientEditForm.Button1Click(Sender: TObject);
begin
  //ClientListForm.DBGridEh1.FieldColumns['FirstName'].DisplayText := Edit1.Text;
  //ClientListForm.DBGridEh1.FieldColumns['FirstName'].
  ClientListForm.MemTableEh1.Post;
  ClientListForm.MemTableEh1.Close;
  ClientListForm.MemTableEh1.Open;
end;

procedure TClientEditForm.Button2Click(Sender: TObject);
begin
    ClientListForm.MemTableEh1.Cancel;
end;

procedure TClientEditForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ClientListForm.MemTableEh1.Cancel;
end;

end.
