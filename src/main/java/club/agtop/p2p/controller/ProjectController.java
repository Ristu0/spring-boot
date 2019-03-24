package club.agtop.p2p.controller;

import club.agtop.p2p.dto.ProjectDTO;
import club.agtop.p2p.entity.Project;
import club.agtop.p2p.service.ProjectService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("/admin")
public class ProjectController {
    @Autowired
    private ProjectService projectService;

    @RequestMapping("/addProject")
    public String addProject(Project project) {
        projectService.insertProject(project);
        return "redirect:/admin/projectList";
    }

    @RequestMapping("/projectList")
    public String projectList(HttpServletRequest request) {
        List<Project> projects = projectService.selectProject();
        request.setAttribute("projects", projects);
        return "admin/project";
    }

    @RequestMapping("/projectDetail")
    public String projectDetail(HttpServletRequest request, Integer id) {
        ProjectDTO projectDTO = projectService.projectDetail(id);
        request.setAttribute("project", projectDTO);
        return "admin/project_detail";
    }

    @RequestMapping("/downProject")
    public String downProject(Project project) {
        project.setStatus(2);
        projectService.updateNonEmptyProjectById(project);
        return "redirect:/admin/projectList";
    }
}
