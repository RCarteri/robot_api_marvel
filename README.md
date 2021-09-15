# Semana da Automação na API da Marvel

Neste repositório estão os arquivos do projeto realizado na Semana da Automação com a API da Marvel sobre Automação de Testes para APIs Restful. O projeto realizado pelo QA Ninja foi desenvolvido utilizando o Robot Framework para automatizar os procedimentos de GET, GET por Id e DELETE na API e o Allure para gerar os relatórios.

A seguir link das lives:

[Live 1][1]

[Live 2][2]

[Live 3][3]

Para o projeto funcionar deverá ter instalado os seguintes recursos:

[NodeJS][node]

[JDK][jdk]

[Allure][allure]

```
$ pip install allure-robotframework
$ robot --listener allure_robotframework ./my_robot_test

```

Para a execução com o relatório do Allure usa-se o seguinte comando na raiz do diretório do projeto:

`$ robot -d .\logs\ --listener allure_robotframework specs`

`$ allure serve output/allure`

O promeiro usando a flag ` -d .\logs\` gerará logs da execução na pasta logs, a flag  `--listner` gerará os arquivos para serem usados no relatório do Allure quando executar o segundo comando que inicializará o servidor.

Exemplo:

![exemplo][exemplo]

[exemplo]: exemplo.gif
[allure]: https://github.com/allure-framework/allure-python/tree/master/allure-robotframework
[jdk]: https://www.oracle.com/java/technologies/downloads/
[node]: https://nodejs.org/en/download/
[1]: https://youtu.be/ZegJZPAa7o8
[2]: https://youtu.be/iTZ5unfIDvs
[3]: https://youtu.be/DG1vgN7M_M8
