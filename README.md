# indicadores-bci-csv

Muestra los indicadores económicos en formato CSV desde la API de BCI

## Ejemplo de uso 

En Google Spreadsheet escribir `=IMPORTDATA("https://indicadores-bci.herokuapp.com/indicadores.csv")` para poder obtener una tabla con los nombres y valores de los indicadores que entrega la API de BCI. Un ejemplo es:

![heroku](./images/heroku.png)

Si se quiere obtener solo el valor de un indicador, escribir `=IMPORTDATA("https://indicadores-bci.herokuapp.com/UF.csv")` y así por ejemplo obtener el valor de la UF.

## Para Comenzar

### Prerequisitos

[Heroku CLI](https://devcenter.heroku.com/articles/heroku-cli)

[Bundler](http://bundler.io/)

[Ngrok](https://ngrok.com/download)


### Instalación

Al clonar el proyecto, crear un archivo .env en donde se guardará la API_KEY necesaria para conectarse a BCI, en este archivo escribir 

```
BCI_API_KEY=tu_api_key
```

Para obtener tu API KEY debes crear una cuenta en [BCI Developers](https://developers.bci.cl), luego en aplicaciones crear una nueva aplicación y así otener un ID de cliente asociado (que es tu API KEY) y además poder suscribirse al producto Información del Banco.

Para poder suscribirse, con la sesión iniciada entrar a API DOCS y en productos ingresar a "ver documentación" de Información del banco, y presionar en suscribirse al plan para enlazarlo con la aplicación creada.

En el terminal, si no lo has hecho antes, escribe `bundle install` para instalar todas las gemas requeridas y luego de eso escribe `heroku local` para ver tu proyecto en localhost.

En la terminal se debería ver algo como esto:
![heroku](./images/heroku.png)

Se muestra que "Listening on tcp://0.0.0.0:5000" implica que el proyecto esta corriendo en el puerto 5000 en localhost. Para mostrar nuestro servidor local a cualquier persona en internet podemos generar una url con ngrok (seguir instrucciones de instalación en el link más arriba), abrir un nuevo terminal y escribir:

```
ngrok http 5000
```

Esto mostrará una dirección url que podrás usar en tu navegador para observar las respuestas de tu proyecto.
