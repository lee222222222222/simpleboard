package com.lsk.controller;

import java.util.logging.Logger;

import org.mybatis.logging.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.lsk.model.BoardVO;
import com.lsk.service.BoardService;

@Controller
@RequestMapping("/board/*")

public class BoardController {
	
	
	@Autowired
	private BoardService bservice;
	
	/* �Խ��� ��� ������ ���� */
	@RequestMapping(value="/list", method=RequestMethod.GET)
    public void boardListGET(Model model) {
		
		model.addAttribute("list", bservice.getList());
		
    }
    
	/* �Խ��� ��� ������ ���� */
	@RequestMapping(value="/enroll", method=RequestMethod.GET)
    public void boardEnrollGET() {
        
        
    }
    
    /* �Խ��� ��� */
	@RequestMapping(value="/enroll", method=RequestMethod.POST)
    public String boardEnrollPOST(BoardVO board, RedirectAttributes rttr) {
    	
    	bservice.enroll(board);
    	
    	rttr.addFlashAttribute("result", "enroll success");
    	
    	return "redirect:/board/list";
    	
    }
    
    /* �Խ��� ��ȸ */
	@RequestMapping(value="/get", method=RequestMethod.GET)
    public void boardGetPageGET(int bno, Model model) {
        
        model.addAttribute("pageInfo", bservice.getPage(bno));
        
    }
    
    /* ���� ������ �̵� */
	@RequestMapping(value="/modify", method=RequestMethod.GET)
    public void boardModifyGET(int bno, Model model) {
        
        model.addAttribute("pageInfo", bservice.getPage(bno));
        
    }
    
    /* ������ ���� */
	@RequestMapping(value="/modify", method=RequestMethod.POST)
    public String boardModifyPOST(BoardVO board, RedirectAttributes rttr) {
        
        bservice.modify(board);
        
        rttr.addFlashAttribute("result", "modify success");
        
        return "redirect:/board/list";
        
    }
    
    /* ������ ���� */
	@RequestMapping(value="/delete", method=RequestMethod.POST)
    public String boardDeletePOST(int bno, RedirectAttributes rttr) {
        
        bservice.delete(bno);
        
        rttr.addFlashAttribute("result", "delete success");
        
        return "redirect:/board/list";
    }
	
	/* GetMapping / PostMapping -> RequestMapping ���� �ٲٴ� ������ �ȳ� */
}