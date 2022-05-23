package com.lsk.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lsk.mapper.BoardMapper;
import com.lsk.model.BoardVO;

@Service
public class BoardServiceImpl implements BoardService {
	
	@Autowired
	private BoardMapper mapper;
	
	// �Խ��� ���
	@Override
    public void enroll(BoardVO board) {
        
        mapper.enroll(board);
        
    }
	
	// �Խ��� ���
	@Override
    public List<BoardVO> getList() {
        
        return mapper.getList();
    }
	
	/* �Խ��� ��ȸ */
    @Override
    public BoardVO getPage(int bno) {
         
        return mapper.getPage(bno);
    }    
	
    /* �Խ��� ���� */
    @Override
    public int modify(BoardVO board) {
        
        return mapper.modify(board);
    }
    
    /* �Խ��� ���� */
    @Override
    public int delete(int bno) {
        
        return mapper.delete(bno);
    }    
    
}
