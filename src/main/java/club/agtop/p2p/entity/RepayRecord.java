package club.agtop.p2p.entity;

import java.util.Date;

public class RepayRecord {
    private Integer id;
    private User user;
    private Project project;
    private Double money;
    private java.util.Date repaytime;
    private Double banlence;
    private Integer status;

    public RepayRecord() {
    }

    public RepayRecord(Integer id, User user, Project project, Double money, Date repaytime, Double banlence, Integer status) {
        this.id = id;
        this.user = user;
        this.project = project;
        this.money = money;
        this.repaytime = repaytime;
        this.banlence = banlence;
        this.status = status;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Project getProject() {
        return project;
    }

    public void setProject(Project project) {
        this.project = project;
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

    public Double getBanlence() {
        return banlence;
    }

    public void setBanlence(Double banlence) {
        this.banlence = banlence;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "RepayRecord{" +
                "id=" + id +
                ", user=" + user +
                ", project=" + project +
                ", money=" + money +
                ", repaytime=" + repaytime +
                ", banlence=" + banlence +
                ", status=" + status +
                '}';
    }
}
