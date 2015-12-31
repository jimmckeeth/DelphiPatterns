unit Pattern;

interface

uses SysUtils;

type

  TPurchase = class
  public
    Number: integer;
    Amount: Double;
    Purpose: string;
    constructor Create(num: integer; am: Double; pur: string);
  end;

  IApprover = interface
  ['{3ACA3967-FFCF-48A1-AC45-9A9B98A8DD96}']
    procedure SetSuccessor(successor: IApprover);
    procedure ProcessRequest(purchase: TPurchase);
  end;

  TApprover = class(TInterfacedObject, IApprover)
  protected
    FSuccessor: IApprover;
  public
    procedure SetSuccessor(successor: IApprover);
    procedure ProcessRequest(purchase: TPurchase); virtual; abstract;
  end;

  TDirector = class(TApprover)
    procedure ProcessRequest(purchase: TPurchase); override;
  end;

  TVicePresident = class(TApprover)
    procedure ProcessRequest(purchase: TPurchase); override;
  end;

  TPresident = class(TApprover)
    procedure ProcessRequest(purchase: TPurchase); override;
  end;

implementation

{ TApprover }

procedure TApprover.SetSuccessor(successor: IApprover);
begin
  FSuccessor := successor;
end;

{ TDirector }

procedure TDirector.ProcessRequest(purchase: TPurchase);
begin
  if purchase.Amount < 10000.0 then
    WriteLn(Format('Director approved request # %d', [purchase.Number]))
  else if FSuccessor <> nil then
    FSuccessor.ProcessRequest(purchase);
end;

{ TVicePresident }

procedure TVicePresident.ProcessRequest(purchase: TPurchase);
begin
  if purchase.Amount < 25000.0 then
    WriteLn(Format('VicePresident approved request # %d', [purchase.Number]))
  else if FSuccessor <> nil then
    FSuccessor.ProcessRequest(purchase);
end;

{ TPresident }

procedure TPresident.ProcessRequest(purchase: TPurchase);
begin
  if purchase.Amount < 100000.0 then
    WriteLn(Format('President approved request # %d', [purchase.Number]))
  else 
    WriteLn(Format('Request# %d requires an executive meeting!', [purchase.Number]))
end;

{ TPurchase }

constructor TPurchase.Create(num: integer; am: Double; pur: string);
begin
  Number := num;
  Amount := am;
  Purpose := pur;
end;

end.
