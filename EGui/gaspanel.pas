unit GasPanel;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TGasPanel }

  TGasPanel = class(TForm)
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end; 

var
  GasPanelForm: TGasPanel;

implementation

{$R *.lfm}

{ TGasPanel }

procedure TGasPanel.FormCreate(Sender: TObject);
begin
  { Size per Hand setzen. Laz FreeBSD setzt es sonst
    in der GUI zurück
  }
  self.Height := 664;
  self.Width := 675;
end;

end.

