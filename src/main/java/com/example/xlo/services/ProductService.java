package com.example.xlo.services;

import com.example.xlo.models.Product;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class ProductService {
    private List<Product> products = new ArrayList<>();
    private long ID = 0;
    {
        products.add(new Product(++ID,"PlayStation 5", "Simple", 40000, "Lviv", "Oleh"));
        products.add(new Product(++ID,"Iphone X", "Simple", 26000, "Kyiv", "Roman"));
    }

    public List<Product> listProducts() {
        return products;
    }
    public void saveProduct(Product product){
        product.setId(++ID);
        products.add(product);
    }
    public void deleteProduct(Long id){
        products.removeIf(product -> product.getId().equals(id));
    }
}
