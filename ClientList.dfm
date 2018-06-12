object ClientListForm: TClientListForm
  Left = 219
  Top = 168
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
  OnActivate = FormActivate
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
  object Button2: TButton
    Left = 32
    Top = 440
    Width = 105
    Height = 25
    Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 176
    Top = 440
    Width = 105
    Height = 25
    Caption = #1059#1076#1072#1083#1080#1090#1100
    TabOrder = 3
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 320
    Top = 440
    Width = 121
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1082#1083#1080#1077#1085#1090#1072
    TabOrder = 4
  end
  object ADODataDriverEh1: TADODataDriverEh
    ConnectionString = 
      'Provider=Microsoft.ACE.OLEDB.12.0;Data Source=clients.accdb;Pers' +
      'ist Security Info=False'
    DynaSQLParams.Options = []
    MacroVars.Macros = <>
    SelectCommand.CommandText.Strings = (
      'select * from clients')
    SelectCommand.Parameters = <>
    UpdateCommand.CommandText.Strings = (
      'update vendors'
      'set'
      '  FirstName = :FirstName'
      'where'
      '  VendorNo = :OLD_VendorNo')
    UpdateCommand.Parameters = <
      item
        Name = 'FirstName'
        Size = -1
        Value = Null
      end
      item
        Name = 'OLD_VendorNo'
        Size = -1
        Value = Null
      end>
    InsertCommand.Parameters = <>
    DeleteCommand.CommandText.Strings = (
      'delete from clients where id = :OLD_id'
      '')
    DeleteCommand.Parameters = <
      item
        Name = 'OLD_id'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
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
    FieldDefs = <
      item
        Name = 'ID'
        DataType = ftAutoInc
        Precision = 15
      end
      item
        Name = 'FirstName'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'Surname'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'Address'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'Address2'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'Email'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'Email2'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'Phone'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'Phone2'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'CreateDate'
        DataType = ftDateTime
      end
      item
        Name = 'ChangeDate'
        DataType = ftDateTime
      end>
    IndexDefs = <>
    Params = <>
    DataDriver = ADODataDriverEh1
    StoreDefs = True
    AfterOpen = MemTableEh1AfterOpen
    Left = 648
    Top = 424
  end
end
