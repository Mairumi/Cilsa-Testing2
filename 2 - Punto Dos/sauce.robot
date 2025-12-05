*** Settings ***
Library    SeleniumLibrary
Suite Setup    Set Selenium Speed    0.6

*** Variables ***
${URL}                 https://www.saucedemo.com
${USER}                standard_user
${PASS}                secret_sauce
${BROWSER}             chrome

${BTN_ADD_BACKPACK}    id=add-to-cart-sauce-labs-backpack
${CART_BADGE}          css=span.shopping_cart_badge

*** Test Cases ***

Login Exitoso en SauceDemo
    # 1. Abrir el navegador y cargar la página de SauceDemo
    Open Browser    ${URL}    ${BROWSER}

    # 2. Esperar el campo de usuario
    Wait Until Element Is Visible    id=user-name    timeout=10s

    # 3. Completar credenciales correctas
    Input Text        id=user-name    ${USER}
    Input Password    id=password     ${PASS}

    # 4. Hacer clic en Login
    Click Button    id=login-button

    # 5. Validar acceso exitoso
    Wait Until Page Contains    Products    timeout=10s

    # 6. Captura
    Capture Page Screenshot

    # 7. Cerrar navegador
    Close Browser


Login Fallido - Contraseña Incorrecta
    # 1. Abrir navegador en SauceDemo
    Open Browser    ${URL}    ${BROWSER}

    # 2. Esperar campo usuario
    Wait Until Element Is Visible    id=user-name    timeout=10s

    # 3. Completar usuario correcto pero contraseña incorrecta
    Input Text        id=user-name    ${USER}
    Input Password    id=password     password123

    # 4. Hacer clic en Login
    Click Button    id=login-button

    # 5. Validar mensaje de error
    Wait Until Page Contains    Epic sadface    timeout=10s

    # 6. Captura del error
    Capture Page Screenshot

    # 7. Cerrar navegador
    Close Browser


Agregar Producto al Carrito
    # 1. Login
    Open Browser    ${URL}    ${BROWSER}
    Wait Until Element Is Visible    id=user-name    timeout=10s
    Input Text        id=user-name    ${USER}
    Input Password    id=password     ${PASS}
    Click Button      id=login-button
    Wait Until Page Contains    Products    timeout=10s

    # 2. Agregar primer producto disponible (selector universal)
    Wait Until Element Is Visible    xpath=(//button[contains(text(),'Add to cart')])[1]    timeout=10s
    Click Button    xpath=(//button[contains(text(),'Add to cart')])[1]

    # 3. Esperar badge del carrito (numerito rojo)
    Wait Until Element Is Visible    xpath=//span[@class='shopping_cart_badge']    timeout=5s

    # 4. Abrir carrito
    Click Element   css:.shopping_cart_link

    # 5. Validar producto dentro del carrito
    Wait Until Page Contains    Sauce Labs    timeout=10s

    Sleep    4s
    Capture Page Screenshot
    Close Browser
