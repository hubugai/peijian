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

	// �ϴ��ļ��洢Ŀ¼
	private static final String UPLOAD_DIRECTORY = "upload";

	// �ϴ�����
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
		// ת��ʽ�����뱣ƽ��
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		// ���Ҫʹ��out,responseҪ��ʹ���������
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();

		// ����һ��op���ж�ArticleServletҪִ�е���ʲô����,ex:���,չʾtable
		String whatOp = request.getParameter("op");

		// �ж�op����
		switch (whatOp) {

		// ��̨ɾ����Ʒ��Ϣ
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
	 * ��̨��Ʒ���� ������ƷIdɾ����Ʒ��Ϣ
	 */
	protected void delGoods_back(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// ��ȡ����
		int goodsId = Integer.parseInt(request.getParameter("goodsId"));
		// ��������
		GoodsService_back gs = new GoodsServiceImp_back();
		PrintWriter out = response.getWriter();
		boolean flag = gs.delGoodsById(goodsId);

		if (flag) {
			// ��ʾɾ���ɹ�
			out.print("<script>alert('ɾ���ɹ�!');location.href='GoodsController_back?op=queryGoods'</script>");

		} else {
			// ��ʾɾ���ɹ�
			out.print("<script>alert('ɾ��ʧ��!');location.href='GoodsController_back?op=queryGoods'</script>");
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
	 * ��̨��Ʒ���� �б�
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
		// ��ȡ���ݿ���Ʒ��Ϣ���ڼ���
		List<Goods> list = gsb.getAll();
		request.setAttribute("list", list);
		request.getRequestDispatcher("mvc/goods/ShowGoods.jsp").forward(request, response);
	}

	/**
	 * �޸���Ʒ��Ϣ
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
		// ��ȡ���ݲ���
		int goodsId = Integer.parseInt(request.getParameter("goodsId"));
		String goodsName = request.getParameter("goodsName");
		int goodsPrice = Integer.parseInt(request.getParameter("goodsPrice"));
		String goodsDetails = request.getParameter("goodsDetails");
		int goodsNumber = Integer.parseInt(request.getParameter("goodsNumber"));

		// ����goods����
		Goods goods = new Goods(goodsName, goodsPrice, goodsDetails, goodsNumber, goodsId);
		// ���÷���
		PrintWriter out = response.getWriter();
		boolean flag = gsb.updateGoods(goods);
		if (flag) {
			out.print("<script>alert('�޸ĳɹ�!');location.href='GoodsController_back?op=queryGoods'</script>");
		} else {
			out.print("<script>alert('�޸�ʧ��!');location.href='GoodsController_back?op=queryGoods'</script>");
		}
	}

	/**
	 * ��̨��Ʒ���� �����Ʒ
	 */
	protected void addGoods_back(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		// ����Ƿ�Ϊ��ý���ϴ�
		if (!ServletFileUpload.isMultipartContent(request)) {
			// ���������ֹͣ
			PrintWriter writer = response.getWriter();
			writer.println("Error: ��������� enctype=multipart/form-data");
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
		// ��ȡ������//ע�����ǽ��ձ��������Ĳ���
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
		// ����goods����
		Goods goods = new Goods(goodsName, goodsPrice, goodsImag, goodsDetails, goodsNumber, goodsTypeId, goodsInfoId);
		// �������ӷ���
		GoodsService_back gsb = new GoodsServiceImp_back();
		PrintWriter out = response.getWriter();
		boolean flag = gsb.addGoods(goods);
		if (flag) {
			out.print("<script>alert('���ӳɹ�!');location.href='GoodsController_back?op=queryGoods'</script>");
		} else {
			out.print("<script>alert('����ʧ��!');location.href='GoodsController_back?op=queryGoods'</script>");
		}

	}

}
