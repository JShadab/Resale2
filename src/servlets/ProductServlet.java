package servlets;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import beans.Offer;
import beans.Product;
import beans.User;
import db.repo.OffersRepository;
import db.repo.ProductRepository;

@WebServlet(value = "/product")

@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 10, // 10 MB
		maxFileSize = 1024 * 1024 * 50, // 50 MB
		maxRequestSize = 1024 * 1024 * 100) // 100 MB
public class ProductServlet extends HttpServlet {

	private static final String POST_AD = "Post_Ad";
	private static final String EDIT_AD = "Edit_Ad";
	private static final String SHOW_AD = "Show_Ad";
	private static final String DELETE_AD = "DELETE_Ad";

	private static final String uploadFilePath = "D:\\eclipse-workspace\\Resale2\\WebContent\\uploads";

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String method = req.getParameter("method");

		if (EDIT_AD.equals(method)) {
			long id = Long.parseLong(req.getParameter("id"));

			Product product = ProductRepository.findProduct(id);

			req.setAttribute("product", product);

			req.getRequestDispatcher("/editPostAds.jsp").forward(req, resp);

			return;
			
		} else if (DELETE_AD.equals(method)) {
		}
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String method = req.getParameter("method");

		if (POST_AD.equals(method)) {
			postAd(req, resp);
			return;
		} else if (EDIT_AD.equals(method)) {
			editAd(req, resp);
			return;
		} else if (SHOW_AD.equals(method)) {
			req.getParameter("method");
			return;
		}
	}

	private void postAd(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.setContentType("text/html;charset=UTF-8");

		HttpSession session = request.getSession(false);

		if (session != null) {

			// Create path components to save the file
			String category = request.getParameter("category");
			String title = request.getParameter("title");
			String offerDesc = request.getParameter("offer");
			float price = Float.parseFloat(request.getParameter("price"));
			String description = request.getParameter("description");

			User user = (User) session.getAttribute("User");

			Product product = new Product();

			product.setCategory(category);
			product.setDescription(description);

			final Part filePart1 = request.getPart("file1");
			final Part filePart2 = request.getPart("file2");
			final Part filePart3 = request.getPart("file3");
			final Part filePart4 = request.getPart("file4");
			final Part filePart5 = request.getPart("file5");

			if (filePart1 != null) {
				final String fileName1 = getFileName(filePart1);
				filePart1.write(uploadFilePath + File.separator + fileName1);
				product.setImage1(fileName1);
			}

			if (filePart2 != null) {
				final String fileName2 = getFileName(filePart2);
				filePart2.write(uploadFilePath + File.separator + fileName2);
				product.setImage2(fileName2);
			}

			if (filePart3 != null) {
				final String fileName3 = getFileName(filePart3);
				filePart3.write(uploadFilePath + File.separator + fileName3);
				product.setImage3(fileName3);
			}

			if (filePart4 != null) {
				final String fileName4 = getFileName(filePart4);
				filePart4.write(uploadFilePath + File.separator + fileName4);
				product.setImage4(fileName4);
			}

			if (filePart5 != null) {
				final String fileName5 = getFileName(filePart5);
				filePart5.write(uploadFilePath + File.separator + fileName5);
				product.setImage5(fileName5);
			}

			Offer offer = new Offer();
			offer.setDescription(offerDesc);
			product.setOffer(offer);

			product.setPrice(price);
			product.setTitle(title);
			product.setUser(user);

			boolean isSuccess = ProductRepository.createProduct(product);

			if (isSuccess) {
				session.setAttribute("products", ProductRepository.getAllProduct());
				response.sendRedirect("/Resale2/allUserAds.jsp");
			}
		}

	}

	private void editAd(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.setContentType("text/html;charset=UTF-8");

		HttpSession session = request.getSession(false);

		long id = Long.parseLong(request.getParameter("id"));

		Product product = ProductRepository.findProduct(id);

		if (session != null) {

			// Create path components to save the file
			String category = request.getParameter("category");
			String title = request.getParameter("title");
			String offerDesc = request.getParameter("offer");
			float price = Float.parseFloat(request.getParameter("price"));
			String description = request.getParameter("description");

			User user = (User) session.getAttribute("User");

			product.setCategory(category);
			product.setDescription(description);

			final Part filePart1 = request.getPart("file1");
			final Part filePart2 = request.getPart("file2");
			final Part filePart3 = request.getPart("file3");
			final Part filePart4 = request.getPart("file4");
			final Part filePart5 = request.getPart("file5");

			if (filePart1 != null) {
				final String fileName1 = getFileName(filePart1);
				filePart1.write(uploadFilePath + File.separator + fileName1);
				product.setImage1(fileName1);
			}

			if (filePart2 != null) {
				final String fileName2 = getFileName(filePart2);
				filePart2.write(uploadFilePath + File.separator + fileName2);
				product.setImage2(fileName2);
			}

			if (filePart3 != null) {
				final String fileName3 = getFileName(filePart3);
				filePart3.write(uploadFilePath + File.separator + fileName3);
				product.setImage3(fileName3);
			}

			if (filePart4 != null) {
				final String fileName4 = getFileName(filePart4);
				filePart4.write(uploadFilePath + File.separator + fileName4);
				product.setImage4(fileName4);
			}

			if (filePart5 != null) {
				final String fileName5 = getFileName(filePart5);
				filePart5.write(uploadFilePath + File.separator + fileName5);
				product.setImage5(fileName5);
			}

			Offer offer = product.getOffer();
			offer.setDescription(offerDesc);
			product.setOffer(offer);

			product.setPrice(price);
			product.setTitle(title);
			product.setUser(user);

			boolean isSuccess = ProductRepository.updateProduct(product);
			OffersRepository.updateOffers(offer);

			if (isSuccess) {
				session.setAttribute("products", ProductRepository.getAllProduct());
				response.sendRedirect("/Resale2/allUserAds.jsp");
			}
		}
	}

	private String getFileName(final Part part) {
		// final String partHeader = part.getHeader("content-disposition");
		for (String content : part.getHeader("content-disposition").split(";")) {
			if (content.trim().startsWith("filename")) {
				return content.substring(content.indexOf('=') + 1).trim().replace("\"", "");
			}
		}
		return null;
	}
}
