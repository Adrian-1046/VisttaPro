unit CadUsuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFmCadUsuario = class(TForm)
    Label1: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmCadUsuario: TFmCadUsuario;

implementation

{$R *.dfm}

procedure TFmCadUsuario.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  FmCadUsuario := nil;
end;

end.
