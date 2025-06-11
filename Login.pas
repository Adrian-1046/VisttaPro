unit Login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, Inicio;

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
    procedure btnEntrarClick(Sender: TObject);
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
  // Configura o Label1 como invisível inicialmente
  Label1.Visible := False;

  if FileExists('./Logo.png') then
    imgLogo.picture.LoadFromFile('./Logo.png');
end;

procedure TfmLogin.btnEntrarClick(Sender: TObject);
begin
  // Verifica se o login e senha correspondem aos valores fixos
  if (edtLogin.Text = 'ADMIN') and (edtSenha.Text = '123') then
  begin
    // Esconde a mensagem de erro se estiver visível
    Label1.Visible := False;

    // Cria e mostra o formulário Inicio
    fmInicio := TfmInicio.Create(Application);
    fmInicio.Show;

    // Esconde o formulário de login
    Hide;
  end
  else
  begin
    // Mostra a mensagem de erro no Label1
    Label1.Caption := 'Login ou senha incorretos!';
    Label1.Visible := True;

    // Limpa os campos e coloca o foco no edtLogin
    edtLogin.Text := '';
    edtSenha.Text := '';
    edtLogin.SetFocus;
  end;
end;

end.
