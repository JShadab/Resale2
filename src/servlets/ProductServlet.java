package servlets;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.logging.Level;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import beans.Product;
import beans.User;
import db.repo.ProductRepository;

@WebServlet(value = "/product")

@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 10, // 10 MB
		maxFileSize = 1024 * 1024 * 50, // 50 MB
		maxRequestSize = 1024 * 1024 * 100) // 100 MB
public class ProductServlet extends HttpServlet {

	private static final String POST_AD = "Post_Ad";

	private static final String uploadFilePath = "C:\\WorkSpace_2019_March\\Resale2\\WebContent\\uploads";

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String method = req.getParameter("method");

		if (POST_AD.equals(method)) {
			postAd(req, resp);
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
			String offer = request.getParameter("offer");
			String description = request.getParameter("description");

			final Part filePart = request.getPart("file");
			final String fileName = getFileName(filePart);

			filePart.write(uploadFilePath + File.separator + fileName);

			User user = (User) session.getAttribute("User");

			Product product = new Product();

			product.setCategory(category);
			product.setDescription(description);
			product.setImage(fileName);
			product.setOffer(offer);
			// product.setPrice(price);
			product.setTitle(title);
			product.setUser(user);

			boolean isSuccess = ProductRepository.createProduct(product);

			if (isSuccess) {
				session.setAttribute("products", ProductRepository.getAllProduct());
				response.sendRedirect("/Resale2/allUserAds.jsp");
			}
		}

	}

	private String getFileName(final Part part) {
		final String partHeader = part.getHeader("content-disposition");
		for (String content : part.getHeader("content-disposition").split(";")) {
			if (content.trim().startsWith("filename")) {
				return content.substring(content.indexOf('=') + 1).trim().replace("\"", "");
			}
		}
		return null;
	}
}
