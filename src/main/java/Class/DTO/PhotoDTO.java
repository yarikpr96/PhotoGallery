package Class.DTO;

/**
 * Created by Ярослав on 24.10.2016.
 */
public class PhotoDTO {
    private int id;
    private String name;
    private String image;

    public PhotoDTO() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

}
