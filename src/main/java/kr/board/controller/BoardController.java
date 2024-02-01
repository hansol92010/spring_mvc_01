package kr.board.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.board.entity.Board;
import kr.board.mapper.BoardMapper;

@Controller
public class BoardController {
	
	@Autowired
	private BoardMapper boardMapper;
	
	/*
	  	/boardList.do  		=> boardList()
	  	/boardForm.do  		=> boardForm()
	  	/boardInsert.do 	=> boardInsert()
	  	/boardContent.do 	=> boardContent()
	  	/boardDelete.do 	=> boardDelete()
	  	/boardUpdateForm.do => boardUpdateForm()
	  	/boardUpdate.do 	=> boardUpdate()
	*/
	
	@RequestMapping("/boardList.do")
	public String boardList(Model model) {
		List<Board> list = boardMapper.getLists();
		model.addAttribute("list", list);
		return "boardList";
	}
	
	@GetMapping("/boardForm.do")
	public String boardForm() {
		return "boardForm";
	}
	
	@PostMapping("/boardInsert.do")
	public String boardInsert(Board vo) {	// 파라미터 수집(title, content, writer)
		boardMapper.boardInsert(vo);
		return "redirect:/boardList.do";
	}
	
	@GetMapping("/boardContent.do")
	public String boardContent(//@RequestParam("idx")	// 파라미터 이름과 변수명이 같을 경우 @RequestParam이 없어도 된다
			int idx, Model model) {
		Board vo = boardMapper.boardContent(idx);
		boardMapper.boardCount(idx);		// 조회수 증가
		model.addAttribute("vo", vo);
		return "boardContent";
	}
	
	@GetMapping("/boardDelete.do/{idx}")
	public String boardDelete(@PathVariable("idx") int idx) {
		boardMapper.boardDelete(idx);
		return "redirect:/boardList.do";
	}
	
	@GetMapping("/boardUpdateForm.do/{idx}")
	public String boardUpdateForm(@PathVariable("idx") int idx, Model model) {
		Board vo = boardMapper.boardContent(idx);
		model.addAttribute("vo", vo);
		return "boardUpdate";
	}
	
	@PostMapping("/boardUpdate.do")
	public String boardUpdate(Board vo) {// 파라미터 수집(idx, title, content)
		boardMapper.boardUpdate(vo);
		return "redirect:/boardContent.do?idx=" + vo.getIdx();
	}
	
}

