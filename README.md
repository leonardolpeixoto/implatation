# implatation
É um projeto para implantar tanto o [client](https://github.com/leonardolpeixoto/client) quanto o [server](https://github.com/leonardolpeixoto/teravoz) em containers docker utilizando o docker-composer como gerenciador.

### Começando
Para subir os container execute o script

```shell
sudo ./script/implatation.sh
```
esse comando será responsável por baixar os projetos, criar os containers e subir a aplicação.
caso nos logs tenha uma messagem de error:

**Unhandled rejection SequelizeDatabaseError: Cannot add foreign key constraint**

saia dos logs usando **ctrl + c** e execute o comando **docker-compose stop** isso ira parar todos os containers e então execute **docker-compose start** 
para subir a aplicação novamente, agora basta dar **docker-compose logs teravoz** para acompanhar os logs do servidor.
