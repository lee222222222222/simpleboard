package com.lsk.mapper;

import java.util.List;

import com.lsk.model.BoardVO;

public interface BoardMapper {

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
