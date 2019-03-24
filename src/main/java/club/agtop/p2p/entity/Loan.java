package club.agtop.p2p.entity;

import java.util.Date;

public class Loan {
    private Integer id;
    private String realname;
    private String tel;
    private String region;
    private Double money;
    private Integer loantime;
    private String loantype;
    private String loanuser;
    private Integer status;
    private Date loandate;

    public Loan() {
    }

    public Loan(Integer id, String realname, String tel, String region, Double money, Integer loantime, String loantype, String loanuser, Integer status, Date loandate) {
        this.id = id;
        this.realname = realname;
        this.tel = tel;
        this.region = region;
        this.money = money;
        this.loantime = loantime;
        this.loantype = loantype;
        this.loanuser = loanuser;
        this.status = status;
        this.loandate = loandate;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getRealname() {
        return realname;
    }

    public void setRealname(String realname) {
        this.realname = realname;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getRegion() {
        return region;
    }

    public void setRegion(String region) {
        this.region = region;
    }

    public Double getMoney() {
        return money;
    }

    public void setMoney(Double money) {
        this.money = money;
    }

    public Integer getLoantime() {
        return loantime;
    }

    public void setLoantime(Integer loantime) {
        this.loantime = loantime;
    }

    public String getLoantype() {
        return loantype;
    }

    public void setLoantype(String loantype) {
        this.loantype = loantype;
    }

    public String getLoanuser() {
        return loanuser;
    }

    public void setLoanuser(String loanuser) {
        this.loanuser = loanuser;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public Date getLoandate() {
        return loandate;
    }

    public void setLoandate(Date loandate) {
        this.loandate = loandate;
    }

    @Override
    public String toString() {
        return "Loan{" +
                "id=" + id +
                ", realname='" + realname + '\'' +
                ", tel='" + tel + '\'' +
                ", region='" + region + '\'' +
                ", money=" + money +
                ", loantime=" + loantime +
                ", loantype='" + loantype + '\'' +
                ", loanuser='" + loanuser + '\'' +
                ", status=" + status +
                ", loandate=" + loandate +
                '}';
    }
}
