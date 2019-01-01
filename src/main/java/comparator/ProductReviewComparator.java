package comparator;

import com.how2java.tmall.pojo.Product;

import java.util.Comparator;

public class ProductReviewComparator implements Comparator<Product> {

    @Override
    public int compare(Product product1, Product product2) {
        return product2.getReviewCount()-product1.getReviewCount();
    }
}
