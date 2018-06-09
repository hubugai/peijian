package com.css.service;

import java.util.List;

import com.css.entity.Goods;
import com.css.util.PageData;

public interface GoodsService_back {
	
	
    /**
	 * ͨ����Ʒidɾ����Ʒ��Ϣ
	 */
    public boolean delGoodsById(int goodsId);
    /**
     * �����Ʒ
     * @param goods һ����Ʒ����
     * @return
     */
    public boolean addGoods(Goods goods);
    /**
     * ��ѯ������Ʒ��Ϣ
     * @return
     */
    public List<Goods> getAll();
    /**
     * �޸���Ʒ��Ϣ
     * @param goods
     * @return
     */
    public boolean updateGoods(Goods goods);
}
