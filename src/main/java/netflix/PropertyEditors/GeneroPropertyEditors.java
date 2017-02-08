package netflix.PropertyEditors;

import java.beans.PropertyEditorSupport;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import netflix.modelo.entidades.Genero;
import netflix.modelo.entidades.Permiso;
import netflix.modelo.repositorio.RepositorioPermisos;
import netflix.modelo.repositorio.RepositorioGeneros;

@Component
public class GeneroPropertyEditors extends PropertyEditorSupport{
	
	@Autowired
	private RepositorioGeneros repogen;
	
	@Override
	public void setAsText(String text) 
	{
		long idGenero = Long.parseLong(text);
		Genero gen= repogen.findOne(idGenero);
		setValue(gen);
	}
}
