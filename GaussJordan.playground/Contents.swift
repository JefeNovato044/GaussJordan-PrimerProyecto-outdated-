//: Playground - noun: a place where people can play

import UIKit


//: Playground - noun: a place where people can play




/*
 Instrucciones: Cada fila representa los coeficientes que acompañan a las incognitas de una
 ecuación. Para que el programa resuelva para X,Y,W, Z es necesario escribir los coeficientes de
 tu ecuación  en la casilla correspondiente, como se muestra en el ejemplo de abajo
 
 X     Y   W     Z     C
 F1 [1.0, 2.0, 3.0, -2.0, 9.0] --->   X + 2Y + 3W - 2Z = 9
 F2 [2.0, 0.0, -1.0, 1.0, 1.0] --->  2X + 0Y - 1W + 1Z = 1
 F3 [3.0, -2.0, -2.0, 3.0, 2.0]--->  3X - 2Y - 2W + 3Z = 2
 F4 [4.0, -4.0, -3.0, -2.0, 3.0]---> 4x - 4Y - 3W - 2Z = 3
 だいじょう
 */



var F1:[Float] = [0.04,0.2,0,0,0.45];
var F2:[Float] = [0.16,0.4 ,0,0,1.4];
var F3:[Float] = [0.36,0.6,0,0,3.8];
var F4:[Float] = [0,0,0,0,0];
// En vez de usar todas las variables que hice arriba puedes usar un solo arreglo nxn

//:::::
var Counter = 0;
var saveNumber = [F1[0],F2[0],F3[0],F4[0]];
var S: Float = 0;

//Matriz Inicial

print("Matriz Inicial")
print(".......");
print (F1);
print (F2);
print (F3);
print (F4);
print(".......");


//Checa si el pivote es igual a 1

if F1[0] != 1 {
    S = F1[0];
    for Counter in 0...4 {
        F1[Counter] /= S;
    }
    
    print(F1);
    
    
} else {
    print("F1 es Igual 1");
}


while ( Counter < F1.count) {
    
    //Sumar Fila 1 a Fila 2 sN[1]
    F2[Counter] = (F1[Counter]*(-1)*saveNumber[1]) + F2[Counter] ;
    
    //Sumar Fila 1 a Fila 3
    
    F3[Counter] = (F1[Counter]*(-1)*saveNumber[2]) + F3[Counter] ;
    
    //Sumar Fila 1 a Fila 4
    
    F4[Counter] = (F1[Counter]*(-1)*saveNumber[3]) + F4[Counter] ;
    
    Counter += 1;
}
//Dejar la variable de conteo de nuevo en 0
Counter = 0;
//

print(".......");
print (F1);
print (F2);
print(F3);
print (F4);
print(".......");

//Checa si el pivote es igual a 1
if (F2[1] != 1) {
    S = F2[1];
    while ( Counter < F1.count) {
        F2[Counter] /= S;
        Counter += 1;
    }
    print("F2", F2);
    print("Dividio exitosamente!")
}

Counter = 0;


print(saveNumber[2]);
print(".......");
print (F1);
print (F2);
print (F3);
print (F4);
print(".......");

//Nuevo valor para las variables
saveNumber[1] = F1[1];
saveNumber[2] = F3[1];
saveNumber[3] = F4[1];
//

print(saveNumber[1] ) ;

//Proceso para limpiar la segunda columna
while(Counter < F2.count){
    
    F1[Counter] = F2[Counter]*(-1)*saveNumber[1] + F1[Counter];
    F3[Counter] = F2[Counter]*(-1)*saveNumber[2] + F3[Counter];
    F4[Counter] = F2[Counter]*(-1)*saveNumber[3] + F4[Counter];
    
    
    Counter += 1;
    
}


Counter = 0;
print(".......");
print (F1);
print (F2);
print(F3);
print (F4);
print(".......");


//Checa si el pivote es igual a 1
if F3[2] != 1 {
    S = F3[2];
    
    for Counter in 0...4 {
        
        F3[Counter] /= S;
        
    }
    print(F3);
    Counter = 0;
}

//Nuevo valor para las variables
saveNumber[1] = F1[2];
saveNumber[2] = F2[2];
saveNumber[3] = F4[2];
//


while(Counter < F2.count){
    
    F1[Counter] = F3[Counter]*(-1)*saveNumber[1] + F1[Counter];
    F2[Counter] = F3[Counter]*(-1)*saveNumber[2] + F2[Counter];
    F4[Counter] = F3[Counter]*(-1)*saveNumber[3] + F4[Counter];
    
    Counter += 1;
    
}


Counter = 0;
print(".......");
print (F1);
print (F2);
print(F3);
print (F4);
print(".......");

//Checa si el pivote es igual a 1
if F4[3] != 1 {
    S = F4[3];
    
    for Counter in 0...4 {
        
        F4[Counter] /= S;
        
    }
    Counter = 0;print("F4",F4);
    
}


//Nuevo valor para las variables
saveNumber[1] = F1[3];
saveNumber[2] = F2[3];
saveNumber[3] = F3[3];
//


while(Counter < F2.count){
    
    F1[Counter] = F4[Counter]*(-1)*saveNumber[1] + F1[Counter];
    F2[Counter] = F4[Counter]*(-1)*saveNumber[2] + F2[Counter];
    F3[Counter] = F4[Counter]*(-1)*saveNumber[3] + F3[Counter];
    
    
    Counter += 1;
    
}

print(".......");
print (F1);
print (F2);
print (F3);

print (F4);
print(".......");


print("X = ", F1[4]);
print("Y = ", F2[4]);
print("W = ", F3[4]);
print("Z = ", F4[4]);
print(".......");
