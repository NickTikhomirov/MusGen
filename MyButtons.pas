unit MyButtons;

interface

uses graphabc;

type
  IButton = interface
    function isHovered(xy:point):boolean;
    procedure draw;
  end;
  
  RectangleButton = class(IButton)
    public
      corner_leftUp, corner_rightDown : Point;
      constructor Create(leftup, rightdown: Point);
      constructor Create(leftup: Point; width, height:integer);
      function isHovered(xy:point):boolean;
      procedure draw;
  end;
  
  ButtonManager = class
  public
    ButtonsOnScreen: array of IButton;
  end;


implementation

function RectangleButton.isHovered(xy:point): boolean;
begin
  result := false;
  if corner_leftUp.x > xy.x then
    if corner_rightDown.x < xy.x then
      if corner_leftUp.y < xy.y then
        if corner_rightDown.y > xy.y then
          result := true;
end;

procedure RectangleButton.draw;
begin

end;


constructor RectangleButton.Create(leftup, rightdown: Point);
begin
  self.corner_leftUp := leftup;
  self.corner_rightDown := rightdown;
end;

constructor RectangleButton.Create(leftup: Point; width, height:integer);
begin
  self.corner_leftUp := leftup;
  self.corner_rightDown := new Point(leftup.x + width, leftup.y + height);
end;



end.