package netflix.PropertyEditors;

import java.beans.PropertyEditorSupport;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import netflix.modelo.entidades.Permiso;
import netflix.modelo.repositorio.RepositorioPermisos;

@Component
public class PermisoPropertyEditors extends PropertyEditorSupport{
	
	@Autowired
	private RepositorioPermisos repoPer;
	
	@Override
	public void setAsText(String text) 
	{
		long idPermiso = Long.parseLong(text);
		Permiso per= repoPer.findOne(idPermiso);
		setValue(per);
	}
}
