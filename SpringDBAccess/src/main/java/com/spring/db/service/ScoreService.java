package com.spring.db.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.db.model.ScoreVO;
import com.spring.db.repository.IScoreDAO;

@Service
public class ScoreService implements IScoreService {

	@Autowired
	private IScoreDAO dao;
	
	@Override
	public void insertScore(ScoreVO vo) {
		vo.calcData();
		System.out.println("service : " + vo);
		dao.insertScore(vo);
	}

	@Override
	public List<ScoreVO> selectAllScores() {
		return dao.selectAllScores();
	}

	@Override
	public void deleteScore(int stuId) {
		dao.deleteScore(stuId);
		System.out.println("삭제 메서드 실행 종료!");
		return;
	}

	@Override
	public ScoreVO selectOne(int stuId) {
		return dao.selectOne(stuId);
	}

}
