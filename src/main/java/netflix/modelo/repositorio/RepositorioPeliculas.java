package netflix.modelo.repositorio;

import org.springframework.data.jpa.repository.JpaRepository;

import netflix.modelo.entidades.Genero;
import netflix.modelo.entidades.Pelicula;

public interface RepositorioPeliculas extends JpaRepository<Pelicula, Long>{

}
