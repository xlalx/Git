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
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Button1: TButton;
    Button2: TButton;
    DBEditEh1: TDBEditEh;
    DBEditEh2: TDBEditEh;
    DBEditEh3: TDBEditEh;
    DBEditEh4: TDBEditEh;
    DBEditEh5: TDBEditEh;
    DBEditEh6: TDBEditEh;
    DBEditEh7: TDBEditEh;
    DBEditEh8: TDBEditEh;
    procedure FormCreate(Sender: TObject);
    procedure DBEditEh1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEditEh2KeyPress(Sender: TObject; var Key: Char);
    procedure DBEditEh3KeyPress(Sender: TObject; var Key: Char);
    procedure DBEditEh4KeyPress(Sender: TObject; var Key: Char);
    procedure DBEditEh5KeyPress(Sender: TObject; var Key: Char);
    procedure DBEditEh6KeyPress(Sender: TObject; var Key: Char);
    procedure DBEditEh7KeyPress(Sender: TObject; var Key: Char);
    procedure DBEditEh8KeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    //function CheckEmptyFields:boolean;
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
  {
  Edit1.Text := ClientListForm.DBGridEh1.FieldColumns['FirstName'].DisplayText;
  Edit2.Text := ClientListForm.DBGridEh1.FieldColumns['SurName'].DisplayText;
  Edit3.Text := ClientListForm.DBGridEh1.FieldColumns['Address'].DisplayText;
  Edit4.Text := ClientListForm.DBGridEh1.FieldColumns['Address2'].DisplayText;
  Edit5.Text := ClientListForm.DBGridEh1.FieldColumns['Email'].DisplayText;
  Edit6.Text := ClientListForm.DBGridEh1.FieldColumns['Email2'].DisplayText;
  Edit7.Text := ClientListForm.DBGridEh1.FieldColumns['Phone'].DisplayText;
  Edit6.Text := ClientListForm.DBGridEh1.FieldColumns['Phone2'].DisplayText;
  }
  //ClientListForm.MemTableEh1.
end;

procedure TClientEditForm.DBEditEh1KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = Char(VK_RETURN)) and (length(DBEditEh1.Text) > 0) then
     DBEditEh2.SetFocus;
end;

procedure TClientEditForm.DBEditEh2KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = Char(VK_RETURN)) and (length(DBEditEh2.Text) > 0) then
     DBEditEh3.SetFocus;
end;

procedure TClientEditForm.DBEditEh3KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = Char(VK_RETURN)) and (length(DBEditEh3.Text) > 0) then
     DBEditEh4.SetFocus;
end;

procedure TClientEditForm.DBEditEh4KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = Char(VK_RETURN) then
     DBEditEh5.SetFocus;
end;

procedure TClientEditForm.DBEditEh5KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = Char(VK_RETURN) then
     DBEditEh6.SetFocus;
end;

procedure TClientEditForm.DBEditEh6KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = Char(VK_RETURN) then
     DBEditEh7.SetFocus;
end;

procedure TClientEditForm.DBEditEh7KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = Char(VK_RETURN)) and (length(DBEditEh7.Text) > 0) then
     DBEditEh8.SetFocus;
end;

procedure TClientEditForm.DBEditEh8KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = Char(VK_RETURN) then
     Button1.SetFocus;
end;

procedure TClientEditForm.Button1Click(Sender: TObject);
begin
  if length(DBEditEh1.Text) = 0 then
    begin
       MessageDlg('��������� ���� ���',mtError,[mbOK],0);
       DBEditEh1.SetFocus;
       Exit;
    end;
  if length(DBEditEh2.Text) = 0 then
    begin
       MessageDlg('��������� ���� �������',mtError,[mbOK],0);
       DBEditEh2.SetFocus;
       Exit;
    end;
  if length(DBEditEh3.Text) = 0 then
    begin
       MessageDlg('��������� ���� �����',mtError,[mbOK],0);
       DBEditEh3.SetFocus;
       Exit;
    end;
  if length(DBEditEh7.Text) = 0 then
    begin
       MessageDlg('��������� ���� �������',mtError,[mbOK],0);
       DBEditEh7.SetFocus;
       Exit;
    end;
  clientEditForm.close;
end;

procedure TClientEditForm.Button2Click(Sender: TObject);
begin
   ClientListForm.MemTableEh1.Cancel;
   clientEditForm.close;
end;

procedure TClientEditForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   //clientListForm.MemTableEh1.Cancel;
end;

end.
