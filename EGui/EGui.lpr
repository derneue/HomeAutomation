program EGui;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, tachartlazaruspkg, mainunit, testunit, testunit2, TempPanel, TankPanel,
  GasPanel, WaterPanel, PowerPanel, SystemPanel
  { you can add units after this };

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TEGuiRoot, EGuiRoot);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TTempPanel, TempPanelForm);
  Application.CreateForm(TTankPanel, TankPanelForm);
  Application.CreateForm(TGasPanel, GasPanelForm);
  Application.CreateForm(TWaterPanel, WaterPanelForm);
  Application.CreateForm(TPowerPanel, PowerPanelForm);
  Application.CreateForm(TSystemPanel, SystemPanelForm);
  Application.Run;
end.

