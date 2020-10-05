package com.kgc.mapper;

import com.kgc.entity.Projectinfo;
import com.kgc.entity.ProjectinfoExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface ProjectinfoMapper {
    int countByExample(ProjectinfoExample example);

    int deleteByExample(ProjectinfoExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Projectinfo record);

    int insertSelective(Projectinfo record);

    List<Projectinfo> selectByExample(ProjectinfoExample example);

    Projectinfo selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Projectinfo record, @Param("example") ProjectinfoExample example);

    int updateByExample(@Param("record") Projectinfo record, @Param("example") ProjectinfoExample example);

    int updateByPrimaryKeySelective(Projectinfo record);

    int updateByPrimaryKey(Projectinfo record);
}