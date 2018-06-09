package com.css.dao;

import java.util.List;

import com.css.entity.Goods;

public interface GoodsDao_back {
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
    public List<Goods> queryAll();
    
    public boolean updateGoods(Goods goods);
}
