unit Login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask;

type
  TfmLogin = class(TForm)
    imgLogo: TImage;
    Panel1: TPanel;
    edtLogin: TLabeledEdit;
    edtSenha: TLabeledEdit;
    btnEntrar: TBitBtn;
    CheckBox1: TCheckBox;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmLogin: TfmLogin;

implementation

{$R *.dfm}

procedure TfmLogin.FormCreate(Sender: TObject);
begin
  if FileExists('./Logo.png') then
    imgLogo.picture.LoadFromFile('./Logo.png');
end;

end.
