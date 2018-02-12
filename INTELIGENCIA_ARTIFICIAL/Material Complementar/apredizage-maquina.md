# Conceitos Básicos na Aprendizagem de Máquinas

![](http://bigdata.black/wp-content/uploads/2016/05/whatis-machine-learning-0-696x392.jpg)

### INTRODUÇÃO

Nesta publicação, você descobrirá os conceitos básicos de aprendizado de máquinas resumidos

>Um avanço na aprendizagem por máquina valeria dez Microsofts. - Bill Gates, ex-presidente, Microsoft

### O QUE É APRENDIZAGEM DA MÁQUINA?

A Aprendizagem de Máquina está fazendo com que os computadores se programem. Se a programação for a automação, o aprendizado da máquina está automatizando o processo de automação.

O software de escrita é o gargalo, não temos bons desenvolvedores. Deixe os dados fazer o trabalho em vez das pessoas. A aprendizagem de máquinas é a forma de tornar a programação escalável.

Programação tradicional: dados e programa são executados no computador para produzir a saída.

Aprendizado de máquina: dados e saída são executados no computador para criar um programa. Este programa pode ser usado na programação tradicional.

O aprendizado de máquina é como agricultura ou jardinagem. As sementes são os algoritmos, os nutrientes são os dados, o gardner é você e as plantas são os programas.

Programação tradicional versus aprendizagem de máquina

<p align="center"><img src="http://bigdata.black/wp-content/uploads/2017/11/Traditional-Programming-vs-Machine-Learning-300x213.png"></p>

### Aplicações de aprendizagem de máquinas

Aplicações de amostragem de aprendizagem de máquinas:

- Pesquisa na Web: página de classificação baseada no que é mais provável que você clique.
- Biologia computacional: drogas de design racional no computador com base em experimentos passados.
- Finanças: decida a quem enviar o cartão de crédito. Avaliação do risco em ofertas de crédito. Como decidir onde investir dinheiro.
- E-commerce: Previsão de churn do cliente. Seja ou não uma transação fraudulenta.
- Exploração espacial: sondas espaciais e radioastronomia.
- Robótica: como lidar com a incerteza em novos ambientes. Autônomo. Carro auto-dirigido.
- Extração de informações: faça perguntas sobre bancos de dados na web.
- Redes sociais: dados sobre relações e preferências. Aprendizagem de máquina para extrair valor de dados.
- Depuração: use em problemas de ciência da computação como depuração. Processo intensivo de trabalho. Poderia sugerir onde o erro poderia ser.

Qual é o seu domínio de interesse e como você pode usar a aprendizagem de máquinas nesse domínio?

### Elementos-chave da aprendizagem de máquinas

Existem dezenas de milhares de algoritmos de aprendizagem de máquinas e centenas de novos algoritmos são desenvolvidos todos os anos.

Todo algoritmo de aprendizagem de máquinas tem três componentes:

- Representação: como representar o conhecimento. Exemplos incluem árvores de decisão, conjuntos de regras, instâncias, modelos gráficos, redes neurais, máquinas de vetor de suporte, conjuntos de modelos e outros.
- Avaliação: a maneira de avaliar os programas candidatos (hipóteses). Os exemplos incluem precisão, predição e recall, erro quadrado, probabilidade, probabilidade posterior, custo, martin, divergência de entropia k-L e outros.
- Otimização: a forma como os programas candidatos são gerados conhecidos como o processo de busca. Por exemplo, otimização combinatória, otimização convexa, otimização restrita.
- Todos os algoritmos de aprendizagem de máquina são combinações destes três componentes. Uma estrutura para a compreensão de todos os algoritmos.

### Tipos de aprendizagem de máquina

Existem quatro tipos de aprendizado de maquina:

- Aprendizado supervisionado: (também chamado de aprendizagem indutiva) Os dados de treinamento incluem os resultados desejados. Isso é spam, isso não é, o aprendizado é supervisionado.
- Aprendizagem não supervisionada: os dados de treinamento não incluem as saídas desejadas. O exemplo é o agrupamento. É difícil dizer o que é bom aprender e o que não é.
- Aprendizagem semi-supervisionada: os dados de treinamento incluem algumas saídas desejadas.
- Aprendizagem de reforço: recompensas de uma seqüência de ações. Tipos de IA, esse é o tipo de aprendizagem mais ambicioso.

O aprendizado supervisionado é o mais amadurecido, o mais estudado e o tipo de aprendizagem usado pela maioria dos algoritmos de aprendizagem de máquinas. Aprender com supervisão é muito mais fácil do que aprender sem supervisão.

O aprendizado indutivo é onde nos são dados exemplos de uma função na forma de dados (x) e a saída da função (f (x)). O objetivo do aprendizado indutivo é aprender a função para novos dados (x).

- Classificação: quando a função que está sendo aprendida é discreta.
- Regressão: quando a função que está sendo aprendida é contínua.
- Estimativa de Probabilidade: quando a saída da função é uma probabilidade.

### Aprendizagem de máquinas na prática

Os algoritmos de aprendizagem de máquinas são apenas uma parte muito pequena do uso de aprendizagem de máquinas na prática como analista de dados ou cientista de dados. Na prática, o processo geralmente se parece com:

- Start Loop
  - Compreenda o domínio, conhecimento prévio e objetivos. Fale com especialistas do domínio. Muitas vezes, os objetivos são muito pouco claros. Muitas vezes você tem mais coisas para tentar, então você pode implementar.
  - Integração, seleção, limpeza e pré-processamento de dados. Esta é muitas vezes a parte mais demorada. É importante ter dados de alta qualidade. Quanto mais dados você tiver, mais absorção porque os dados estão sujos. Lixo dentro, lixo fora.
  - Modelos de aprendizagem. A parte divertida. Esta parte é muito madura. As ferramentas são gerais.
  - Interpretação de resultados. Às vezes, não importa como o modelo funciona durante o tempo que entrega resultados. Outros domínios exigem que o modelo seja compreensível. Você será desafiado por especialistas humanos.
  - Consolidação e implantação de conhecimento descoberto. A maioria dos projetos que são bem sucedidos no laboratório não são usados na prática. É muito difícil conseguir algo usado.
- End Loop

Não é um processo único, é um ciclo. Você precisa executar o loop até obter um resultado que você possa usar na prática. Além disso, os dados podem mudar, exigindo um novo loop.

### APRENDIZAGEM INDUTIVA

A segunda parte da palestra é sobre o tema da aprendizagem indutiva. Esta é a teoria geral por trás da aprendizagem supervisionada.

### O que é Aprendizagem Indutiva

Do ponto de vista da aprendizagem indutiva, recebemos amostras de entrada (x) e amostras de saída (f (x)) e o problema é estimar a função (f). Especificamente, o problema é generalizar a partir das amostras e o mapeamento para ser útil para estimar o resultado para novas amostras no futuro.

Na prática, quase sempre é muito difícil estimar a função, então estamos procurando por aproximações muito boas da função.

Alguns exemplos práticos de indução são:

**Avaliação do risco de crédito**.
- O x é as propriedades do cliente.
- O f (x) é aprovado pelo crédito ou não.

**Diagnóstico de doença.**

- O x são as propriedades do paciente.
- O f (x) é a doença de que sofrem.

**Reconhecimento facial.**

- O x são bitmaps das faces dos povos.
- O f (x) é atribuir um nome ao rosto.

**Direção automática.**

- O x são imagens de bitmap de uma câmera na frente do carro.
- O f (x) é o grau em que o volante deve ser girado.

### Quando você deve usar a Aprendizagem Indutiva?

Há problemas em que a aprendizagem indutiva não é uma ideia do capô. É importante quando usar e quando não usar a aprendizagem automática de máquinas.

4 problemas em que a aprendizagem indutiva pode ser uma boa idéia:

- Problemas em que não há perito humano. Se as pessoas não sabem a resposta, não podem escrever um programa para resolvê-lo. Estas são áreas de descoberta verdadeira.
- Os seres humanos podem desempenhar a tarefa, mas ninguém pode descrever como fazê-lo. Há problemas em que os seres humanos podem fazer coisas que o computador não pode fazer ou fazer bem. Exemplos incluem andar de bicicleta ou dirigir um carro.
- Problemas em que a função desejada muda freqüentemente. Os seres humanos poderiam descrevê-lo e eles poderiam escrever um programa para fazê-lo, mas o problema muda com muita frequência. Não é rentável. Exemplos incluem o mercado de ações.
- Problemas em que cada usuário precisa de uma função personalizada. Não é rentável escrever um programa personalizado para cada usuário. Exemplo são recomendações de filmes ou livros em Netflix ou Amazon.

### A essência do aprendizado indutivo

Podemos escrever um programa que funcione perfeitamente para os dados que temos. Esta função será superada ao máximo. Mas não temos ideia de quão bem isso funcionará em novos dados, provavelmente será muito mal porque nunca mais veremos os mesmos exemplos.

Os dados não são suficientes. Você pode prever o que quiser. E isso seria ingênuo não assumir nada sobre o problema.

Na prática, não somos ingênuos. Existe um problema subjacente e estamos interessados em uma aproximação precisa da função. Há um número exponencial duplo de possíveis classificadores no número de estados de entrada. Encontrar uma boa aproximação para a função é muito difícil.

Existem classes de hipóteses que podemos tentar. Essa é a forma que a solução pode tomar ou a representação. Não podemos saber qual é o mais adequado para o nosso problema antes da mão. Temos que usar experimentação para descobrir o que funciona no problema.

Duas perspectivas sobre a aprendizagem indutiva:

- Aprender é a remoção de incerteza. Tendo dados removem alguma incerteza. Selecionando uma classe de hipóteses, estamos removendo mais incertezas.
- Aprender é adivinhar uma boa e pequena classe de hipóteses. Isso requer adivinhação. Nós não conhecemos a solução, devemos usar um processo de teste e erro. Se você conhecesse o domínio com certeza, não precisa aprender. Mas não estamos adivinhando no escuro.

Você poderia estar errado.

- Nosso conhecimento prévio pode estar errado.
- Nosso palpite sobre a classe de hipóteses pode estar errado.

Na prática, começamos com uma pequena aula de hipóteses e desenvolvemos lentamente a classe de hipóteses até obtermos um bom resultado.

### Um framework para o estudo da aprendizagem indutiva

Terminologia utilizada na aprendizagem de maquina:

- Exemplo de treino: uma amostra de x, incluindo a saída da função alvo
- Função alvo: a função de mapeamento f de x para f (x)
- Hipótese: aproximação de f, função candidata.
- Conceito: uma função de alvo booleano, exemplos positivos e exemplos negativos para os valores da classe 1/0.
- Classificador: O programa de aprendizagem exibe um classificador que pode ser usado para classificar.
- Aprendiz: processo que cria o classificador.
- Espaço de hipóteses: conjunto de possíveis aproximações de f que o algoritmo pode criar.
- Espaço de versão: subconjunto do espaço de hipótese que é consistente com os dados observados.

Questões-chave na aprendizagem de máquinas:

- Qual é o bom espaço de hipótese?
- Que algoritmos funcionam com esse espaço?
- O que posso fazer para otimizar a precisão em dados não vistos?
- Como temos confiança no modelo?
- Existem problemas de aprendizagem que são computacionalmente intratáveis?
- Como podemos formular problemas de aplicativos como problemas de aprendizado de máquina?

Existem 3 preocupações quanto à escolha de um espaço espacial de hipóteses:

- Tamanho: número de hipóteses para escolher
- Aleatoriedade: estocástica ou determinista
- Parâmetro: o número eo tipo de parâmetros

Existem 3 propriedades pelas quais você pode escolher um algoritmo:

Procedimento de busca

- **Cálculo direto**: Nenhuma pesquisa, basta calcular o que é necessário.
- **Local**: procure no espaço da hipótese para refinar a hipótese.
- **Construtivo**: Construa a hipótese peça por peça.

Cronometragem

- **Ansioso**: aprendizagem realizada na frente. A maioria dos algoritmos está ansiosa.
- **Preguiçoso**: Aprendizado realizado no momento em que é necessário

Online vs Batch

- Online: Aprendizado com base em cada padrão conforme é observado.
- Lote: aprendendo sobre grupos de padrões. A maioria dos algoritmos são lote.

### RESUMO

Nesta publicação, você descobriu os conceitos básicos na aprendizagem de máquinas.

![](http://bigdata.black/wp-content/uploads/2016/05/IMG_4789.jpg)

Em resumo, estes foram:

- O que é apredizagem de máquina?
- Aplicações da Aprendizagem de Máquinas
- Elementos-chave da aprendizagem de máquinas
- Tipos de Aprendizagem
- Aprendizado de máquinas na prática
- O que é Aprendizagem Indutiva?
- Quando você deve usar a aprendizagem indutiva?
- A Essência da Aprendizagem Indutiva
- Uma Estrutura para Estudar Aprendizagem Indutiva

Estes são os conceitos básicos abordados na introdução da maioria dos cursos de aprendizagem de máquinas e nos capítulos iniciais de qualquer bom livro de texto sobre o assunto.

[BIGDATA](http://bigdata.black/analytics-predictions/machine-learning/basic-concepts-machine-learning-algorithms/)


