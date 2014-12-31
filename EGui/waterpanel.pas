unit WaterPanel;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, TAGraph, Forms, Controls, Graphics, Dialogs,
  StdCtrls;

type

  { TWaterPanel }

  TWaterPanel = class(TForm)
    Chart1: TChart;
    Chart2: TChart;
    Label1: TLabel;
    Label2: TLabel;
  private
    { private declarations }
  public
    { public declarations }
  end; 

var
  WaterPanelForm: TWaterPanel;

implementation

{$R *.lfm}

{ TWaterPanel }


end.

