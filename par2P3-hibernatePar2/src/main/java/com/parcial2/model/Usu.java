package com.parcial2.model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the usu database table.
 * 
 */
@Entity
@NamedQuery(name="Usu.findAll", query="SELECT u FROM Usu u")
public class Usu implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private int id;

	private String contrasenia;

	private String nombre;

	public Usu() {
	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getContrasenia() {
		return this.contrasenia;
	}

	public void setContrasenia(String contrasenia) {
		this.contrasenia = contrasenia;
	}

	public String getNombre() {
		return this.nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

}