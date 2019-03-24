package club.agtop.p2p.dto;

import club.agtop.p2p.entity.Project;

import java.io.Serializable;
import java.util.List;

public class ProjectDTO implements Serializable {
    private Project project;
    private List<RepayDTO> repayDTOS;

    public ProjectDTO() {
    }

    public ProjectDTO(Project project, List<RepayDTO> repayDTOS) {
        this.project = project;
        this.repayDTOS = repayDTOS;
    }

    public Project getProject() {
        return project;
    }

    public void setProject(Project project) {
        this.project = project;
    }

    public List<RepayDTO> getRepayDTOS() {
        return repayDTOS;
    }

    public void setRepayDTOS(List<RepayDTO> repayDTOS) {
        this.repayDTOS = repayDTOS;
    }

    @Override
    public String toString() {
        return "ProjectDTO{" +
                "project=" + project +
                ", repayDTOS=" + repayDTOS +
                '}';
    }

    public Double getRepaySum() {
        Double sum = 0.0;
        for (RepayDTO repay : repayDTOS
        ) {
            sum += repay.getMoney();
        }
        return sum;
    }
}
