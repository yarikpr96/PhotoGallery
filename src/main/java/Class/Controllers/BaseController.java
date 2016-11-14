package Class.Controllers;

import Class.DTO.PhotoDTO;
import Class.Entity.Customer;
import Class.Entity.Photo;
import Class.Send.Mail;
import Class.Services.CustomerSer;
import Class.Services.PhotoSer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailSender;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.Comparator;
import java.util.Date;
import java.util.List;


@Controller
public class BaseController {

    @Autowired
    private PhotoSer photoSer;
    @Autowired
    private CustomerSer customerSer;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String home(Model model) {
        List<PhotoDTO> dtoList =photoSer.findAll();
        dtoList.sort(Comparator.comparing(PhotoDTO::getId).reversed());
        model.addAttribute("dtoList" , dtoList);
        return "views-base-home";
    }

    @RequestMapping(value = "/newPhoto",method = RequestMethod.GET)
    public String newPhoto(){
        return "views-photo-newPhoto";
    }
    @RequestMapping(value = "/newPhoto", method = RequestMethod.POST)
    public String newPhoto(@RequestParam("name") String name, @RequestParam("image") MultipartFile multipartFile) {
        Photo photo=new Photo();
        photo.setName(name);

        try {
            photo.setImage(multipartFile.getBytes());
        } catch (IOException e) {
            e.printStackTrace();
        }
        photoSer.addOrEdit(photo);
        return "redirect:/#work";
    }
    @RequestMapping(value = "/loginpage", method = RequestMethod.GET)
    public String login() {
        return "views-base-login";
    }
    @RequestMapping(value = "/adminRemovePhoto", method = RequestMethod.GET)
    public String adminRemove() {
        return "views-photo-adminRemovePhoto";
    }
    @RequestMapping(value = "/adminRemovePhoto", method = RequestMethod.POST)
    public String adminRemovePhoto(@RequestParam("name") String name) {
        List<PhotoDTO> dtoList =photoSer.findAll();
        for (PhotoDTO photoDTO:dtoList){
            if (photoDTO.getName().equals(name)){
                photoSer.delete(photoDTO.getId());
            }
        }
        return "redirect:/#work";
    }

    @RequestMapping(value = "/", method = RequestMethod.POST)
    private String home1(@RequestParam("email") String email,@RequestParam("name") String name,@RequestParam("message") String message) {
        Mail mailSender = new Mail("super.photo-art1@yandex.ru", "qweqweqwe123");
        mailSender.send("Фото" + "  "+ email,name +" "+ message , "super.photo-art1@yandex.ru", email);

        return "redirect:/";


    }
}
