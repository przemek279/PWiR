with Ada.Text_IO,Ada.Numerics.Float_Random;
use Ada.Text_IO,Ada.Numerics.Float_Random;

package body lab2pack is

procedure Show(Tab: Wektor) is
    begin
      for I in Tab'Range loop
        Put_Line(Tab(I)'Img);
      end loop;
    end;

  procedure Put_Rand(Tab: in out Wektor) is
    Gen: Generator;
    begin
      for I in Tab'Range loop
        Tab(I):= Random(Gen);
      end loop;
    end;

  function Is_Asc(Tab: Wektor) return Boolean is (for all X in Tab'First..(Tab'Last-1) => Tab(X) <= Tab(X-1));
  
  procedure Sort(Tab: in out Wektor) is
    Swap: Float;
    begin
      for I in Tab'Range loop
        for J in 1..(Tab'Last-I) loop
          if Tab(J) > Tab(J+1) then
            Swap := Tab(J+1);
            Tab(J+1) := Tab(J);
            Tab(J) := Swap; 
          end if;
        end loop;
      end loop;
    end Sort;

end lab2pack;