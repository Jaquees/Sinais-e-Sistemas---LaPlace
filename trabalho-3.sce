
// Define a variável 's' para representar a variável complexa 's' em funções de transferência
s=%s
/*
// Solicita ao usuário o numerador
num = input('Digite o numerador(exmplo: (s+2)*(s+3)): ')

// Solicita ao usuário o denominador
den = input('Digite o denominador(exmplo: (s+2)*(s+3)): ')

// Cria a função de transferência com os polinômios fornecidos
TF = syslin('c',num,den)
*/

TF = (s+3)/(s+8)
// Exibe a função de transferência na tela
disp('F_t= ', TF)


// Calcula os zeros (z), os polos (p) e o ganho (k) da função de transferência
[z,p,k]=tf2zp(TF)

// Exibe os zeros e os polos na tela
disp('zeros', z)
disp('polos', p)
/*
// Plota o diagrama de polos e zeros
//scf(1); clf(1);
subplot(1,2,1)
plzr(TF)
*/


// Defina as partes real e imaginária
parte_real = linspace(0, 10, 100);
parte_imaginaria = linspace(-10, 10, 100);

// Inicialize a matriz de resposta
matriz_resposta = zeros(length(parte_real), length(parte_imaginaria));

// Calcule a magnitude para cada frequência complexa
for i = 1:length(parte_real)
    for j = 1:length(parte_imaginaria)
        s = parte_real(i) + %i * parte_imaginaria(j);
        resposta = abs(tf2zp(TF));
        matriz_resposta(i, j) = resposta;
    end
end

// Plote o gráfico 3D
plot3d(parte_real, parte_imaginaria, matriz_resposta);
xlabel('Eixo Real');
ylabel('Eixo Imaginário');
zlabel('Magnitude');
title('Gráfico 3d da magnitude');
