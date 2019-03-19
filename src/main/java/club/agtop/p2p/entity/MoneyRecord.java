package club.agtop.p2p.entity;

public class MoneyRecord {
    private Integer id;
    private Integer userid;
    private Double money;
    private String fromsrc;
    private java.util.Date changetime;

    public MoneyRecord() {
        super();
    }

    public MoneyRecord(Integer id, Integer userid, Double money, String fromsrc, java.util.Date changetime) {
        super();
        this.id = id;
        this.userid = userid;
        this.money = money;
        this.fromsrc = fromsrc;
        this.changetime = changetime;
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

    public Double getMoney() {
        return this.money;
    }

    public void setMoney(Double money) {
        this.money = money;
    }

    public String getFromsrc() {
        return this.fromsrc;
    }

    public void setFromsrc(String fromsrc) {
        this.fromsrc = fromsrc;
    }

    public java.util.Date getChangetime() {
        return this.changetime;
    }

    public void setChangetime(java.util.Date changetime) {
        this.changetime = changetime;
    }

}
