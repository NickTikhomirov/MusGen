uses graphabc;
uses MyButtons;
uses Factory;
uses Screen;


type
  App = class
  public
    ScreenCurrent : IScreen;
    exitFlag: boolean;
    
    constructor Create;
    begin
      self.ScreenCurrent := new ScreenMainMenu;
    end;
    
    procedure execute;
    begin
      exitFlag := false;
      repeat
        window.Clear(clRed);
        redraw();
      until(exitFlag);
    end;
  end;


//sry im too lazy to write singletones with pascalabc
var AppObject : App;



begin
  lockdrawing();
  window.SetSize(800, 500);
  font.Name := 'Consolas';
  AppObject := new App;
  AppObject.execute();
end.