package club.agtop.p2p.entity;

public class Project {
    private Integer id;
    private String projectname;
    private String tel;
    private String loantype;
    private Double money;
    private java.util.Date loantime;
    private Integer rate;
    private String loanuse;
    private Double minmoney;
    private Double maxmoney;
    private Integer validtime;
    private Integer repaytype;
    private Integer status;

    public Project() {
        super();
    }

    public Project(Integer id, String projectname, String tel, String loantype, Double money, java.util.Date loantime, Integer rate, String loanuse, Double minmoney, Double maxmoney, Integer validtime, Integer repaytype, Integer status) {
        super();
        this.id = id;
        this.projectname = projectname;
        this.tel = tel;
        this.loantype = loantype;
        this.money = money;
        this.loantime = loantime;
        this.rate = rate;
        this.loanuse = loanuse;
        this.minmoney = minmoney;
        this.maxmoney = maxmoney;
        this.validtime = validtime;
        this.repaytype = repaytype;
        this.status = status;
    }

    public Integer getId() {
        return this.id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getProjectname() {
        return this.projectname;
    }

    public void setProjectname(String projectname) {
        this.projectname = projectname;
    }

    public String getTel() {
        return this.tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getLoantype() {
        return this.loantype;
    }

    public void setLoantype(String loantype) {
        this.loantype = loantype;
    }

    public Double getMoney() {
        return this.money;
    }

    public void setMoney(Double money) {
        this.money = money;
    }

    public java.util.Date getLoantime() {
        return this.loantime;
    }

    public void setLoantime(java.util.Date loantime) {
        this.loantime = loantime;
    }

    public Integer getRate() {
        return this.rate;
    }

    public void setRate(Integer rate) {
        this.rate = rate;
    }

    public String getLoanuse() {
        return this.loanuse;
    }

    public void setLoanuse(String loanuse) {
        this.loanuse = loanuse;
    }

    public Double getMinmoney() {
        return this.minmoney;
    }

    public void setMinmoney(Double minmoney) {
        this.minmoney = minmoney;
    }

    public Double getMaxmoney() {
        return this.maxmoney;
    }

    public void setMaxmoney(Double maxmoney) {
        this.maxmoney = maxmoney;
    }

    public Integer getValidtime() {
        return this.validtime;
    }

    public void setValidtime(Integer validtime) {
        this.validtime = validtime;
    }

    public Integer getRepaytype() {
        return this.repaytype;
    }

    public void setRepaytype(Integer repaytype) {
        this.repaytype = repaytype;
    }

    public Integer getStatus() {
        return this.status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

}
