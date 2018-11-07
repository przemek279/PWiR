with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;

procedure Lab4Lista is

type Element is
  record
    Data : Integer := 0;
    Next : access Element := Null;
  end record;

type Elem_Ptr is access all Element;

procedure Print(List : access Element) is
  L : access Element := List;
begin
  if List = Null then
    Put_Line("List EMPTY!");
  else
    Put_Line("List:");
  end if;
  while L /= Null loop
    Put(L.Data, 4); -- z pakietu Ada.Integer_Text_IO
    New_Line;
    L := L.Next;
  end loop;
end Print;

procedure Insert(List : in out Elem_Ptr; D : in Integer) is
  E : Elem_Ptr := new Element;
begin
  E.Data := D;
  E.Next := List;
  -- lub E.all := (D, List);
  List := E;
end Insert;

-- wstawianie jako funkcja - wersja kr�tka
function Insert(List : access Element; D : in Integer) return access Element is
  ( new Element'(D,List) );

-- do napisania !!
procedure Insert_Sort(List : in out Elem_Ptr; D : in Integer) is
L : access Element := List;
E : Elem_Ptr := new Element;
begin
  E.Data := D;
  -- E.Next := Null;
  if L = Null then
    List := E;
    return;
  end if;

  if L.Data >= D then
    E.Next := L;
    List := E;
    return;
  end if;

  while  L /= Null and then L.Next.Data < D loop
    L := L.Next;
  end loop;

  E.Next := L.Next;
  L.Next := E;
  


null;
end Insert_Sort;

Lista : Elem_Ptr := Null;

begin
  Print(Lista);
  Lista := Insert(Lista, 21);
  Print(Lista);
  Insert(Lista, 20);
  Print(Lista);
  for I in reverse 1..12 loop
  Insert(Lista, I);
  end loop;
  Print(Lista);
  Insert_Sort(Lista, 23);
  Print(Lista);
end Lab4Lista;
