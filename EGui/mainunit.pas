unit mainunit;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs,
  StdCtrls, ExtCtrls, ComCtrls, LResources, TempPanel, TankPanel, GasPanel,
  WaterPanel, PowerPanel, SystemPanel;

type
  ScreenType = (TempScreen, TankScreen, GasScreen, WaterScreen, PowerScreen,
                SystemScreen);

  { TEGuiRoot }

  TEGuiRoot = class(TForm)
    Button1: TButton;
    SoftkeyBtn1: TButton;
    SoftkeyBtn7: TButton;
    SoftkeyBtn2: TButton;
    SoftkeyBtn3: TButton;
    SoftkeyBtn4: TButton;
    SoftkeyBtn5: TButton;
    SoftkeyBtn6: TButton;
    Label1: TLabel;
    MainStatusBar: TStatusBar;
    TankLID1: TShape;
    TankLID2: TShape;
    TankLID3: TShape;
    TankLID4: TShape;
    TankLID5: TShape;
    TankLID6: TShape;
    TankLID7: TShape;
    MainPanel: TPanel;
    TempLID: TShape;
    TankLID: TShape;
    GasLID: TShape;
    Timer1: TTimer;
    WaterLID: TShape;
    PowerLID: TShape;
    SystemLID: TShape;
    ExitLID: TShape;
    TempScreenBtn: TButton;
    TanksScreenBtn: TButton;
    GasMeasureScreenBtn: TButton;
    WaterMeasureScreenBtn: TButton;
    PowerMeasureScreenBtn: TButton;
    SystemScreenBtn: TButton;
    DebugExit: TButton;

    { Panel Objects }
    TempSlide : TTempPanel;
    TankSlide : TTankPanel;
    GasSlide : TGasPanel;
    WaterSlide : TWaterPanel;
    PowerSlide : TPowerPanel;
    SystemSlide : TSystemPanel;

    procedure Button1Click(Sender: TObject);
    procedure DebugExitClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure GasMeasureScreenBtnClick(Sender: TObject);
    procedure PowerMeasureScreenBtnClick(Sender: TObject);
    procedure SystemScreenBtnClick(Sender: TObject);
    procedure ChangeScreen(NewScreen: ScreenType);
    procedure TanksScreenBtnClick(Sender: TObject);
    procedure TempScreenBtnClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure WaterMeasureScreenBtnClick(Sender: TObject);


  private
    { private declarations }
  public
    { public declarations }
    Class Constructor create;
  end; 

var
  EGuiRoot: TEGuiRoot;
  CurrentScreen: ScreenType;

implementation

{$R *.lfm}

Class Constructor TEGuiRoot.create;
begin

end;

procedure TEGuiRoot.ChangeScreen(NewScreen: ScreenType);
begin
  { Deactivate old screen }
  case CurrentScreen of
  TempScreen:
    begin
      TempSlide.Hide;
      TempLID.Brush.Color:= clWhite;
    end;

  TankScreen:
    begin
      TankSlide.Hide;
      TankLID.Brush.Color:= clWhite;
    end;

  GasScreen:
    begin
      GasSlide.Hide;
      GasLID.Brush.Color:= clWhite;
    end;

  WaterScreen:
    begin
      WaterSlide.Hide;
      WaterLID.Brush.Color:= clWhite;
    end;

  PowerScreen:
    begin
      PowerSlide.Hide;
      PowerLID.Brush.Color:= clWhite;
    end;

  SystemScreen:
    begin
      SystemSlide.Hide;
      SystemLID.Brush.Color:= clWhite;
    end;
  end;

  { Activate new Screen }
  case NewScreen of
  TempScreen:
    begin
      TempSlide.Show;
      TempLID.Brush.Color:= clLime;
    end;

  TankScreen:
    begin
      TankSlide.Show;
      TankLID.Brush.Color:= clLime;
    end;

  GasScreen:
    begin
      GasSlide.Show;
      GasLID.Brush.Color:= clLime;
    end;

  WaterScreen:
    begin
      WaterSlide.Show;
      WaterLID.Brush.Color:= clLime;
    end;

  PowerScreen:
    begin
      PowerSlide.Show;
      PowerLID.Brush.Color:= clLime;
    end;

  SystemScreen:
    begin
      SystemSlide.Show;
      SystemLID.Brush.Color:= clLime;
    end;
  end;

  { Save new Screen State }
  CurrentScreen := NewScreen;
end;

procedure TEGuiRoot.TanksScreenBtnClick(Sender: TObject);
begin
  ChangeScreen(TankScreen);
end;

procedure TEGuiRoot.TempScreenBtnClick(Sender: TObject);
begin
  ChangeScreen(TempScreen);
end;

procedure TEGuiRoot.Timer1Timer(Sender: TObject);
begin
  SystemPanel.SystemPanelForm.Test;

end;

procedure TEGuiRoot.WaterMeasureScreenBtnClick(Sender: TObject);
begin
  ChangeScreen(WaterScreen);
end;

{ TEGuiRoot }

procedure TEGuiRoot.DebugExitClick(Sender: TObject);
begin
  Close;
end;

procedure TEGuiRoot.Button1Click(Sender: TObject);
begin
  SystemSlide.Test;


end;

procedure TEGuiRoot.FormCreate(Sender: TObject);
var
  YY, MM, DD: Word;
begin
  { Temperature Panel }
  TempSlide := TTempPanel.Create(MainPanel);
  TempSlide.Parent := MainPanel;
  TempSlide.Show;
  TempSlide.Left := 0;
  TempSlide.Top := 0;

  { Tank Panel }
  TankSlide := TTankPanel.Create(MainPanel);
  TankSlide.Parent := MainPanel;
  TankSlide.Hide;
  TankSlide.Left := 0;
  TankSlide.Top := 0;

  { Gas Panel }
  GasSlide := TGasPanel.Create(MainPanel);
  GasSlide.Parent := MainPanel;
  GasSlide.Hide;
  GasSlide.Left := 0;
  GasSlide.Top := 0;

  { Water Panel }
  WaterSlide := TWaterPanel.Create(MainPanel);
  WaterSlide.Parent := MainPanel;
  WaterSlide.Hide;
  WaterSlide.Left := 0;
  WaterSlide.Top := 0;

  { Power Panel }
  PowerSlide := TPowerPanel.Create(MainPanel);
  PowerSlide.Parent := MainPanel;
  PowerSlide.Hide;
  PowerSlide.Left := 0;
  PowerSlide.Top := 0;

  { System Panel }
  SystemSlide := TSystemPanel.Create(MainPanel);
  SystemSlide.Parent := MainPanel;
  SystemSlide.Hide;
  SystemSlide.Left := 0;
  SystemSlide.Top := 0;

  { Date holen }
  DecodeDate(Date, YY, MM, DD);
  MainStatusBar.Panels.Items[2].Text:= Format('%d.%d.%d', [dd, mm, yy]);

  { Fenstergrösse setzen }
    { Size per Hand setzen. Laz FreeBSD setzt es sonst
    in der GUI zurück
  }
  self.Height := 768;
  self.Width := 1024;
end;


procedure TEGuiRoot.GasMeasureScreenBtnClick(Sender: TObject);
begin
  ChangeScreen(GasScreen);
end;

procedure TEGuiRoot.PowerMeasureScreenBtnClick(Sender: TObject);
begin
  ChangeScreen(PowerScreen);
end;

procedure TEGuiRoot.SystemScreenBtnClick(Sender: TObject);
begin
  ChangeScreen(SystemScreen);
end;

end.

