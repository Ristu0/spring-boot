package club.agtop.p2p.entity;

public class RepayRecord {
    private Integer id;
    private Integer userid;
    private Integer projectid;
    private Double money;
    private java.util.Date repaytime;
    private Double banlence;
    private Integer status;

    public RepayRecord() {
        super();
    }

    public RepayRecord(Integer id, Integer userid, Integer projectid, Double money, java.util.Date repaytime, Double banlence, Integer status) {
        super();
        this.id = id;
        this.userid = userid;
        this.projectid = projectid;
        this.money = money;
        this.repaytime = repaytime;
        this.banlence = banlence;
        this.status = status;
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

    public Integer getProjectid() {
        return this.projectid;
    }

    public void setProjectid(Integer projectid) {
        this.projectid = projectid;
    }

    public Double getMoney() {
        return this.money;
    }

    public void setMoney(Double money) {
        this.money = money;
    }

    public java.util.Date getRepaytime() {
        return this.repaytime;
    }

    public void setRepaytime(java.util.Date repaytime) {
        this.repaytime = repaytime;
    }

    public Double getBanlence() {
        return this.banlence;
    }

    public void setBanlence(Double banlence) {
        this.banlence = banlence;
    }

    public Integer getStatus() {
        return this.status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

}
