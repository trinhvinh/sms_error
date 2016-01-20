package com.sms.service;

import java.util.List;

import com.sms.vo.NewsVO;

/**
 * @author MACBOOK Jan 20, 2016 6:13:05 PM
 */
public interface NewsService {
	
	public void insertNewsVo(NewsVO newsVo);

	public List<NewsVO> listNewsVo(NewsVO newsVo);

	public void deleteNewVo(NewsVO newsVo);

	public void updateNewsVo(NewsVO newsVo);

	public NewsVO newsVoByPk(long pk);

	public int newsCnt(NewsVO newsVo);
}
