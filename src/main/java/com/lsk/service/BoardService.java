package com.lsk.service;

import java.util.List;

import com.lsk.model.BoardVO;

public interface BoardService {
	
	/* �Խ��� ��� */
    public void enroll(BoardVO board);
    
    /* �Խ��� ��� */
    public List<BoardVO> getList();
    
    /* �Խ��� ��ȸ */
    public BoardVO getPage(int bno);
    
    /* �Խ��� ���� */
    public int modify(BoardVO board);
    
    /* �Խ��� ���� */
    public int delete(int bno);
    
}
