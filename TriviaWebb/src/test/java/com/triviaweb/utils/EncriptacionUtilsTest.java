package com.triviaweb.utils;

import static org.junit.Assert.*;

import org.junit.Test;

public class EncriptacionUtilsTest {

    @Test
    public void testEncriptacion() {
        String contraseña = "secreta123";
        String contraseñaEncriptada = EncriptacionUtils.encriptarContraseña(contraseña);

        assertNotEquals(contraseña, contraseñaEncriptada);  // Contraseña no debe ser igual después de encriptar
        assertTrue(EncriptacionUtils.verificarContraseña(contraseña, contraseñaEncriptada));  // Verificación debe pasar
    }
}

