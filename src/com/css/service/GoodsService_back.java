package com.css.service;

import java.util.List;

import com.css.entity.Goods;
import com.css.util.PageData;

public interface GoodsService_back {
	
	
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
    public List<Goods> getAll();
    /**
     * 修改商品信息
     * @param goods
     * @return
     */
    public boolean updateGoods(Goods goods);
}
