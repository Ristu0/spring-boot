package club.agtop.p2p.entity;

public class Invest {
    private Integer id;
    private Integer projectid;
    private Integer userid;
    private Double money;
    private java.util.Date investtime;
    private java.util.Date paytime;
    private String note;

    public Invest() {
        super();
    }

    public Invest(Integer id, Integer projectid, Integer userid, Double money, java.util.Date investtime, java.util.Date paytime, String note) {
        super();
        this.id = id;
        this.projectid = projectid;
        this.userid = userid;
        this.money = money;
        this.investtime = investtime;
        this.paytime = paytime;
        this.note = note;
    }

    public Integer getId() {
        return this.id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getProjectid() {
        return this.projectid;
    }

    public void setProjectid(Integer projectid) {
        this.projectid = projectid;
    }

    public Integer getUserid() {
        return this.userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public Double getMoney() {
        return this.money;
    }

    public void setMoney(Double money) {
        this.money = money;
    }

    public java.util.Date getInvesttime() {
        return this.investtime;
    }

    public void setInvesttime(java.util.Date investtime) {
        this.investtime = investtime;
    }

    public java.util.Date getPaytime() {
        return this.paytime;
    }

    public void setPaytime(java.util.Date paytime) {
        this.paytime = paytime;
    }

    public String getNote() {
        return this.note;
    }

    public void setNote(String note) {
        this.note = note;
    }

}
