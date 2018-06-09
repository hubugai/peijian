package com.css.entity;

public class Goods {
	
	private int goodsId;
	private String goodsName;
	private int goodsPrice;
	private String goodsImag;
	private String goodsDetails;
	private int goodsNumber;
	private int goodsTypeId;
	private int goodsInfoId;
	
	
	
	public Goods(String goodsName, int goodsPrice, String goodsDetails, int goodsNumber,int goodsId) {
		super();
		this.goodsId = goodsId;
		this.goodsName = goodsName;
		this.goodsPrice = goodsPrice;
		this.goodsDetails = goodsDetails;
		this.goodsNumber = goodsNumber;
	}
	public Goods(String goodsName, int goodsPrice, String goodsImag, String goodsDetails, int goodsNumber,
			int goodsTypeId, int goodsInfoId) {
		super();
		this.goodsName = goodsName;
		this.goodsPrice = goodsPrice;
		this.goodsImag = goodsImag;
		this.goodsDetails = goodsDetails;
		this.goodsNumber = goodsNumber;
		this.goodsTypeId = goodsTypeId;
		this.goodsInfoId = goodsInfoId;
	}
	public Goods(int goodsId, String goodsName, int goodsPrice, String goodsImag, String goodsDetails, int goodsNumber,
			int goodsTypeId, int goodsInfoId) {
		super();
		this.goodsId = goodsId;
		this.goodsName = goodsName;
		this.goodsPrice = goodsPrice;
		this.goodsImag = goodsImag;
		this.goodsDetails = goodsDetails;
		this.goodsNumber = goodsNumber;
		this.goodsTypeId = goodsTypeId;
		this.goodsInfoId = goodsInfoId;
	}
	public Goods() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getGoodsId() {
		return goodsId;
	}
	public void setGoodsId(int goodsId) {
		this.goodsId = goodsId;
	}
	public String getGoodsName() {
		return goodsName;
	}
	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
	}
	public int getGoodsPrice() {
		return goodsPrice;
	}
	public void setGoodsPrice(int goodsPrice) {
		this.goodsPrice = goodsPrice;
	}
	public String getGoodsImag() {
		return goodsImag;
	}
	public void setGoodsImag(String goodsImag) {
		this.goodsImag = goodsImag;
	}
	public String getGoodsDetails() {
		return goodsDetails;
	}
	public void setGoodsDetails(String goodsDetails) {
		this.goodsDetails = goodsDetails;
	}
	public int getGoodsNumber() {
		return goodsNumber;
	}
	public void setGoodsNumber(int goodsNumber) {
		this.goodsNumber = goodsNumber;
	}
	public int getGoodsTypeId() {
		return goodsTypeId;
	}
	public void setGoodsTypeId(int goodsTypeId) {
		this.goodsTypeId = goodsTypeId;
	}
	public int getGoodsInfoId() {
		return goodsInfoId;
	}
	public void setGoodsInfoId(int goodsInfoId) {
		this.goodsInfoId = goodsInfoId;
	}
	@Override
	public String toString() {
		return "Goods [goodsId=" + goodsId + ", goodsName=" + goodsName + ", goodsPrice=" + goodsPrice + ", goodsImag="
				+ goodsImag + ", goodsDetails=" + goodsDetails + ", goodsNumber=" + goodsNumber + ", goodsTypeId="
				+ goodsTypeId + ", goodsInfoId=" + goodsInfoId + "]";
	}
	
	
	
	
	
	
	
	

}
