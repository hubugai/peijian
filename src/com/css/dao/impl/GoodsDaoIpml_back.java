package com.css.dao.impl;

import java.util.List;
import com.css.dao.GoodsDao_back;
import com.css.entity.Goods;
import com.css.util.DBUtil;
import com.css.util.PageData;

public class GoodsDaoIpml_back implements GoodsDao_back{
     
	
	
		 /**
		 * 通过商品id删除商品信息
		 */
		@Override
		public boolean delGoodsById(int goodsId) {
			// TODO Auto-generated method stub
			String sql = "delete from goods where goodsId=?";
			return DBUtil.execute(sql,goodsId)>0;
		}

		@Override
		public boolean addGoods(Goods goods) {
			// TODO Auto-generated method stub
			String sql="insert into goods values(null,?,?,?,?,?,?,?)";
			return DBUtil.execute(sql, goods.getGoodsName(),goods.getGoodsPrice(),goods.getGoodsImag(),goods.getGoodsDetails(),goods.getGoodsNumber(),goods.getGoodsTypeId(),goods.getGoodsInfoId())>0;
					
		}

		@Override
		public List<Goods> queryAll() {
			// TODO Auto-generated method stub
			String sql="select * from goods";
			return (List<Goods>)DBUtil.select(sql, Goods.class);
		}

		@Override
		public boolean updateGoods(Goods goods) {
			// TODO Auto-generated method stub
			String sql="update goods set goodsName=?,goodsPrice=?,goodsDetails=?,goodsNumber=? where goodsId=?";
			return DBUtil.execute(sql, goods.getGoodsName(),goods.getGoodsPrice(),goods.getGoodsDetails(),goods.getGoodsNumber(),goods.getGoodsId())>0;
		}

}
