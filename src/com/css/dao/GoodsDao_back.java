package com.css.dao;

import java.util.List;

import com.css.entity.Goods;

public interface GoodsDao_back {
    /**
	 * 通过商品id删除商品信息
	 */
    public boolean delGoodsById(int goodsId);
    /**
     * 添加商品
     * @param goods 一个商品对象
     * @return
     */
    public boolean addGoods(Goods goods);
    /**
     * 查询所有商品信息
     * @return
     */
    public List<Goods> queryAll();
    
    public boolean updateGoods(Goods goods);
}
