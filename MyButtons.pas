unit MyButtons;

interface

uses graphabc;

type
  IButton = interface
  public
    function isHovered(xy:point):boolean;
  end;


implementation

end.