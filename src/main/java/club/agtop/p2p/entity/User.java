package club.agtop.p2p.entity;

public class User {
    private Integer id;
    private String tel;
    private String password;
    private String realname;
    private String postcard;
    private Double banlence;
    private String pay;
    private String img;
    private java.util.Date createtime;

    public User() {
        super();
    }

    public User(Integer id, String tel, String password, String realname, String postcard, Double banlence, String pay, String img, java.util.Date createtime) {
        super();
        this.id = id;
        this.tel = tel;
        this.password = password;
        this.realname = realname;
        this.postcard = postcard;
        this.banlence = banlence;
        this.pay = pay;
        this.img = img;
        this.createtime = createtime;
    }

    public Integer getId() {
        return this.id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTel() {
        return this.tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getPassword() {
        return this.password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getRealname() {
        return this.realname;
    }

    public void setRealname(String realname) {
        this.realname = realname;
    }

    public String getPostcard() {
        return this.postcard;
    }

    public void setPostcard(String postcard) {
        this.postcard = postcard;
    }

    public Double getBanlence() {
        return this.banlence;
    }

    public void setBanlence(Double banlence) {
        this.banlence = banlence;
    }

    public String getPay() {
        return this.pay;
    }

    public void setPay(String pay) {
        this.pay = pay;
    }

    public String getImg() {
        return this.img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public java.util.Date getCreatetime() {
        return this.createtime;
    }

    public void setCreatetime(java.util.Date createtime) {
        this.createtime = createtime;
    }

}
