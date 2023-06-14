# PlaneJa
Esse é o repositório do projeto PlaneJaUFCG, projeto desenvolvido como forma do meu Trabalho de Conclusão de Curso. A ideia do projeto é que criar um sistema onde os alunos de toda a UFCG consigam fazer o planejamento de suas matrículas para os períodos subsequentes a partir do seu histórico acadêmico. Nele o usuário pode enviar seu histórico acadêmico e a partir dos dados extraídos deste, das turmas ofertadas naquele período e no pré-requisito dentre as disciplinas, montar diferentes grades de horários possíveis para seu próximo semestre de aulas.

⚠️**OBS:** Esse é apenas o repositório principal, para navegar entre o backend e frontend basta clicar nas pastas destes aqui no repositório e você será redirecionado.


## Dependencias

- **Docker**: Como esse eh um projeto que utiliza o docker, para a sua execução você não precisa de nenhum tipo software instalado na sua máquina.

## Executando o projeto

1. Faça a cópia do .env.example para o .env

```bash
cp .env.example .env
```

2. Levantar containers da aplicação

```bash
docker compose up --build
```

Caso não seja a primeira vez que você está rodando o projeto, não precisa do `--build`.

Pronto! Você pode acessar localhost:<porta-front-existente-definida> (o padrão é 3000) e acessar o projeto. 😄
  
## Configurando o projeto! (Bem importante)

Para conseguir de fato fazer a montagem das matrículas é necessário que o administrador do sistema (no seu caso, você) tenha feito o cadastro de informações como documento de turmas ofertadas (a partir da rota POST /classes-offered) e o pré-requisito dentre as disciplinas (a partir da rota POST /dependencies). Para a primeira dependencias, basta enviar um arquivo de turmas ofertadas válido como corpo da requisição /classes-offered e ele será armazenado. 
  
Para o segundo, no entanto, é necessário que seja feito o cadastro de um objeto JSON como no seguinte exemplo:
  
```json
  {
    "name": "nome-do-curso",
    "dependencies": {
      "id-da-cadeira": {
        "nome": "nome-da-cadeira",
        "tipo": "optativa geral (exemplo)",
        "periodo": 5,
        "dependencias": []
      },
      "1108081": {
        "nome": "Física geral II",
        "tipo": "optativa geral",
        "periodo": null,
        "dependencias": [
          "1108030",
          "1109126",
	  "1411312"
        ]
},
```
