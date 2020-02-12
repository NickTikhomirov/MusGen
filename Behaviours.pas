unit Behaviours;

interface

type
  IBehaviour = interface
    procedure press;
  end;

  Behaviour = class(IBehaviour)
  public 
    procedure press;
  end;

implementation

procedure Behaviour.press;
begin
  
end;

end.