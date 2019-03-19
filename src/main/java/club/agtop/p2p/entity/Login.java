package club.agtop.p2p.entity;

public class Login {
    private Integer id;
    private Integer userid;
    private String ip;
    private java.util.Date logintime;

    public Login() {
        super();
    }

    public Login(Integer id, Integer userid, String ip, java.util.Date logintime) {
        super();
        this.id = id;
        this.userid = userid;
        this.ip = ip;
        this.logintime = logintime;
    }

    public Integer getId() {
        return this.id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getUserid() {
        return this.userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public String getIp() {
        return this.ip;
    }

    public void setIp(String ip) {
        this.ip = ip;
    }

    public java.util.Date getLogintime() {
        return this.logintime;
    }

    public void setLogintime(java.util.Date logintime) {
        this.logintime = logintime;
    }

}
