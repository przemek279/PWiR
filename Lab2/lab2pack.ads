package lab2pack is

type Wektor is array (Integer range <>) of Float;
procedure Show(Tab: Wektor);
procedure Put_Rand(Tab: in out Wektor);
function Is_Asc(Tab: Wektor) return Boolean;
procedure Sort(Tab: in out Wektor) ;

end lab2pack;