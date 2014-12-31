unit SystemPanel;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TSystemPanel }

  TSystemPanel = class(TForm)
    GroupBox1: TGroupBox;
    LogBox: TListBox;
    procedure FormCreate(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
    procedure Test;
  end; 

var
  SystemPanelForm: TSystemPanel;

implementation

{$R *.lfm}

{ TSystemPanel }

procedure TSystemPanel.FormCreate(Sender: TObject);
begin
  { Size per Hand setzen. Laz FreeBSD setzt es sonst
    in der GUI zurück
  }
  self.Height := 664;
  self.Width := 675;
end;

procedure TSystemPanel.Test();
begin
  LogBox.Items.Add('Blubb');

end;

end.

