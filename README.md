# Objetivo do aplicativo:
O objetivo do aplicativo é contar o número de ocorrências de uma mesma palavra escrita pelo usuário no campo de texto da interface.
*OBS: É feita a diferenciação entre palavras maiúsculas e minúsculas - Ex: "Paulo" é diferente de "paulo".

# Como funciona a função responsável por contar o número de ocorrências de uma mesma palavra:
A função chamada countWords recebe uma string text como entrada e retorna um Mapa (chave/valor ou dicionário) em que as chaves são palavras encontradas no texto e os valores são as contagens de ocorrências de cada palavra.

- A função começa dividindo a string text em uma lista de palavras, usando o método split(' '). Isso separa o texto em palavras individuais com base nos espaços em branco.
- Em seguida, é criado um mapa vazio chamado wordCount, que será usado para armazenar as contagens das palavras.
- A função itera sobre cada palavra na lista de palavras usando um loop for-in. A variável word representa cada palavra individual em cada iteração.Dentro do loop, há uma verificação condicional usando if. Ela verifica se a palavra já existe como uma chave no mapa wordCount usando o método containsKey(word). Se a palavra já existe no mapa, significa que ela já foi encontrada anteriormente.
- Se a palavra já existe no mapa, o contador de ocorrências para essa palavra é incrementado em 1. Isso é feito acessando o valor atual da palavra no mapa usando wordCount[word] e adicionando 1 a ele. O operador ! é usado para garantir que o valor existente não seja nulo.
- Caso contrário, se a palavra ainda não existe no mapa, ela é adicionada como uma nova chave no mapa wordCount e o valor é definido como 1, pois é a primeira ocorrência dessa palavra.
- Após o loop ter iterado por todas as palavras, o mapa wordCount contém todas as palavras encontradas no texto e suas respectivas contagens de ocorrências.
- Por fim, o mapa wordCount é retornado como o resultado da função.

Em resumo, essa função conta as ocorrências de cada palavra em um texto e retorna um mapa que "mapeia" cada palavra encontrada em sua contagem de ocorrências.
