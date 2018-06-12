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
    Left = 16
    Top = 40
    Width = 873
    Height = 385
    AllowedOperations = []
    ColumnDefValues.Title.TitleButton = True
    DataSource = DataSource1
    DynProps = <>
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind, dghColumnResize, dghColumnMove, dghExtendVertLines]
    RowDetailPanel.Active = True
    RowDetailPanel.Height = 190
    SearchPanel.Enabled = True
    SortLocal = True
    TabOrder = 0
    TitleParams.SortMarkerStyle = smstDefaultEh
    OnSortMarkingChanged = DBGridEh1SortMarkingChanged
    object RowDetailData: TRowDetailPanelControlEh
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 836
        Height = 185
        Align = alTop
        TabOrder = 0
        object Label2: TLabel
          Left = 24
          Top = 32
          Width = 22
          Height = 13
          Caption = #1048#1084#1103
        end
        object Label8: TLabel
          Left = 24
          Top = 156
          Width = 45
          Height = 13
          Caption = #1058#1077#1083#1077#1092#1086#1085
        end
        object Label7: TLabel
          Left = 394
          Top = 124
          Width = 135
          Height = 13
          Caption = #1044#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1072#1103' '#1101#1083'. '#1087#1086#1095#1090#1072
        end
        object Label6: TLabel
          Left = 24
          Top = 124
          Width = 47
          Height = 13
          Caption = #1069#1083'. '#1087#1086#1095#1090#1072
        end
        object Label5: TLabel
          Left = 392
          Top = 92
          Width = 121
          Height = 13
          Caption = #1044#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1099#1081' '#1072#1076#1088#1077#1089
        end
        object Label4: TLabel
          Left = 24
          Top = 92
          Width = 31
          Height = 13
          Caption = #1040#1076#1088#1077#1089
        end
        object Label3: TLabel
          Left = 24
          Top = 60
          Width = 49
          Height = 13
          Caption = #1060#1072#1084#1080#1083#1080#1103
        end
        object Label9: TLabel
          Left = 395
          Top = 156
          Width = 134
          Height = 13
          Caption = #1044#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1099#1081' '#1090#1077#1083#1077#1092#1086#1085
        end
        object Label1: TLabel
          Left = 299
          Top = 8
          Width = 158
          Height = 13
          Caption = #1055#1086#1083#1085#1072#1103' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1086' '#1082#1083#1080#1077#1085#1090#1077
        end
        object DBEditEh1: TDBEditEh
          Left = 96
          Top = 24
          Width = 121
          Height = 21
          DataField = 'FirstName'
          DataSource = DataSource1
          DynProps = <>
          EditButtons = <>
          ReadOnly = True
          TabOrder = 0
          Visible = True
        end
        object DBEditEh2: TDBEditEh
          Left = 96
          Top = 56
          Width = 121
          Height = 21
          DataField = 'Surname'
          DataSource = DataSource1
          DynProps = <>
          EditButtons = <>
          ReadOnly = True
          TabOrder = 1
          Visible = True
        end
        object DBEditEh3: TDBEditEh
          Left = 96
          Top = 88
          Width = 281
          Height = 21
          DataField = 'Address'
          DataSource = DataSource1
          DynProps = <>
          EditButtons = <>
          ReadOnly = True
          TabOrder = 2
          Visible = True
        end
        object DBEditEh4: TDBEditEh
          Left = 544
          Top = 88
          Width = 273
          Height = 21
          DataField = 'Address2'
          DataSource = DataSource1
          DynProps = <>
          EditButtons = <>
          ReadOnly = True
          TabOrder = 3
          Visible = True
        end
        object DBEditEh5: TDBEditEh
          Left = 96
          Top = 120
          Width = 281
          Height = 21
          DataField = 'Email'
          DataSource = DataSource1
          DynProps = <>
          EditButtons = <>
          ReadOnly = True
          TabOrder = 4
          Visible = True
        end
        object DBEditEh6: TDBEditEh
          Left = 544
          Top = 120
          Width = 273
          Height = 21
          DataField = 'Email2'
          DataSource = DataSource1
          DynProps = <>
          EditButtons = <>
          ReadOnly = True
          TabOrder = 5
          Visible = True
        end
        object DBEditEh7: TDBEditEh
          Left = 96
          Top = 152
          Width = 281
          Height = 21
          DataField = 'Phone'
          DataSource = DataSource1
          DynProps = <>
          EditButtons = <>
          ReadOnly = True
          TabOrder = 6
          Visible = True
        end
        object DBEditEh8: TDBEditEh
          Left = 544
          Top = 152
          Width = 273
          Height = 21
          DataField = 'Phone2'
          DataSource = DataSource1
          DynProps = <>
          EditButtons = <>
          ReadOnly = True
          TabOrder = 7
          Visible = True
        end
      end
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
    OnClick = Button4Click
  end
  object ADODataDriverEh1: TADODataDriverEh
    ConnectionString = 
      'Provider=Microsoft.ACE.OLEDB.12.0;Data Source=clients.accdb;Pers' +
      'ist Security Info=False'
    DynaSQLParams.Options = []
    MacroVars.Macros = <>
    SpecParams.Strings = (
      'AUTO_INCREMENT_FIELD=id')
    SelectCommand.CommandText.Strings = (
      'select * from clients')
    SelectCommand.Parameters = <>
    UpdateCommand.CommandText.Strings = (
      'update clients'
      'set'
      '  FirstName = :FirstName,'
      '  SurName = :SurName,'
      '  Address = :Address,'
      '  Address2 = :Address2,'
      '  Email = :Email,'
      '  Email2 = :Email2,'
      '  Phone = :Phone,'
      '  Phone2 = :Phone2'
      'where'
      '  id = :OLD_id')
    UpdateCommand.Parameters = <
      item
        Name = 'FirstName'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'SurName'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'Address'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'Address2'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'Email'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'Email2'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'Phone'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'Phone2'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'OLD_id'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    InsertCommand.CommandText.Strings = (
      'insert into clients'
      
        '  (FirstName,SurName, Address, Address2, Email, Email2, Phone, P' +
        'hone2)'
      'values'
      
        '  (:FirstName, :SurName, :Address, :Address2, :Email, :Email2, :' +
        'Phone, :Phone2)')
    InsertCommand.Parameters = <
      item
        Name = 'FirstName'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'SurName'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'Address'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'Address2'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'Email'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'Email2'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'Phone'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'Phone2'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    DeleteCommand.CommandText.Strings = (
      'delete from clients where id = :OLD_id')
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
    GetrecCommand.CommandText.Strings = (
      'select * from clients'
      'where id = :OLD_id')
    GetrecCommand.Parameters = <
      item
        Name = 'OLD_id'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
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
    AutoCalcFields = False
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
