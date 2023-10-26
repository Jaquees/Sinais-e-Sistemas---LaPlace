// Define a variável 's' para representar a variável complexa 's' em funções de transferência
s=poly(0,'s')
/*
// Solicita ao usuário o numerador
num = input('Digite o numerador(exmplo: (s+2)*(s+3)): ')

// Solicita ao usuário o denominador
den = input('Digite o denominador(exmplo: (s+2)*(s+3)): ')

// Cria a função de transferência com os polinômios fornecidos
F_t = syslin('c',num,den)
*/

TF = syslin('c',[s+3],[s+8])
// Exibe a função de transferência na tela
disp('F_t= ', TF)

// Calcula os zeros (z), os polos (p) e o ganho (k) da função de transferência
[z,p,k]=tf2zp(TF)

// Exibe os zeros e os polos na tela
disp('zeros', z)
disp('polos', p)

// Plota o diagrama de polos e zeros
scf(1); clf(1);
plzr(TF)
/*
//Plota o gráfico da magnitude
scf(2)
bode(F_t)
*/
