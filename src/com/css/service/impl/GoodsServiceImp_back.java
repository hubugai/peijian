package com.css.service.impl;

import java.util.List;

import com.css.dao.GoodsDao_back;
import com.css.dao.impl.GoodsDaoIpml_back;
import com.css.entity.Goods;
import com.css.service.GoodsService_back;

public class GoodsServiceImp_back implements GoodsService_back {
	GoodsDao_back gdb=new GoodsDaoIpml_back();
	@Override
	public boolean delGoodsById(int goodsId) {
		// TODO Auto-generated method stub
		return gdb.delGoodsById(goodsId);
	}
	@Override
	public boolean addGoods(Goods goods) {
		// TODO Auto-generated method stub
		return gdb.addGoods(goods);
	}
	@Override
	public List<Goods> getAll() {
		// TODO Auto-generated method stub
		return gdb.queryAll();
	}
	@Override
	public boolean updateGoods(Goods goods) {
		// TODO Auto-generated method stub
		return gdb.updateGoods(goods);
	}

}
