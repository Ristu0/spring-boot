package club.agtop.p2p.entity;

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

    public Loan() {
        super();
    }

    public Loan(Integer id, String realname, String tel, String region, Double money, Integer loantime, String loantype, String loanuser, Integer status) {
        super();
        this.id = id;
        this.realname = realname;
        this.tel = tel;
        this.region = region;
        this.money = money;
        this.loantime = loantime;
        this.loantype = loantype;
        this.loanuser = loanuser;
        this.status = status;
    }

    public Integer getId() {
        return this.id;
    }

    public void setId(Integer id) {
        this.id = id;
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

    public String getRegion() {
        return this.region;
    }

    public void setRegion(String region) {
        this.region = region;
    }

    public Double getMoney() {
        return this.money;
    }

    public void setMoney(Double money) {
        this.money = money;
    }

    public Integer getLoantime() {
        return this.loantime;
    }

    public void setLoantime(Integer loantime) {
        this.loantime = loantime;
    }

    public String getLoantype() {
        return this.loantype;
    }

    public void setLoantype(String loantype) {
        this.loantype = loantype;
    }

    public String getLoanuser() {
        return this.loanuser;
    }

    public void setLoanuser(String loanuser) {
        this.loanuser = loanuser;
    }

    public Integer getStatus() {
        return this.status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

}
