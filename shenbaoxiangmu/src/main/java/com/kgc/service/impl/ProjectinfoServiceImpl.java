package com.kgc.service.impl;

import com.kgc.entity.Projectinfo;
import com.kgc.entity.ProjectinfoExample;
import com.kgc.mapper.ProjectinfoMapper;
import com.kgc.service.ProjectinfoService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("projectinfoService")
public class ProjectinfoServiceImpl implements ProjectinfoService {
    @Resource
    ProjectinfoMapper projectinfoMapper;
    @Override
    public List<Projectinfo> selectAll(int type) {
        ProjectinfoExample example=new ProjectinfoExample();
        ProjectinfoExample.Criteria criteria=example.createCriteria();
        if(type==0){
            return projectinfoMapper.selectByExample(null);
        }else{
            criteria.andStatusEqualTo(type);
        }
        List<Projectinfo> projectinfos = projectinfoMapper.selectByExample(example);
        return projectinfos;
    }

    @Override
    public Projectinfo selectById(Integer id) {
        return projectinfoMapper.selectByPrimaryKey(id);
    }

    @Override
    public int upd(Projectinfo projectinfo) {
        return projectinfoMapper.updateByPrimaryKeySelective(projectinfo);
    }
}
