unit TempPanel;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TTempPanel }

  TTempPanel = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure Label1Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end; 

var
  TempPanelForm: TTempPanel;

implementation

{$R *.lfm}

{ TTempPanel }

procedure TTempPanel.Label1Click(Sender: TObject);
begin

end;

procedure TTempPanel.FormCreate(Sender: TObject);
begin
  { Size per Hand setzen. Laz FreeBSD setzt es sonst
    in der GUI zurück
  }
  self.Height := 664;
  self.Width := 675;
end;

end.

