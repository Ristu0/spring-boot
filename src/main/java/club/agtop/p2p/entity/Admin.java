package club.agtop.p2p.entity;

import com.alibaba.fastjson.annotation.JSONField;


public class Admin {
    private Integer id;
    private String username;
    private String password;
    private String realname;
    private String tel;
    private String address;
    @JSONField(format = "yyyy/MM/dd")
    private java.util.Date birthday;
    @JSONField(format = "yyyy/MM/dd")
    private java.util.Date jobtime;
    private String photo;
    private String email;

    public Admin() {
        super();
    }

    public Admin(Integer id, String username, String password, String realname, String tel, String address, java.util.Date birthday, java.util.Date jobtime, String photo, String email) {
        super();
        this.id = id;
        this.username = username;
        this.password = password;
        this.realname = realname;
        this.tel = tel;
        this.address = address;
        this.birthday = birthday;
        this.jobtime = jobtime;
        this.photo = photo;
        this.email = email;
    }

    public Integer getId() {
        return this.id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUsername() {
        return this.username;
    }

    public void setUsername(String username) {
        this.username = username;
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

    public String getTel() {
        return this.tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getAddress() {
        return this.address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public java.util.Date getBirthday() {
        return this.birthday;
    }

    public void setBirthday(java.util.Date birthday) {
        this.birthday = birthday;
    }

    public java.util.Date getJobtime() {
        return this.jobtime;
    }

    public void setJobtime(java.util.Date jobtime) {
        this.jobtime = jobtime;
    }

    public String getPhoto() {
        return this.photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }

    public String getEmail() {
        return this.email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

}
