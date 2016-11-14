package Class.Repository;

import Class.Entity.Photo;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

/**
 * Created by Ярослав on 24.10.2016.
 */
public interface PhotoRepo extends JpaRepository<Photo, Integer> {
    @Query ( "FROM Photo " )
    List<Photo> findAll();
}
