package Class.Services.Implementation;

import Class.DTO.PhotoDTO;
import Class.Entity.Photo;
import Class.Repository.PhotoRepo;
import Class.Services.PhotoSer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Base64;
import java.util.List;


@Service
public class PhotoSerImp implements PhotoSer {
    @Autowired
    private PhotoRepo photoRepo;

    @Override
    public void addOrEdit(Photo photo) {
        photoRepo.save(photo);
    }

    @Override
    public void edit(int id, String name, MultipartFile multipartFile) {
        Photo photo = photoRepo.findOne(id);
        photo.setName(name);
        try {
            photo.setImage(multipartFile.getBytes());
        } catch (IOException e) {
            e.printStackTrace();
        }
        photoRepo.save(photo);

    }

    @Override
    public void delete(int id) {
        photoRepo.delete(id);
    }

    @Override
    public PhotoDTO findOne(int id) {
        Photo photo = photoRepo.findOne(id);
        PhotoDTO photoDTO = new PhotoDTO();
        photoDTO.setId(photo.getId());
        photoDTO.setName(photo.getName());
        String image = Base64.getEncoder().encodeToString(photo.getImage());
        photoDTO.setImage(image);
        return photoDTO;
    }

    @Override
    public Photo findOneById(int id) {
        return photoRepo.findOne(id);
    }

    @Override
    public List<PhotoDTO> findAll() {
        List<PhotoDTO>photoDTOs = new ArrayList<>();
        List<Photo>photoList= photoRepo.findAll();

        for (Photo photo:photoList){
            PhotoDTO photoDTO = new PhotoDTO();
            photoDTO.setId(photo.getId());
            photoDTO.setName(photo.getName());
            String image = Base64.getEncoder().encodeToString(photo.getImage());
            photoDTO.setImage(image);
            photoDTOs.add(photoDTO);
        }
        return photoDTOs;
    }
}
