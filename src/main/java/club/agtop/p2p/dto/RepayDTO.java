package club.agtop.p2p.dto;

import java.io.Serializable;
import java.util.Date;

public class RepayDTO implements Serializable {
    private String realname;
    private Double money;
    private Date repaytime;

    public RepayDTO() {
    }

    public RepayDTO(String realname, Double money, Date repaytime) {
        this.realname = realname;
        this.money = money;
        this.repaytime = repaytime;
    }

    public String getRealname() {
        return realname;
    }

    public void setRealname(String realname) {
        this.realname = realname;
    }

    public Double getMoney() {
        return money;
    }

    public void setMoney(Double money) {
        this.money = money;
    }

    public Date getRepaytime() {
        return repaytime;
    }

    public void setRepaytime(Date repaytime) {
        this.repaytime = repaytime;
    }

    @Override
    public String toString() {
        return "RepayDTO{" +
                "realname='" + realname + '\'' +
                ", money=" + money +
                ", repaytime=" + repaytime +
                '}';
    }
}
