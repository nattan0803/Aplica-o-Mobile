unit UnitLayout;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.TabControl,
  FMX.Objects, FMX.Layouts, FMX.Effects, FMX.Controls.Presentation, FMX.Edit,
  FMX.StdCtrls, System.Actions, FMX.ActnList, FMX.Gestures;

type
  TForm2 = class(TForm)
    TabControl1: TTabControl;
    TabItem1: TTabItem;
    TabItem2: TTabItem;
    RtgPrimario: TRectangle;
    LayoutImg: TLayout;
    ImgLogo: TImage;
    StyleBook1: TStyleBook;
    LayoutEdits: TLayout;
    RtgEdits: TRectangle;
    Layout1: TLayout;
    RctCurvo: TRectangle;
    Line1: TLine;
    LytEdits: TLayout;
    RoundRect2: TRectangle;
    edtCNPJ: TEdit;
    RoundRect3: TRectangle;
    Edit2: TEdit;
    LayoutLogin: TLayout;
    RoundRect1: TRoundRect;
    lblLogin: TLabel;
    GestureManager1: TGestureManager;
    ActionList1: TActionList;
    ActUp: TAction;
    ActDown: TAction;
    procedure FormShow(Sender: TObject);
    procedure ActUpExecute(Sender: TObject);
    procedure ActDownExecute(Sender: TObject);
    procedure RctCurvoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.fmx}

procedure TForm2.ActDownExecute(Sender: TObject);
begin
  LayoutEdits.AnimateFloat('Margins.top', -174,0.2, TAnimationType.InOut, TInterpolationType.Circular);
  LayoutEdits.Tag := 1;
end;

procedure TForm2.ActUpExecute(Sender: TObject);
begin
  LayoutEdits.AnimateFloat('Margins.top', 0,0.2, TAnimationType.InOut, TInterpolationType.Circular);
  LayoutEdits.Tag := 0;
end;

procedure TForm2.FormShow(Sender: TObject);
begin
  TabControl1.TabPosition := TTabPosition.None;
end;


procedure TForm2.RctCurvoClick(Sender: TObject);
begin
  if LayoutEdits.Tag = 0  then
    ActDown.Execute
    else
    ActUp.Execute;
end;

end.
