with Ada.Text_IO, Ada.Calendar, lab2pack;
use Ada.Text_IO, Ada.Calendar, lab2pack;

procedure Main is
  Tab: Wektor(1..10):=(others => 0.0);
  T1, T2: Time;
  D: Duration;
begin
  T1 := Clock;
  Put_Rand(Tab);
  Show(Tab);
  Sort(Tab);
  Put_Line("");
  Show(Tab);
  T2 := Clock;
  D := T2 - T1;
  Put_Line("Program finished in " & D'Img & " [s]");
end Main;
