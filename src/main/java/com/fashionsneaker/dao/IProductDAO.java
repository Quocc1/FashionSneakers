package com.fashionsneaker.dao;

import com.fashionsneaker.model.ProductModel;
import com.fashionsneaker.paging.Pageble;
import java.util.List;

public interface IProductDAO extends GenericDAO<ProductModel> {

    List<ProductModel> findAll(Pageble pageable);
    List<ProductModel> findByCategoryID(int categoryId);
    ProductModel findById(int id);
    int save(ProductModel productModel);
    void update(ProductModel productModel);
    void delete(int id);
    int getTotalItem();
}
