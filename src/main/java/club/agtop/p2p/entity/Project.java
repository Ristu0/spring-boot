package club.agtop.p2p.entity;

import java.util.Date;

public class Project {
    private Integer id;
    private String projectname;
    private String tel;
    private String loantype;
    private Double money;
    private Integer loan;
    private Integer rate;
    private String loanuse;
    private Double minmoney;
    private Double maxmoney;
    private Integer validtime;
    private Integer repaytype;
    private Integer status;
    private Double paymoney;
    private Date loantime;
    private User user;

    public Project() {
    }

    public Project(Integer id, String projectname, String tel, String loantype, Double money, Integer loan, Integer rate, String loanuse, Double minmoney, Double maxmoney, Integer validtime, Integer repaytype, Integer status, Double paymoney, Date loantime, User user) {
        this.id = id;
        this.projectname = projectname;
        this.tel = tel;
        this.loantype = loantype;
        this.money = money;
        this.loan = loan;
        this.rate = rate;
        this.loanuse = loanuse;
        this.minmoney = minmoney;
        this.maxmoney = maxmoney;
        this.validtime = validtime;
        this.repaytype = repaytype;
        this.status = status;
        this.paymoney = paymoney;
        this.loantime = loantime;
        this.user = user;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getProjectname() {
        return projectname;
    }

    public void setProjectname(String projectname) {
        this.projectname = projectname;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getLoantype() {
        return loantype;
    }

    public void setLoantype(String loantype) {
        this.loantype = loantype;
    }

    public Double getMoney() {
        return money;
    }

    public void setMoney(Double money) {
        this.money = money;
    }

    public Integer getLoan() {
        return loan;
    }

    public void setLoan(Integer loan) {
        this.loan = loan;
    }

    public Integer getRate() {
        return rate;
    }

    public void setRate(Integer rate) {
        this.rate = rate;
    }

    public String getLoanuse() {
        return loanuse;
    }

    public void setLoanuse(String loanuse) {
        this.loanuse = loanuse;
    }

    public Double getMinmoney() {
        return minmoney;
    }

    public void setMinmoney(Double minmoney) {
        this.minmoney = minmoney;
    }

    public Double getMaxmoney() {
        return maxmoney;
    }

    public void setMaxmoney(Double maxmoney) {
        this.maxmoney = maxmoney;
    }

    public Integer getValidtime() {
        return validtime;
    }

    public void setValidtime(Integer validtime) {
        this.validtime = validtime;
    }

    public Integer getRepaytype() {
        return repaytype;
    }

    public void setRepaytype(Integer repaytype) {
        this.repaytype = repaytype;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public Double getPaymoney() {
        return paymoney;
    }

    public void setPaymoney(Double paymoney) {
        this.paymoney = paymoney;
    }

    public Date getLoantime() {
        return loantime;
    }

    public void setLoantime(Date loantime) {
        this.loantime = loantime;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    @Override
    public String toString() {
        return "Project{" +
                "id=" + id +
                ", projectname='" + projectname + '\'' +
                ", tel='" + tel + '\'' +
                ", loantype='" + loantype + '\'' +
                ", money=" + money +
                ", loan=" + loan +
                ", rate=" + rate +
                ", loanuse='" + loanuse + '\'' +
                ", minmoney=" + minmoney +
                ", maxmoney=" + maxmoney +
                ", validtime=" + validtime +
                ", repaytype=" + repaytype +
                ", status=" + status +
                ", paymoney=" + paymoney +
                ", loantime=" + loantime +
                ", user=" + user +
                '}';
    }
}
