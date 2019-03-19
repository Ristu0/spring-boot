package club.agtop.p2p.service.impl;

import club.agtop.p2p.dao.ProjectDao;
import club.agtop.p2p.entity.Project;
import club.agtop.p2p.service.ProjectService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProjectServiceImpl implements ProjectService {
    @Autowired
    private ProjectDao projectDao;

    @Override
    public long getProjectRowCount() {
        return projectDao.getProjectRowCount();
    }

    @Override
    public List<Project> selectProject() {
        return projectDao.selectProject();
    }

    @Override
    public Project selectProjectByObj(Project obj) {
        return projectDao.selectProjectByObj(obj);
    }

    @Override
    public Project selectProjectById(Integer id) {
        return projectDao.selectProjectById(id);
    }

    @Override
    public int insertProject(Project value) {
        return projectDao.insertProject(value);
    }

    @Override
    public int insertNonEmptyProject(Project value) {
        return projectDao.insertNonEmptyProject(value);
    }

    @Override
    public int deleteProjectById(Integer id) {
        return projectDao.deleteProjectById(id);
    }

    @Override
    public int updateProjectById(Project enti) {
        return projectDao.updateProjectById(enti);
    }

    @Override
    public int updateNonEmptyProjectById(Project enti) {
        return projectDao.updateNonEmptyProjectById(enti);
    }

    public ProjectDao getProjectDao() {
        return this.projectDao;
    }

    public void setProjectDao(ProjectDao projectDao) {
        this.projectDao = projectDao;
    }

}