package Class.Services;

import Class.DTO.PhotoDTO;
import Class.Entity.Photo;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

/**
 * Created by Ярослав on 24.10.2016.
 */
public interface PhotoSer {
    void addOrEdit(Photo photo);

    void edit(int id, String name, MultipartFile multipartFile);

    void delete(int id);

    PhotoDTO findOne(int id);

    Photo findOneById(int id);

    List<PhotoDTO> findAll();


}
