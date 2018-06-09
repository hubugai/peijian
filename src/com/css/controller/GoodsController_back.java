package com.css.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.css.entity.Goods;
import com.css.service.GoodsService_back;
import com.css.service.impl.GoodsServiceImp_back;
import com.css.util.PageData;
import com.jspsmart.upload.SmartUpload;
import com.jspsmart.upload.SmartUploadException;

/**
 * Servlet implementation class GoodsController_back
 */
@WebServlet({ "/GoodsController_back", "/gcb" })
public class GoodsController_back extends HttpServlet {
	private static final long serialVersionUID = 1L;
	GoodsService_back gsb = new GoodsServiceImp_back();

	// 上传文件存储目录
	private static final String UPLOAD_DIRECTORY = "upload";

	// 上传配置
	private static final int MEMORY_THRESHOLD = 1024 * 1024 * 3; // 3MB
	private static final int MAX_FILE_SIZE = 1024 * 1024 * 40; // 40MB
	private static final int MAX_REQUEST_SIZE = 1024 * 1024 * 50; // 50MB

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public GoodsController_back() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		// 转格式防乱码保平安
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		// 如果要使用out,response要先使用下面操作
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();

		// 创建一个op来判断ArticleServlet要执行的是什么操作,ex:添加,展示table
		String whatOp = request.getParameter("op");

		// 判断op的字
		switch (whatOp) {

		// 后台删除商品信息
		case "delGoods":
			delGoods_back(request, response);
			break;
		case "addGoods":
			addGoods_back(request, response);
			break;
		case "queryGoods":
			queryGoods(request, response);
			break;
		case "updateGoods":
			updateGoods(request, response);
			break;
		default:
			break;
		}
	}

	/**
	 * 后台商品管理 根据商品Id删除商品信息
	 */
	protected void delGoods_back(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 获取参数
		int goodsId = Integer.parseInt(request.getParameter("goodsId"));
		// 创建对象
		GoodsService_back gs = new GoodsServiceImp_back();
		PrintWriter out = response.getWriter();
		boolean flag = gs.delGoodsById(goodsId);

		if (flag) {
			// 提示删除成功
			out.print("<script>alert('删除成功!');location.href='GoodsController_back?op=queryGoods'</script>");

		} else {
			// 提示删除成功
			out.print("<script>alert('删除失败!');location.href='GoodsController_back?op=queryGoods'</script>");
		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

	/**
	 * 后台商品管理 列表
	 * 
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	protected void queryGoods(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		// 获取数据库商品信息存在集合
		List<Goods> list = gsb.getAll();
		request.setAttribute("list", list);
		request.getRequestDispatcher("mvc/goods/ShowGoods.jsp").forward(request, response);
	}

	/**
	 * 修改商品信息
	 * 
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	protected void updateGoods(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		// 获取传递参数
		int goodsId = Integer.parseInt(request.getParameter("goodsId"));
		String goodsName = request.getParameter("goodsName");
		int goodsPrice = Integer.parseInt(request.getParameter("goodsPrice"));
		String goodsDetails = request.getParameter("goodsDetails");
		int goodsNumber = Integer.parseInt(request.getParameter("goodsNumber"));

		// 创建goods对象
		Goods goods = new Goods(goodsName, goodsPrice, goodsDetails, goodsNumber, goodsId);
		// 调用方法
		PrintWriter out = response.getWriter();
		boolean flag = gsb.updateGoods(goods);
		if (flag) {
			out.print("<script>alert('修改成功!');location.href='GoodsController_back?op=queryGoods'</script>");
		} else {
			out.print("<script>alert('修改失败!');location.href='GoodsController_back?op=queryGoods'</script>");
		}
	}

	/**
	 * 后台商品管理 添加商品
	 */
	protected void addGoods_back(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		// 检测是否为多媒体上传
		if (!ServletFileUpload.isMultipartContent(request)) {
			// 如果不是则停止
			PrintWriter writer = response.getWriter();
			writer.println("Error: 表单必须包含 enctype=multipart/form-data");
			writer.flush();
			return;
		}

		SmartUpload su = new SmartUpload();
		su.initialize(this.getServletConfig(), request, response);

		String realPath = "E:\\java\\eclipse\\CarServeSys1.0\\WebContent";
		String path = realPath + "\\front\\goods\\themes\\images\\products";
		su.setAllowedFilesList("gif,jpg");
		try {
			su.upload();
			int count = su.save(path);
		} catch (SmartUploadException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		// 获取表单参数//注意这是接收表单传过来的参数
		String goodsName = su.getRequest().getParameter("goodsName");
		goodsName = new String(goodsName.getBytes("GBK"), "utf-8");
		int goodsPrice = Integer.parseInt(su.getRequest().getParameter("goodsPrice"));
		String goodsImag = "front/goods/themes/images/products/" + su.getFiles().getFile(0).getFileName();
		goodsImag = new String(goodsImag.getBytes("GBK"), "utf-8");
		String goodsDetails = su.getRequest().getParameter("goodsDetails");
		goodsDetails = new String(goodsDetails.getBytes("GBK"), "utf-8");
		int goodsNumber = Integer.parseInt(su.getRequest().getParameter("goodsNumber"));
		int goodsTypeId = Integer.parseInt(su.getRequest().getParameter("goodsTypeId"));
		int goodsInfoId = 1;
		// 创建goods对象
		Goods goods = new Goods(goodsName, goodsPrice, goodsImag, goodsDetails, goodsNumber, goodsTypeId, goodsInfoId);
		// 调用增加方法
		GoodsService_back gsb = new GoodsServiceImp_back();
		PrintWriter out = response.getWriter();
		boolean flag = gsb.addGoods(goods);
		if (flag) {
			out.print("<script>alert('增加成功!');location.href='GoodsController_back?op=queryGoods'</script>");
		} else {
			out.print("<script>alert('增加失败!');location.href='GoodsController_back?op=queryGoods'</script>");
		}

	}

}
