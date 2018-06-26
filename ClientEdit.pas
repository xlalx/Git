unit ClientEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrlsEh, MemTableDataEh, Db, ADODB,
  DataDriverEh, ADODataDriverEh;

type
  TOldRecord = record
     address  : String;
     address2 : String;
     email    : String;
     email2   : String;
     phone    : String;
     phone2   : String;
  end;
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
    Label10: TLabel;
    DBDateTimeEditEh1: TDBDateTimeEditEh;
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
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    //function CheckEmptyFields:boolean;
    oldRecord : TOldRecord;
  public
    { Public declarations }
  end;

var
  ClientEditForm: TClientEditForm;

implementation

uses ClientList;

{$R *.dfm}


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
       MessageDlg('Заполните поле Имя',mtError,[mbOK],0);
       DBEditEh1.SetFocus;
       Exit;
    end;
  if length(DBEditEh2.Text) = 0 then
    begin
       MessageDlg('Заполните поле Фамилия',mtError,[mbOK],0);
       DBEditEh2.SetFocus;
       Exit;
    end;
  if length(DBEditEh3.Text) = 0 then
    begin
       MessageDlg('Заполните поле Адрес',mtError,[mbOK],0);
       DBEditEh3.SetFocus;
       Exit;
    end;
  if length(DBEditEh7.Text) = 0 then
    begin
       MessageDlg('Заполните поле Телефон',mtError,[mbOK],0);
       DBEditEh7.SetFocus;
       Exit;
    end;
  // Запись информации и переоткрытие таблицы
  {
  try
    begin
     ClientListForm.MemTableEh1.Post;
     ClientListForm.MemTableEh1.ApplyUpdates(-1);
    end
  except
     on E:Exception Do
      begin
        ShowMessage('Ошибка при работе с БД '+e.Message)
      end
  end;
  }
  if clientListForm.flagInsert then
  else
      with clientListForm do
        begin
           ADOConnection1.BeginTrans;
           try
              // Работа с лополнительными таблиц
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
              if length(DBEditEh3.Text) <> 0 then
                begin
                  AdoQuery1.SQL.Clear;
                  ADOQuery1.SQL.Add('insert into addresses (client_id, num, address) values (:id, 1, :address)');
                  ADOQuery1.Parameters.ParamByName('id').Value := DbGridEh1.FieldColumns['id'].DisplayText;
                  ADOQuery1.Parameters.ParamByName('address').Value := DBEditEh3.Text;
                  ADOQuery1.ExecSQL;
                end;
              // Удаление основной таблицы
              ClientListForm.MemTableEh1.Post;
              ClientListForm.MemTableEh1.ApplyUpdates(-1);
              ADOConnection1.CommitTrans;
              MemTableEh1.ApplyUpdates(0);
              DbGridEh1.Refresh;
           except
              on E:Exception Do
                begin
                  MemTableEh1.Cancel;
                  ADOConnection1.RollBackTrans;
                  ShowMessage('Ошибка при удалении клиента: '+e.Message);
                  raise;
                end;
              end;
        end;
  clientEditForm.close;
end;

procedure TClientEditForm.Button2Click(Sender: TObject);
begin
   clientListForm.MemTableEh1.Cancel;
   clientEditForm.close;
end;

procedure TClientEditForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  clientListForm.MemTableEh1.Cancel;
end;

procedure TClientEditForm.FormCreate(Sender: TObject);
begin
  if clientListForm.flagInsert then
     clientListForm.MemTableEh1.Append
  else
     begin
       clientListForm.MemTableEh1.Edit;
       // Сохраниние страых полей
       oldRecord.address := clientListForm.MemTableEh1.FieldValues['address'];
       oldRecord.address2 := clientListForm.MemTableEh1.FieldValues['address2'];
       oldRecord.email := clientListForm.MemTableEh1.FieldValues['email'];
       oldRecord.email2 := clientListForm.MemTableEh1.FieldValues['email2'];
       oldRecord.phone := clientListForm.MemTableEh1.FieldValues['phone'];
       oldRecord.phone2 := clientListForm.MemTableEh1.FieldValues['phone2'];
     end;
end;

end.
