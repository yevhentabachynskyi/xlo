package com.example.xlo.services;

import com.example.xlo.models.Product;
import com.example.xlo.repositories.ProductRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
@Slf4j
@RequiredArgsConstructor
public class ProductService {
    private final ProductRepository productRepository;
//    private List<Product> products = new ArrayList<>();
//    private long ID = 0;
//    {
//        products.add(new Product(++ID,"PlayStation 5 ", "Simple", 40000, "Lviv", "Oleh"));
//        products.add(new Product(++ID,"Iphone X ", "Simple", 26000, "Kyiv", "Roman"));
//    }

    public List<Product> listProducts(String title) {
        List<Product> products = productRepository.findAll();
        if(title != null) return productRepository.findByTitle(title);
        return productRepository.findAll();
    }
    public void saveProduct(Product product){
        log.info("Saving new {}", product);
        productRepository.save(product);
    }
    public void deleteProduct(Long id){
        productRepository.deleteById(id);
    }

    public Product getProductById(Long id) {
        return productRepository.findById(id).orElse(null);
    }
}
