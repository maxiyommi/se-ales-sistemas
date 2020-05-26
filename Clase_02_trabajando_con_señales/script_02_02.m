% script_02_02 
%
% Funci�n para representar se�ales con pulso y escalones unitarios. 
%
% Marzo, 2019

ini = -3;
fin = 4;
n = (ini:fin);
X = -1*[ zeros( 1 ,abs(ini)- 1), 1 , zeros( 1 ,fin + 1)] + 2*[ zeros( 1 ,abs(ini)- -1), 1 , zeros( 1 ,fin + -1)]+ -1*[ zeros( 1 ,abs(ini)- -2), 1 , zeros( 1 ,fin + -2)];

Y = -1*([zeros( 1, abs(ini) - 1), 1, ones( 1, fin + 1)]-[zeros( 1, abs(ini) - 0), 1, ones( 1, fin + 0)])+2*([zeros( 1, abs(ini) - -1), 1, ones( 1, fin + -1)]-[zeros( 1, abs(ini) - -2), 1, ones( 1, fin + -2)])+-1*([zeros( 1, abs(ini) - -2), 1, ones( 1, fin + -2)]-[zeros( 1, abs(ini) - -3), 1, ones( 1, fin + -3)]);

subplot(2,1,1)
stem(n,X); title ('Representaci�n de se�al en impulso unitario'); ylabel ('X[n]'); xlabel ('Muestras [n]'); grid on;
subplot(2,1,2)
stem(n,Y); title ('Representaci�n de se�al en escal�n unitario'); ylabel ('U[n]'); xlabel ('Muestras [n]'); grid on;
