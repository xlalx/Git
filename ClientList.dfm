object ClientListForm: TClientListForm
  Left = 262
  Top = 175
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1056#1072#1073#1086#1090#1072' '#1089' '#1082#1083#1080#1077#1085#1090#1072#1084#1080
  ClientHeight = 465
  ClientWidth = 915
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object DBGridEh1: TDBGridEh
    Left = 24
    Top = 24
    Width = 873
    Height = 385
    DataSource = DataSource1
    DynProps = <>
    ReadOnly = True
    TabOrder = 0
    OnColWidthsChanged = DBGridEh1ColWidthsChanged
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object ADODataDriverEh1: TADODataDriverEh
    ConnectionString = 
      'Provider=Microsoft.ACE.OLEDB.12.0;Data Source=clients.accdb;Pers' +
      'ist Security Info=False'
    DynaSQLParams.Options = []
    MacroVars.Macros = <>
    SelectCommand.CommandText.Strings = (
      'select FirstName, SurName, Address, Email, Phone from clients')
    SelectCommand.Parameters = <>
    UpdateCommand.Parameters = <>
    InsertCommand.Parameters = <>
    DeleteCommand.Parameters = <>
    GetrecCommand.Parameters = <>
    Left = 688
    Top = 424
  end
  object ADOConnectionProviderEh1: TADOConnectionProviderEh
    InlineConnection.Provider = 'Microsoft.ACE.OLEDB.12.0'
    ServerType = 'MSAccess'
    InlineConnectionBeforeConnect = ADOConnectionProviderEh1InlineConnectionBeforeConnect
    Left = 728
    Top = 424
  end
  object DataSource1: TDataSource
    DataSet = MemTableEh1
    Left = 768
    Top = 424
  end
  object MemTableEh1: TMemTableEh
    Active = True
    Params = <>
    DataDriver = ADODataDriverEh1
    AfterOpen = MemTableEh1AfterOpen
    Left = 648
    Top = 424
  end
end
