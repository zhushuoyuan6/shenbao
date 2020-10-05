package com.kgc.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.kgc.entity.Projectinfo;
import com.kgc.service.ProjectinfoService;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class IndexController {

    @Resource
    ProjectinfoService projectinfoService;
    @RequestMapping("/")
    public String index(Model   model, @RequestParam(value = "type",required = false, defaultValue = "0") int type, HttpSession session, String pageIndex){
        Integer pageNum=1;
        if(pageIndex!=null){
            pageNum=Integer.parseInt(pageIndex);
        }
        Integer pageSize=2;
        PageHelper.startPage(pageNum,pageSize);
        PageHelper.orderBy("id desc");
        List<Projectinfo> list=projectinfoService.selectAll(type);
        PageHelper.startPage(pageNum,pageSize);
        PageInfo<Projectinfo> pageInfo=new PageInfo<>(list);
        model.addAttribute("pageInfo",pageInfo);
        return "index";
    }
    @RequestMapping("/cha")
    public String cha(Model   model,Integer id){
        Projectinfo projectinfo = projectinfoService.selectById(id);
            model.addAttribute("cha",projectinfo);
           return "/upd";
    }
    @RequestMapping("/upd")
    public String dotinajia(Projectinfo projectinfo, HttpServletRequest request,Model   model){
        int upd=projectinfoService.upd(projectinfo);
        if(upd>0){
            return "redirect:/";
        }else{
            return "redirect:/cha";
        }

    }

}
