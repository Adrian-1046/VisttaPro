unit Inicio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.Buttons, Vcl.ToolWin, Vcl.ActnMan, Vcl.ActnCtrls, System.Actions,
  Vcl.ActnList, CadUsuario, Vcl.PlatformDefaultStyleActnCtrls;

type
  TfmInicio = class(TForm)
    MainMenu1: TMainMenu;
    Sistema1: TMenuItem;
    N0AlterarSenha1: TMenuItem;
    Q_Padrao: TFDQuery;
    DS_Padrao: TDataSource;
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    N0Cadastro1: TMenuItem;
    N0Cadastro2: TMenuItem;
    PageControl1: TPageControl;
    ActionManager1: TActionManager;
    tsInicio: TTabSheet;
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure N0Cadastro2Click(Sender: TObject);
    procedure FecharTab(Sender: TObject);
  private
    { Private declarations }
    procedure CriarAbaFormFilho(FormClass: TFormClass; const Caption: string);
    procedure FecharAba(Sender: TObject; var Action: TCloseAction);
  public
    { Public declarations }
  end;

var
  fmInicio: TfmInicio;

implementation

{$R *.dfm}

uses U_DM;

procedure TfmInicio.Timer1Timer(Sender: TObject);
begin
  // Insere os dados na StatusBar
  Statusbar1.Panels[0].Text := DateTostr(now);
  Statusbar1.Panels[1].Text := TimeTostr(now);
  Statusbar1.Panels[2].Text := 'SEJA BEM VINDO AO SISTEMA VISTTA PRO';
end;

procedure TfmInicio.FormCreate(Sender: TObject);
begin
  // Configura o form como MDI Parent
  FormStyle := fsMDIForm;

  // Configura o PageControl
  PageControl1.Align := alClient;
  PageControl1.TabPosition := tpTop;
  PageControl1.MultiLine := True;
end;

procedure TfmInicio.N0Cadastro2Click(Sender: TObject);
begin
  CriarAbaFormFilho(TFmCadUsuario, 'Cadastro de Usuários');
end;

procedure TfmInicio.CriarAbaFormFilho(FormClass: TFormClass; const Caption: string);
var
  TabSheet: TTabSheet;
  FormFilho: TForm;
  btnClose: TSpeedButton;
  i: Integer;
begin
  // Verifica se o formulário já está aberto
  for i := 0 to PageControl1.PageCount - 1 do
  begin
    if PageControl1.Pages[i].Caption = Caption then
    begin
      PageControl1.ActivePageIndex := i;
      Exit;
    end;
  end;

  // Cria a nova aba
  TabSheet := TTabSheet.Create(PageControl1);
  TabSheet.PageControl := PageControl1;
  TabSheet.Caption := Caption;

  // Adiciona botão de fechar à aba
  btnClose := TSpeedButton.Create(TabSheet);
  btnClose.Parent := TabSheet;
  btnClose.Caption := 'X';
  btnClose.Align := alRight;
  btnClose.Width := 20;
  btnClose.Flat := True;
  btnClose.OnClick := FecharTab;

  // Ajusta o padding da aba para o botão de fechar
  TabSheet.Padding.Right := btnClose.Width + 5;

  // Cria o formulário filho
  FormFilho := FormClass.Create(TabSheet);
  FormFilho.Align := alClient;
  FormFilho.BorderStyle := bsNone;
  FormFilho.Parent := TabSheet;
  FormFilho.OnClose := FecharAba;
  FormFilho.Show;

  // Ativa a aba
  PageControl1.ActivePage := TabSheet;
end;

procedure TfmInicio.FecharAba(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmInicio.FecharTab(Sender: TObject);
var
  TabSheet: TTabSheet;
begin
  TabSheet := (Sender as TSpeedButton).Parent as TTabSheet;
  if Assigned(TabSheet) then
  begin
    // Fecha o formulário filho
    if TabSheet.ControlCount > 1 then
      TForm(TabSheet.Controls[1]).Close;

    // Remove a aba
    TabSheet.Free;
  end;
end;

end.
