import threading
import time
from selenium import webdriver
from selenium.webdriver.common.by import By

# Chrome → webdriver_manager
from selenium.webdriver.chrome.service import Service as ChromeService
from webdriver_manager.chrome import ChromeDriverManager

# Firefox → webdriver_manager
from selenium.webdriver.firefox.service import Service as FirefoxService
from webdriver_manager.firefox import GeckoDriverManager


# Cantidad de cargas por navegador
CANTIDAD_CARGAS = 2


# -----------------------------------------
# PRUEBA EN CHROME (múltiples cargas)
# -----------------------------------------
def test_chrome():
    for i in range(CANTIDAD_CARGAS):
        print(f"[Chrome] Ejecutando carga {i+1}/{CANTIDAD_CARGAS}")

        # Abrir navegador
        driver = webdriver.Chrome(service=ChromeService(ChromeDriverManager().install()))
        driver.get("https://practicetestautomation.com/practice-test-login/")
        time.sleep(1)

        # Completar el formulario
        driver.find_element(By.ID, "username").send_keys("student")
        driver.find_element(By.ID, "password").send_keys("Password123")
        driver.find_element(By.ID, "submit").click()

        # Esperar para visualizar el resultado
        time.sleep(2)

        # Cerrar navegador
        driver.quit()

        print(f"[Chrome] Carga {i+1} finalizada.\n")


# -----------------------------------------
# PRUEBA EN FIREFOX (múltiples cargas)
# -----------------------------------------
def test_firefox():
    for i in range(CANTIDAD_CARGAS):
        print(f"[Firefox] Ejecutando carga {i+1}/{CANTIDAD_CARGAS}")

        # Abrir navegador
        driver = webdriver.Firefox(service=FirefoxService(GeckoDriverManager().install()))
        driver.get("https://practicetestautomation.com/practice-test-login/")
        time.sleep(1)

        # Completar el formulario
        driver.find_element(By.ID, "username").send_keys("student")
        driver.find_element(By.ID, "password").send_keys("Password123")
        driver.find_element(By.ID, "submit").click()

        # Esperar para visualizar el resultado
        time.sleep(2)

        # Cerrar navegador
        driver.quit()

        print(f"[Firefox] Carga {i+1} finalizada.\n")


# -----------------------------------------
# EJECUCIÓN EN PARALELO (Chrome + Firefox)
# -----------------------------------------
if __name__ == "__main__":
    print("Iniciando pruebas paralelas...\n")

    t1 = threading.Thread(target=test_chrome)
    t2 = threading.Thread(target=test_firefox)

    t1.start()
    t2.start()

    t1.join()
    t2.join()

    print("===== TODAS LAS PRUEBAS FINALIZADAS =====")
