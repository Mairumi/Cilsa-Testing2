## 1. Instalación y Requisitos

###  Python 3.10 o superior  
Instalar desde Microsoft Store o desde:  
https://www.python.org/

### Robot Framework
```
pip install robotframework
```

###  SeleniumLibrary
```
pip install robotframework-seleniumlibrary
```

###  WebDriver Manager
```
pip install webdriver-manager
```

---

## 2. Navegador utilizado
- **Google Chrome**  
  https://www.google.com/intl/es_us/chrome/

---

## 3. Plataformas utilizadas
- Visual Studio Code  
- PowerShell

---

## 4. Cómo ejecutarlo

1. Ubicarse en la carpeta donde está el archivo `sauce.robot` 

    Ejemplo
```
cd "C:\Users\Micaela\Desktop\CILSA TESTING"
```

2. Ejecutar Robot Framework:
```
python -m robot sauce.robot
```

Tras la ejecución se generan automáticamente:

- report.html  
- log.html  
- output.xml  

## 5. Resultado Final

Al ejecutar:

Robot Framework ejecuta:

- Login exitoso  
- Login fallido  
- Agregar producto al carrito  

Y genera los reportes finales en la misma carpeta del proyecto para saber si todo salió exitoso o hubo algún fallo.

---
