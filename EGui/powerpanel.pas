unit PowerPanel;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TPowerPanel }

  TPowerPanel = class(TForm)
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end; 

var
  PowerPanelForm: TPowerPanel;

implementation

{$R *.lfm}

{ TPowerPanel }

procedure TPowerPanel.FormCreate(Sender: TObject);
begin
  { Size per Hand setzen. Laz FreeBSD setzt es sonst
    in der GUI zurück
  }
  self.Height := 664;
  self.Width := 675;
end;

end.

