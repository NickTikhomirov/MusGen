unit Factory;

interface

uses MyButtons;

function getButton(id:integer): IButton;

implementation


function getButton(id:integer):IButton;
begin
  result = new RectangleButton(new Point(0,0),1,1);
end;


end.