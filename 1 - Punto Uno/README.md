# Automatización de Login con Selenium (Python)

Pruebas automatizadas utilizando **Python + Selenium**, ejecutándose en los navegadores **Google Chrome** y **Mozilla Firefox**, incluyendo ejecución simultánea mediante `threading` en https://practicetestautomation.com/practice-test-login/ .

---

## 1. Instalación y Requisitos

Para ejecutar este proyecto es necesario instalar:

### Python 3.10 o superior
```bash
  winget install Python.Python
```
o por medio de la página oficial: 
Descargar desde: https://www.python.org/
### Selenium
```bash
  pip install selenium
```
### Instalar webdriver-manager
```bash
  pip install webdriver-manager
``` 

### Plataformas utilizadas
♥ Visual Studio Code

♥ Poweshell


## Navegadores

 - [Chrome](https://www.google.com/intl/es_us/chrome/)

 - [Firefox](https://www.firefox.com/es-AR/?utm_campaign=SET_DEFAULT_BROWSER)

---

## 2. Como ejecutarlo

1. Posicionarse sobre la ruta en donde se encuentra situado el proyecto --  **cd "Ruta"**

Ejemplo:  
```bash
cd "C:\Users\Micaela\Desktop\CILSA TESTING"
```


2. Ejecutar en Visual Studio o Powershell
```bash
  python "Tp Integrador CILSA.py"
```

---

## 3. Ejecución 

Una vez completado todos los pasos: después de unos segundos, Selenium abre los navegadores **Chrome y Firefox** de forma simultánea utilizando ***`threading`***. Cada navegador ejecuta las cargas configuradas, completa el formulario del sitio de prueba y valida el inicio de sesión. Al finalizar cada ciclo, los navegadores se cierran y el hilo continúa con la siguiente ejecución programada.

El archivo.py puede modificarse para ajustar los tiempos de espera, la cantidad de cargas (`CANTIDAD_CARGAS`), el comportamiento de cada navegador y cualquier otro parámetro de ejecución, permitiendo adaptar la automatización a las necesidades del usuario.

Una vez finalizada la ejecucion aparecerá un mensaje en la consola:

 ***===== PRUEBAS EJECUTADAS CON ÉXITO =====***

 ---

 ## 4. Cómo calendarizarlas
Usamos el Programador de Tareas de Windows, junto con el archivo `.bat` 



### 1. Abrir Programador de tareas y crear la tarea

- Abrir **Programador de tareas**  
- Seleccionar **Crear tarea…**



### 2. Ponerle un nombre a la tarea

- Autor: (usuario de Windows)  
- Opciones de seguridad seleccionadas:
  - **Ejecutar solo cuando el usuario haya iniciado sesión** (tener solamente seleccionada esta opción)



### 3. Ir a la pestaña *Desencadenadores*

- Clic en **Nuevo…**  
- Elegir: Una vez / Diario / Semanal  
- Seleccionar **fecha + hora** (a gusto del usuario)  
- Aceptar



### 4. Ir a la pestaña *Acciones*

- Clic en **Nueva…**  
- Acción: **Iniciar un programa**  
- Programa/script: **Examinar**  
- Seleccionar el archivo:

```
calendarizar.bat
```

- Aceptar



### 5. Guardar la tarea


### 6. Resultado final

Una vez calendarizada:

- Windows ejecuta el archivo `.bat` en el horario/fecha que se definió.  
- Chrome y Firefox se abren **en simultáneo**  .
- Se realizan las pruebas.
- Los navegadores se cierran automáticamente .

# Automatización de Login con Selenium (Python)

Pruebas automatizadas utilizando **Python + Selenium**, ejecutándose en los navegadores **Google Chrome** y **Mozilla Firefox**, incluyendo ejecución simultánea mediante `threading` en https://practicetestautomation.com/practice-test-login/ .

---

# 1. Instalación y Requisitos

Para ejecutar este proyecto es necesario instalar:

### Python 3.10 o superior
```bash
  winget install Python.Python
```
o por medio de la página oficial: 
Descargar desde: https://www.python.org/
### Selenium
```bash
  pip install selenium
```
### Instalar webdriver-manager
```bash
  pip install webdriver-manager
``` 

### Plataformas utilizadas
♥ Visual Studio Code

♥ Poweshell


## Navegadores

 - [Chrome](https://www.google.com/intl/es_us/chrome/)

 - [Firefox](https://www.firefox.com/es-AR/?utm_campaign=SET_DEFAULT_BROWSER)



# 2. Como ejecutarlo

1. Posicionarse sobre la ruta en donde se encuentra situado el proyecto --  **cd "Ruta"**

Ejemplo:  
```bash
cd "C:\Users\Micaela\Desktop\CILSA TESTING"
```


2. Ejecutar en Visual Studio o Powershell
```bash
  python "Tp Integrador CILSA.py"
```

---

# 3. Ejecución

Una vez completado todos los pasos: después de unos segundos, Selenium abre los navegadores **Chrome y Firefox** de forma simultánea utilizando ***`threading`***. Cada navegador ejecuta las cargas configuradas, completa el formulario del sitio de prueba y valida el inicio de sesión. Al finalizar cada ciclo, los navegadores se cierran y el hilo continúa con la siguiente ejecución programada.

El archivo.py puede modificarse para ajustar los tiempos de espera, la cantidad de cargas (`CANTIDAD_CARGAS`), el comportamiento de cada navegador y cualquier otro parámetro de ejecución, permitiendo adaptar la automatización a las necesidades del usuario.

Una vez finalizada la ejecucion aparecerá un mensaje en la consola:

 ***===== PRUEBAS EJECUTADAS CON ÉXITO =====***
 
 ---

 # 4. Cómo calendarizarlas
Usamos el Programador de Tareas de Windows, junto con el archivo `.bat` 



## 1. Abrir Programador de tareas y crear la tarea

- Abrir **Programador de tareas**  
- Seleccionar **Crear tarea…**



## 2. Ponerle un nombre a la tarea

- Autor: (usuario de Windows)  
- Opciones de seguridad seleccionadas:
  - **Ejecutar solo cuando el usuario haya iniciado sesión** (tener solamente seleccionada esta opción)



## 3. Ir a la pestaña *Desencadenadores*

- Clic en **Nuevo…**  
- Elegir: Una vez / Diario / Semanal  
- Seleccionar **fecha + hora** (a gusto del usuario)  
- Aceptar



## 4. Ir a la pestaña *Acciones*

- Clic en **Nueva…**  
- Acción: **Iniciar un programa**  
- Programa/script: **Examinar**  
- Seleccionar el archivo:

```
calendarizar.bat
```

- Aceptar



## 5. Guardar la tarea


## 6. Resultado final

Una vez calendarizada:

- Windows ejecuta el archivo `.bat` en el horario/fecha que se definió.  
- Chrome y Firefox se abren **en simultáneo**  .
- Se realizan las pruebas.
- Los navegadores se cierran automáticamente .



