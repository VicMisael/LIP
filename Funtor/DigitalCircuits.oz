functor

export

   fullAdder:FullAdder
   subtractor:FullSubtractor
   multiplicator:Multiplicator
   novoXor:XorWithAndOr

import 
   DLF at './DigitalLogicFunctor.ozf'

define
   %FULL ADDER exemplo
   %Z é o Carry in
   proc {FullAdder X Y Z ?C ?S}
      K L M
   in
      K={DLF.andG X Y}
      L={DLF.andG Y Z}
      M={DLF.andG X Z}
      C={DLF.orG K{DLF.orG L M}}
      S={DLF.xorG Z {DLF.xorG X Y}}
   end

   %Subtractor 
   proc{FullSubtractor A B Bin Bout D}
      X Y Z
   in
      D = {DLF.xorG {DLF.xorG A B} Bin}
      X = {DLF.andG {DLF.notG A} Bin} 
      Y = {DLF.andG {DLF.notG A} B}
      Z = {DLF.andG B Bin}
      Bout = {DLF.orG {DLF.orG X Y} Z} 
   end
 % Multiplicador
   proc {Multiplicator A0 A1 B0 B1 C0 C1 C2 C3}
      A0B0
      A1B0
      A0B1
      A1B1
      ANDA1B0A0B1
   in
      A0B0={DLF.andG A0 B0}
      A1B0={DLF.andG A1 B0}
      A0B1={DLF.andG A0 B1}
      A1B1={DLF.andG A1 B1}
      C0=A0B0
      C1={DLF.xorG A1B0 A0B1}
      ANDA1B0A0B1={DLF.andG A1B0 A0B1}
      C2={DLF.xorG ANDA1B0A0B1 A1B1}
      C3={DLF.andG ANDA1B0A0B1 A1B1}
   end
   %XOR Com And e Or
   proc {XorWithAndOr A B C} 
      NOTAND
   in
      NOTAND={DLF.notG {DLF.andG A B}}
      C={DLF.andG {DLF.orG A B} NOTAND }
   end
end