package netflix.modelo.repositorio;

import org.springframework.data.jpa.repository.JpaRepository;

import netflix.modelo.entidades.Permiso;

public interface RepositorioPermisos extends JpaRepository<Permiso,Long>{

}
