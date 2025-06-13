package com.triviaweb.model;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

public class UsuarioTest {

    private Usuario usuario;

    @BeforeEach
    public void setUp() {
        usuario = new Usuario(1L, "Juan Perez", "juan@email.com", "contraseñaHash", "estudiante", "activo");
    }

    @Test
    public void testGetters() {
        assertEquals("Juan Perez", usuario.getNombre());
        assertEquals("juan@email.com", usuario.getEmail());
        assertEquals("estudiante", usuario.getRol());
    }
}
