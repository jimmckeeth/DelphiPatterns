unit Pattern;

interface

uses Classes, SysUtils;

type

  IObserver = interface
  ['{A3208B98-3F48-40C6-9986-43B6CB8F4A7E}']
    procedure Update(Subject: TObject);
  end;

  ISubject = interface
  ['{CA063853-73A8-4AFE-8CAA-50600996ADEB}']
    procedure Attach(Observer: IObserver);
    procedure Detach(Observer: IObserver);
    procedure Notify;
  end;

  TStock = class(TInterfacedObject, ISubject)
  private
    FSymbol: string;
    FPrice: Double;
    FInvestors: TInterfaceList;
    function ReadSymbol: string;
    function ReadPrice: Double;
    procedure SetPrice(value: Double);
  public
    constructor Create(symbol: string; price: Double);
    destructor Destroy; override;
    procedure Attach(Observer: IObserver);
    procedure Detach(Observer: IObserver);
    procedure Notify;
    property Symbol: string read ReadSymbol;
    property Price: Double read ReadPrice write SetPrice;
  end;

  TInvestor = class(TINterfacedObject, IObserver)
  private
    FName: string;
  public
    constructor Create(name: string);
    procedure Update(Subject: TObject);
  end;

implementation

{ TStock }

procedure TStock.Attach(Observer: IObserver);
begin
  if FInvestors = nil then
    FInvestors := TInterfaceList.Create;
  if FInvestors.IndexOf(Observer) < 0 then
    FInvestors.Add(Observer);
end;

constructor TStock.Create(symbol: string; price: Double);
begin
  FSymbol := symbol;
  FPrice := price;
end;

destructor TStock.Destroy;
begin
  FInvestors.Free;
  inherited;
end;

procedure TStock.Detach(Observer: IObserver);
begin
  if FInvestors <> nil then
  begin
    FInvestors.Remove(Observer);
    if FInvestors.Count = 0 then
    begin
      FInvestors.Free;
      FInvestors := nil;
    end;
  end;
end;

procedure TStock.Notify;
var
  i: Integer;
begin
  if FInvestors <> nil then
    for i := 0 to Pred(FInvestors.Count) do
      IObserver(FInvestors[i]).Update(Self);
end;

function TStock.ReadPrice: Double;
begin
  Result := FPrice;
end;

function TStock.ReadSymbol: string;
begin
  Result := FSymbol
end;

procedure TStock.SetPrice(value: Double);
begin
  if value <> FPrice then begin
    FPrice := value;
    Notify;    
  end;
end;

{ TInvestor }

constructor TInvestor.Create(name: string);
begin
  FName := name;
end;

procedure TInvestor.Update(Subject: TObject);
begin
  WriteLn(Format('Notified %s of %s change to %g', [FName, TStock(Subject).Symbol, TStock(Subject).Price]));
end;

end.
