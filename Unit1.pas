unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection;

type
  TForm1 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    btn1: TButton;
    con: TZConnection;
    zqry: TZQuery;
    ds: TDataSource;
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  username : string;
  password : string;
  level : string;

implementation

{$R *.dfm}

procedure TForm1.btn1Click(Sender: TObject);
begin
username := edt1.Text;
password := edt2.Text;

  zqry := TZQuery.Create(nil);
  try
    zqry.Connection := con;
    zqry.SQL.Text := 'SELECT level FROM tbl_login WHERE username = :username AND password = :password';
    zqry.ParamByName('username').AsString := username;
    zqry.ParamByName('password').AsString := password;
    zqry.Open;

    if not zqry.IsEmpty then
    begin
      level := zqry.FieldByName('level').AsString;
      if level = 'admin' then
      begin
        // Pengguna berhasil login sebagai admin
        ShowMessage('Admin login successful');
        Form2.Show;
      end;
    end
    else
    begin
      // Informasi login tidak valid
      ShowMessage('Invalid username or password');
    end;
  finally
    zqry.Free;
  end;
end;
end;

end.
