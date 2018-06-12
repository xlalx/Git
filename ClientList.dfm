object ClientListForm: TClientListForm
  Left = 262
  Top = 175
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1056#1072#1073#1086#1090#1072' '#1089' '#1082#1083#1080#1077#1085#1090#1072#1084#1080
  ClientHeight = 481
  ClientWidth = 916
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
    Top = 40
    Width = 873
    Height = 385
    AllowedOperations = []
    ColumnDefValues.Title.TitleButton = True
    DataSource = DataSource1
    DynProps = <>
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind, dghColumnResize, dghColumnMove, dghExtendVertLines]
    ReadOnly = True
    SearchPanel.Enabled = True
    SortLocal = True
    TabOrder = 0
    TitleParams.SortMarkerStyle = smstDefaultEh
    OnSortMarkingChanged = DBGridEh1SortMarkingChanged
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Button1: TButton
    Left = 24
    Top = 8
    Width = 89
    Height = 25
    Caption = #1060#1080#1083#1100#1090#1088
    TabOrder = 1
    OnClick = Button1Click
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
    ReadOnly = True
    AfterOpen = MemTableEh1AfterOpen
    Left = 648
    Top = 424
  end
end
