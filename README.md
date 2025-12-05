# Trabajo Integrador – Testing Automatizado

Este repositorio contiene las automatizaciones realizadas para el **Punto 1 (Selenium + Python)** y **Punto 2 (Robot Framework)** del trabajo integrador.

---

##  Punto 1 – Selenium (Python)

###  Sitio elegido
https://practicetestautomation.com/practice-test-login/  
Formulario simple de login, ideal para pruebas automatizadas.

###  Navegadores utilizados
- **Google Chrome**
- **Mozilla Firefox** (requirió instalar GeckoDriver)

###  Qué se automatizó
- Abrir el sitio
- Completar usuario y contraseña
- Enviar el formulario
- Validar login correcto/incorrecto

###  Repetibilidad y ejecución simultánea
- El proceso es **100% repetible**.  
- Se implementó **threading** para ejecutar Chrome y Firefox al mismo tiempo.  
- La automatización también puede **calendarizarse** mediante un archivo `.bat` y el Programador de Tareas de Windows.

---

##  Punto 2 – Robot Framework (SauceDemo)

###  Herramienta elegida
**Robot Framework** + **SeleniumLibrary**  
Permite automatizar sin escribir código Python directamente.

###  Sitio elegido
https://www.saucedemo.com  
Incluye login, lista de productos y carrito.

###  Pruebas automatizadas
1. Login exitoso  
2. Login fallido  
3. Agregar producto al carrito  


---

##  Objetivo
Demostrar el uso de **Selenium**, **Robot Framework**, ejecución simultánea y calendarización de pruebas de forma simple y funcional.
