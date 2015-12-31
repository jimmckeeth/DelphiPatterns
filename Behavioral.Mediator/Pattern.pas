unit Pattern;

interface

type

  IMediator = interface
  ['{930530D1-A22C-4F46-8B06-066ED153C28C}']
    procedure Send(mess: string; colleague: TObject);
  end;

  TColleague = class
  protected
    FMediator: IMediator;
  public
    constructor Create(mediator: IMediator);
  end;

  TConcreteColleague1 = class(TColleague)
  public
    constructor Create(mediator: IMediator);
    procedure Send(mess: string);
    procedure Notify(mess: string);
  end;

  TConcreteColleague2 = class(TColleague)
  public
    constructor Create(mediator: IMediator);
    procedure Send(mess: string);
    procedure Notify(mess: string);
  end;

  TConcreteMediator = class(TInterfacedObject, IMediator)
  public
    FColleague1: TConcreteColleague1;
    FColleague2: TConcreteColleague2;
    procedure Send(mess: string; colleague: TObject);
  end;

implementation

{ TColleagueBase }

constructor TColleague.Create(mediator: IMediator);
begin
  FMediator := mediator;
end;

{ TConcreteColleague1 }

constructor TConcreteColleague1.Create(mediator: IMediator);
begin
  inherited Create(mediator);
end;

procedure TConcreteColleague1.Notify(mess: string);
begin
  WriteLn('Colleague1 gets message:' + mess);
end;

procedure TConcreteColleague1.Send(mess: string);
begin
  FMediator.Send(mess, Self);
end;

{ TConcreteColleague2 }

constructor TConcreteColleague2.Create(mediator: IMediator);
begin
  inherited Create(mediator);
end;

procedure TConcreteColleague2.Notify(mess: string);
begin
  WriteLn('Colleague2 gets message:' + mess);
end;

procedure TConcreteColleague2.Send(mess: string);
begin
  FMediator.Send(mess, Self);
end;

{ TConcreteMediator }

procedure TConcreteMediator.Send(mess: string; colleague: TObject);
begin
  if colleague = FColleague2 then
    FColleague1.Notify(mess)
  else
    FColleague2.Notify(mess);
end;

end.
