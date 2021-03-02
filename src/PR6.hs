-------------------------------------------------Funciones de orden superior  :



--------------------------Ejericio 1 : Crear una funcion de orden superior que genere apartir de una condicion una lista de numeros y
--------------------------definir alguna funcion que use dicha funcion de orden superior


listOpBase1  g n = [x |x<-[1..n],(g x)]            ---------listOpBase1 es una funcion de orden superior quedada una condicion coge de una lista los n primeros terminos
                                                   --------que verifican dicha condicion


dv  x n= (mod n x)==0       ------------La funcion dv comprueba que un numero es divisible por otro

-----------Ejemplo : dv 5 10 -------------------- resto de 10 entre 5 es 0

sucesionDiv n = listOpBase1 (dv n)   10        ------------La funcion sucesionDiv nos da los 10 primeros numeros que son divisibles por n
 
 
divisoresN n = listOpBase1 (flip (dv) (n))   n ---------------------flip altera los argumentos de la funcion dv de forma que ahora es mod x n


imparesN n =listOpBase1 (odd)   n  ---------------------Sacame los n numeros impares

esta list num = length(filter (==num) list)>0 --------------Esta funcion comprubea que un numero este en la lista


interseccion lista1 lista2 = [x|x<-lista2,esta lista1 x]


comunes a b = interseccion (divisoresN a) (divisoresN b)  ----------------------reduce a una funcion mas sencilla el conjunto de divisores comunes

mcd a b = last (comunes a b) ----------Minimo comun divisor de dos numeros

-------------------------------------------------------Recursion : 
----------------Imprimir piramide

piramide :: Int-> String
piramide 0 =[]
piramide n = ['*'|x<-[1..n]]++"\n"++piramide (n-1)


numeroMasGrande :: Int->[Int]->Int
numeroMasGrande num lista = filter (num<) lista
 