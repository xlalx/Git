object ClientListForm: TClientListForm
  Left = 243
  Top = 211
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1056#1072#1073#1086#1090#1072' '#1089' '#1082#1083#1080#1077#1085#1090#1072#1084#1080
  ClientHeight = 501
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
    Left = 144
    Top = 440
    Width = 105
    Height = 25
    Caption = #1059#1076#1072#1083#1080#1090#1100
    TabOrder = 3
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 256
    Top = 440
    Width = 121
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1082#1083#1080#1077#1085#1090#1072
    TabOrder = 4
    OnClick = Button4Click
  end
  object Panel2: TPanel
    Left = 320
    Top = 0
    Width = 569
    Height = 41
    TabOrder = 5
    object Label10: TLabel
      Left = 376
      Top = 8
      Width = 3
      Height = 13
    end
    object Label11: TLabel
      Left = 8
      Top = 8
      Width = 66
      Height = 13
      Caption = #1050#1091#1088#1089#1099' '#1074#1072#1083#1102#1090
    end
    object DateTimePicker1: TDateTimePicker
      Left = 96
      Top = 8
      Width = 129
      Height = 21
      Date = 43264.630972581020000000
      Time = 43264.630972581020000000
      MinDate = 32874.000000000000000000
      TabOrder = 0
      OnCloseUp = DateTimePicker1CloseUp
    end
    object ComboBox1: TComboBox
      Left = 232
      Top = 8
      Width = 129
      Height = 21
      ItemHeight = 13
      ItemIndex = 1
      TabOrder = 1
      Text = #1044#1086#1083#1083#1072#1088#1099' '#1057#1064#1040
      OnChange = ComboBox1Change
      Items.Strings = (
        #1056#1086#1089#1089'. '#1088#1091#1073#1083#1080
        #1044#1086#1083#1083#1072#1088#1099' '#1057#1064#1040
        #1045#1074#1088#1086)
    end
  end
  object Button5: TButton
    Left = 392
    Top = 440
    Width = 177
    Height = 25
    Caption = #1054#1090#1095#1077#1090' '#1087#1086' '#1080#1079#1084#1077#1085#1085#1099#1084' '#1082#1083#1080#1077#1085#1090#1072#1084
    TabOrder = 6
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 392
    Top = 472
    Width = 177
    Height = 25
    Caption = #1054#1090#1095#1077#1090' '#1087#1086' '#1082#1083#1080#1077#1085#1090#1072#1084
    TabOrder = 7
    OnClick = Button6Click
  end
  object ADODataDriverEh1: TADODataDriverEh
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=clients.mdb;Persist' +
      ' Security Info=False'
    DynaSQLParams.Options = []
    MacroVars.Macros = <>
    SpecParams.Strings = (
      'AUTO_INCREMENT_FIELD=id')
    SelectCommand.CommandText.Strings = (
      'select * from  [clients '#1047#1072#1087#1088#1086#1089'1]')
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
      '  Phone2 = :Phone2,'
      '  ChangeDate = Date()'
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
    Left = 760
    Top = 424
  end
  object ADOConnectionProviderEh1: TADOConnectionProviderEh
    InlineConnection.Provider = 'Microsoft.ACE.OLEDB.12.0'
    ServerType = 'MSAccess'
    InlineConnectionBeforeConnect = ADOConnectionProviderEh1InlineConnectionBeforeConnect
    Left = 800
    Top = 424
  end
  object DataSource1: TDataSource
    DataSet = MemTableEh1
    Left = 832
    Top = 424
  end
  object MemTableEh1: TMemTableEh
    Active = True
    AutoCalcFields = False
    FieldDefs = <
      item
        Name = 'id'
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
        Name = 'BirthDate'
        DataType = ftDateTime
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
    Left = 720
    Top = 424
  end
  object IdHTTP1: TIdHTTP
    MaxLineAction = maException
    ReadTimeout = 0
    AllowCookies = True
    HandleRedirects = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = 0
    Request.ContentRangeStart = 0
    Request.ContentType = 'text/html'
    Request.Accept = 'text/html, */*'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    HTTPOptions = [hoForceEncodeParams]
    Left = 864
    Top = 424
  end
  object frxReport1: TfrxReport
    Version = '6.0.10'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = #1055#1086' '#1091#1084#1086#1083#1095#1072#1085#1080#1102
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43265.493419594910000000
    ReportOptions.LastChange = 43266.833794710600000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure frxReport1OnRunDialogs(var Result: Boolean);'
      'begin'
      '  // '#1048#1085#1080#1094#1080#1072#1083#1080#1079#1072#1094#1080#1103' '#1076#1072#1090
      
        '  DateEdit1.Date:=EncodeDate(YearOf(Date),MonthOf(Date),1);     ' +
        '                                                                ' +
        ' '
      '  DateEdit2.Date:=Date;'
      '  Result:=DialogPage1.ShowModal=mrOK;        '
      'end;'
      ''
      'begin'
      ''
      'end.')
    OnRunDialogs = 'frxReport1OnRunDialogs'
    Left = 720
    Top = 456
    Datasets = <
      item
        DataSet = frxReport1.ADOQuery1
        DataSetName = 'ADOQuery1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
      object ADOQuery1: TfrxADOQuery
        UserName = 'ADOQuery1'
        CloseDataSource = True
        BCDToCurrency = False
        IgnoreDupParams = False
        Params = <
          item
            Name = 'p1'
            DataType = ftDate
            Expression = 'DateEdit1.Date'
          end
          item
            Name = 'p2'
            DataType = ftDate
            Expression = 'DateEdit2.Date'
          end>
        SQL.Strings = (
          
            'SELECT C.FirstName, C.Surname, C.ChangeDate                     ' +
            '        '
          'FROM'
          '    Clients C'
          'WHERE C.ChangeDate between :p1 and :p2'
          'ORDER BY C.ChangeDate                             ')
        SQLSchema = 
          'eAGLdkksSXRKLE6N5eUKDvSxNTSwMDM0NbCwMOTlig5JTMpJLQbKONs652Sm5pUU' +
          '6xiagpCRgQGQMgAqcS/KTAEqMLB1yywqLvFLzE3VgSl11jHUMQBDXi5D2+DSojxc' +
          'stE+mXnZIHsA6fYm7A=='
        CommandTimeout = 30
        LockType = ltReadOnly
        pLeft = 32
        pTop = 16
        Parameters = <
          item
            Name = 'p1'
            DataType = ftDate
            Expression = 'DateEdit1.Date'
          end
          item
            Name = 'p2'
            DataType = ftDate
            Expression = 'DateEdit2.Date'
          end>
      end
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 177.637910000000000000
        Width = 718.110700000000000000
        DataSet = frxReport1.ADOQuery1
        DataSetName = 'ADOQuery1'
        RowCount = 0
        object Memo6: TfrxMemoView
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[ADOQuery1."FirstName"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 215.433210000000000000
          Width = 370.393940000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[ADOQuery1."Surname"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 585.827150000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[ADOQuery1."ChangeDate"]')
          ParentFont = False
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 98.267780000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Left = 30.236240000000000000
          Top = 18.897650000000000000
          Width = 347.716760000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8 = (
            
              #1056#1115#1057#8218#1057#8225#1056#181#1057#8218' '#1056#1111#1056#1109' '#1056#1108#1056#187#1056#1105#1056#181#1056#1029#1057#8218#1056#176#1056#1112', '#1056#1105#1056#183#1056#1112#1056#181#1056#1029#1056#1029#1057#8249#1056#1112' '#1056#183#1056#176' '#1056#1111#1056#181#1057#1026#1056#1105 +
              #1056#1109#1056#1169' '#1057#1027)
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 377.953000000000000000
          Top = 18.897650000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = 'dd mmmm yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8 = (
            '[DateEdit1.Date]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 491.338900000000000000
          Top = 18.897650000000000000
          Width = 22.677180000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8 = (
            #1056#1111#1056#1109)
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 514.016080000000000000
          Top = 18.897650000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = 'dd mmmm yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8 = (
            '[DateEdit2.Date]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Top = 68.031540000000010000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 2.000000000000000000
          Memo.UTF8 = (
            #1056#152#1056#1112#1057#1039)
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 215.433210000000000000
          Top = 68.031540000000010000
          Width = 370.393940000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 2.000000000000000000
          Memo.UTF8 = (
            #1056#164#1056#176#1056#1112#1056#1105#1056#187#1056#1105#1057#1039)
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 585.827150000000000000
          Top = 68.031540000000010000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 2.000000000000000000
          Memo.UTF8 = (
            #1056#8221#1056#176#1057#8218#1056#176' '#1056#1105#1056#183#1056#1112#1056#181#1056#1029#1056#181#1056#1029#1056#1105#1057#1039)
          ParentFont = False
        end
      end
    end
    object DialogPage1: TfrxDialogPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      BorderStyle = bsDialog
      DoubleBuffered = False
      Height = 223.000000000000000000
      ClientHeight = 189.000000000000000000
      Left = 392.000000000000000000
      Top = 238.000000000000000000
      Width = 387.000000000000000000
      Scaled = True
      ClientWidth = 379.000000000000000000
      object Label1: TfrxLabelControl
        Left = 120.000000000000000000
        Top = 48.000000000000000000
        Width = 131.000000000000000000
        Height = 16.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ShowHint = True
        Caption = #1042#1074#1077#1076#1080#1090#1077' '#1076#1080#1072#1087#1072#1079#1086#1085' '#1076#1072#1090
        Color = clBtnFace
      end
      object Label2: TfrxLabelControl
        Left = 36.000000000000000000
        Top = 12.000000000000000000
        Width = 289.000000000000000000
        Height = 16.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ShowHint = True
        Caption = #1054#1090#1095#1077#1090' '#1087#1086' '#1082#1083#1080#1077#1085#1090#1072#1084', '#1080#1079#1084#1077#1085#1077#1085#1085#1099#1093' '#1079#1072' '#1087#1077#1088#1080#1086#1076
        Color = clBtnFace
      end
      object Button1: TfrxButtonControl
        Left = 76.000000000000000000
        Top = 132.000000000000000000
        Width = 75.000000000000000000
        Height = 25.000000000000000000
        ShowHint = True
        Caption = #1054#1090#1095#1077#1090
        Default = True
        ModalResult = 1
      end
      object Button2: TfrxButtonControl
        Left = 244.000000000000000000
        Top = 132.000000000000000000
        Width = 75.000000000000000000
        Height = 25.000000000000000000
        ShowHint = True
        Caption = #1054#1090#1084#1077#1085#1072
        ModalResult = 2
      end
      object DateEdit1: TfrxDateEditControl
        Left = 44.000000000000000000
        Top = 72.000000000000000000
        Width = 133.000000000000000000
        Height = 21.000000000000000000
        ShowHint = True
        Color = clWindow
        Date = 43265.000000000000000000
        Time = 43265.000000000000000000
        WeekNumbers = False
      end
      object DateEdit2: TfrxDateEditControl
        Left = 224.000000000000000000
        Top = 72.000000000000000000
        Width = 129.000000000000000000
        Height = 21.000000000000000000
        ShowHint = True
        Color = clWindow
        Date = 43265.000000000000000000
        Time = 43265.000000000000000000
        WeekNumbers = False
      end
      object Label3: TfrxLabelControl
        Left = 28.000000000000000000
        Top = 76.000000000000000000
        Width = 5.000000000000000000
        Height = 13.000000000000000000
        ShowHint = True
        Caption = 'c'
        Color = clBtnFace
      end
      object Label4: TfrxLabelControl
        Left = 192.000000000000000000
        Top = 76.000000000000000000
        Width = 12.000000000000000000
        Height = 13.000000000000000000
        ShowHint = True
        Caption = #1087#1086
        Color = clBtnFace
      end
    end
  end
  object frxDialogControls1: TfrxDialogControls
    Left = 800
    Top = 456
  end
  object frxADOComponents1: TfrxADOComponents
    DefaultDatabase = ADOConnection1
    Left = 832
    Top = 456
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=clients.mdb;Persist' +
      ' Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 864
    Top = 456
  end
  object frxReport2: TfrxReport
    Version = '6.0.10'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = #1055#1086' '#1091#1084#1086#1083#1095#1072#1085#1080#1102
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43272.438285405100000000
    ReportOptions.LastChange = 43273.607411354200000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure Button1OnClick(Sender: TfrxComponent);'
      'begin'
      
        '  MasterData1.Visible := Checkbox1.Checked;                     ' +
        '                                                   '
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 760
    Top = 456
    Datasets = <
      item
        DataSet = frxReport2.ADOQuery1
        DataSetName = 'ADOQuery1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
      object ADOQuery1: TfrxADOQuery
        UserName = 'ADOQuery1'
        CloseDataSource = True
        BCDToCurrency = False
        IgnoreDupParams = False
        Params = <>
        SQL.Strings = (
          
            'SELECT Clients.id, Clients.FirstName, Clients.BirthDate, Clients' +
            '.Surname,'
          '       [Clients '#1047#1072#1087#1088#1086#1089'6].NameField,[Clients '#1047#1072#1087#1088#1086#1089'6].Name,'
          
            '       [Clients '#1047#1072#1087#1088#1086#1089'6].group_num,[Clients '#1047#1072#1087#1088#1086#1089'6].num        ' +
            '                      '
          
            'FROM Clients LEFT JOIN [Clients '#1079#1072#1087#1088#1086#1089'6] ON Clients.id = [Client' +
            's '#1079#1072#1087#1088#1086#1089'6].id'
          
            'ORDER BY Clients.id,group_num,num                               ' +
            '    '
          '              '
          '  ')
        CommandTimeout = 30
        LockType = ltReadOnly
        pLeft = 68
        pTop = 44
        Parameters = <>
      end
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 60.472480000000000000
        Top = 16.000000000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Left = 143.622140000000000000
          Width = 427.086890000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1115#1057#8218#1057#8225#1056#181#1057#8218' '#1056#1111#1056#1109' '#1056#1108#1056#187#1056#1105#1056#181#1056#1029#1057#8218#1056#176#1056#1112)
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Top = 22.677180000000000000
          Width = 211.653680000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#152#1056#1112#1057#1039)
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 211.653680000000000000
          Top = 22.677180000000000000
          Width = 302.362400000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#164#1056#176#1056#1112#1056#1105#1056#187#1056#1105#1057#1039)
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 514.016080000000000000
          Top = 22.677180000000000000
          Width = 200.315090000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#8221#1056#176#1057#8218#1056#176' '#1057#1026#1056#1109#1056#182#1056#1169#1056#181#1056#1029#1056#1105#1057#1039)
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 136.000000000000000000
        Width = 718.110700000000000000
        DataSet = frxReport2.ADOQuery1
        DataSetName = 'ADOQuery1'
        RowCount = 0
        object ADOQuery1FirstName: TfrxMemoView
          IndexTag = 1
          Left = 215.433210000000000000
          Width = 514.016080000000000000
          Height = 18.897650000000000000
          DataSet = frxReport2.ADOQuery1
          DataSetName = 'ADOQuery1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8 = (
            '[ADOQuery1."name"]')
          ParentFont = False
        end
        object ADOQuery1NameField: TfrxMemoView
          IndexTag = 1
          Left = 3.779530000000000000
          Width = 204.094620000000000000
          Height = 18.897650000000000000
          DataField = 'NameField'
          DataSet = frxReport2.ADOQuery1
          DataSetName = 'ADOQuery1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8 = (
            '[ADOQuery1."NameField"]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 96.000000000000000000
        Width = 718.110700000000000000
        Condition = 'ADOQuery1."id"'
        object ADOQuery1FirstName1: TfrxMemoView
          IndexTag = 1
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          DataField = 'FirstName'
          DataSet = frxReport2.ADOQuery1
          DataSetName = 'ADOQuery1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[ADOQuery1."FirstName"]')
          ParentFont = False
        end
        object ADOQuery1SurName1: TfrxMemoView
          IndexTag = 1
          Left = 215.433210000000000000
          Width = 298.582870000000000000
          Height = 18.897650000000000000
          DataField = 'SurName'
          DataSet = frxReport2.ADOQuery1
          DataSetName = 'ADOQuery1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[ADOQuery1."SurName"]')
          ParentFont = False
        end
        object ADOQuery1BirthDate: TfrxMemoView
          IndexTag = 1
          Left = 514.016080000000000000
          Width = 200.315090000000000000
          Height = 18.897650000000000000
          DataField = 'BirthDate'
          DataSet = frxReport2.ADOQuery1
          DataSetName = 'ADOQuery1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[ADOQuery1."BirthDate"]')
          ParentFont = False
        end
      end
    end
    object DialogPage1: TfrxDialogPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      BorderStyle = bsDialog
      DoubleBuffered = False
      Height = 200.000000000000000000
      ClientHeight = 166.000000000000000000
      Left = 446.000000000000000000
      Top = 181.000000000000000000
      Width = 300.000000000000000000
      Scaled = True
      ClientWidth = 292.000000000000000000
      object Button1: TfrxButtonControl
        Left = 44.000000000000000000
        Top = 108.000000000000000000
        Width = 75.000000000000000000
        Height = 25.000000000000000000
        ShowHint = True
        Caption = #1054#1090#1095#1077#1090
        ModalResult = 1
        OnClick = 'Button1OnClick'
      end
      object Button2: TfrxButtonControl
        Left = 172.000000000000000000
        Top = 108.000000000000000000
        Width = 75.000000000000000000
        Height = 25.000000000000000000
        ShowHint = True
        Caption = #1054#1090#1084#1077#1085#1072
        ModalResult = 2
      end
      object Label1: TfrxLabelControl
        Left = 80.000000000000000000
        Top = 28.000000000000000000
        Width = 112.000000000000000000
        Height = 16.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ShowHint = True
        Caption = #1054#1090#1095#1077#1090' '#1087#1086' '#1082#1083#1080#1077#1085#1090#1072#1084
        Color = clBtnFace
      end
      object CheckBox1: TfrxCheckBoxControl
        Left = 64.000000000000000000
        Top = 60.000000000000000000
        Width = 149.000000000000000000
        Height = 17.000000000000000000
        ShowHint = True
        Caption = #1055#1086#1076#1088#1086#1073#1085#1099#1081' '#1086#1090#1095#1077#1090
        Color = clBtnFace
      end
    end
  end
end
