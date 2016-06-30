package services;

import entity.Category;

import java.util.List;

/**
 * Created by Вадимка on 30.04.16.
 */
public interface CategoryServiceInterface {

    List<Category> getCategories();
    Category getCategoryById(int id);
    void addCategory(Category category);
    void updateCategory(Category category);
    void deleteCategory(Category category);

}
