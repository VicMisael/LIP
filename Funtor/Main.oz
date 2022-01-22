functor
import
   Browser
   %importacao do functor DigitalCircuits
   Circuits at './DigitalCircuits.ozf' %caminho do arquivo
define
    %Full adder exemplo
    X=1|1|0|_
    Y=0|1|0|_
    Z=1|1|1|_ 
    C S 
    {Circuits.fullAdder X Y Z C S}
    {Browser.browse fullAdder(entrada(X Y Z)#saida(C S))}

    %Subtrator
    A = 0|0|1|_
    B = 1|0|0|_
    Bin = 1|1|0|_
    Bout
    D
    {Circuits.subtractor A B Bin Bout D}
    {Browser.browse fullSubtractor(entrada(A B Bin)#saida(D Bout))}

    %Multiplier
    A0= 1|0|1|_
    A1= 0|1|0|_
    B0= 0|1|1|_
    B1= 1|1|0|_
    C1 C2 C3 C4
    {Circuits.multiplicator A0 A1 B0 B1 C1 C2 C3 C4}
    {Browser.browse multiplicator(entrada(A0 A1 B0 B1)#saida(C1 C2 C3 C4))}

    F = 1|1|0|0|1|_
    G = 0|1|1|1|1|_
    E
    {Circuits.novoXor F G E }
    {Browser.browse entrada(F G)#novoXor(E)}


    

end