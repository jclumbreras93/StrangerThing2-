package netflix.modelo.repositorio;

import org.springframework.data.jpa.repository.JpaRepository;

import netflix.modelo.entidades.Genero;

public interface RepositorioGeneros extends JpaRepository<Genero, Long>{

}
