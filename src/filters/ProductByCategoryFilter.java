package filters;

import java.io.IOException;
import java.util.List;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

import beans.Product;
import db.repo.ProductRepository;

@WebFilter(urlPatterns = { "/products.jsp" })
public class ProductByCategoryFilter implements Filter {

	@Override
	public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain)
			throws IOException, ServletException {

		String category = req.getParameter("category");

		if (category != null) {

			List<Product> products = ProductRepository.getAllProduct(category);

			req.setAttribute("products", products);
		}

		chain.doFilter(req, resp);

	}

}
