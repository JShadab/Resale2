package servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.Product;
import beans.User;
import db.repo.ProductRepository;
import db.repo.UserRepository;
import enums.RoleLevel;

@WebServlet(value = "/user")
public class UserServlet extends HttpServlet {

	private static final String SIGN_IN = "SignIn";
	private static final String SIGN_UP = "SignUp";
	private static final String POST_AD = "Post_Ad";

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String method = req.getParameter("method");

		if (SIGN_IN.equals(method)) {
			signIn(req, resp);
			return;

		} else if (SIGN_UP.equals(method)) {
			signUp(req, resp);
			return;
		} else if (POST_AD.equals(method)) {
			postAd(req, resp);
			return;
		}
	}

	private void signIn(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String email = req.getParameter("email");
		String password = req.getParameter("password");

		User user = UserRepository.findUser(email, password);

		if (user != null) {
			req.getSession(true).setAttribute("User", user);
			req.setAttribute("msg", "Login Successful..");
			req.getRequestDispatcher("/index.jsp").forward(req, resp);
		} else {
			req.setAttribute("msg", "Login failed..");
			req.getRequestDispatcher("/signin.jsp").forward(req, resp);
		}
	}

	private void signUp(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String name = req.getParameter("Name");
		String email = req.getParameter("Email");
		String contact = req.getParameter("Mobile");
		String password = req.getParameter("Password");
		String category = req.getParameter("category");
		String addressLine1 = req.getParameter("AddressLine1");
		String addressLine2 = req.getParameter("AddressLine2");
		String city = req.getParameter("City");
		String state = req.getParameter("State");
		String pincode = req.getParameter("PinCode");

		User user = new User();

		user.setAddressLine1(addressLine1);
		user.setAddressLine2(addressLine2);
		user.setCategory(category);
		user.setCity(city);
		user.setContact(contact);
		user.setEmail(email);
		user.setName(name);
		user.setPassword(password);
		user.setPincode(pincode);
		user.setRoleLevel(RoleLevel.USER.toString());
		user.setState(state);

		boolean isSuccess = UserRepository.createUser(user);

		if (isSuccess) {
			resp.sendRedirect("/Resale2/signin.jsp");
		}

	}

	private void postAd(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		HttpSession session = req.getSession(false);

		if (session != null) {

			User user = (User) session.getAttribute("User");

			String category = req.getParameter("category");
			String title = req.getParameter("title");
			String offer = req.getParameter("offer");
			String description = req.getParameter("description");
			String imageSize = req.getParameter("imageSize");
			String image = req.getParameter("image");

			Product product = new Product();

			product.setCategory(category);
			product.setDescription(description);
			product.setImage(image);
			product.setOffer(offer);
			// product.setPrice(price);
			product.setTitle(title);
			product.setUser(user);

			boolean isSuccess = ProductRepository.createProduct(product);

			if (isSuccess) {
				session.setAttribute("products", ProductRepository.getAllProduct());
				resp.sendRedirect("/Resale2/allUserAds.jsp");
			}
		}

	}
}
