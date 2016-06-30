package services;

import DAOs.CategoryDAO;
import entity.Category;

import java.util.List;

/**
 * Created by Вадимка on 30.04.16.
 */
public class CategoryService implements CategoryServiceInterface {

    private CategoryDAO categoryDAO;

    CategoryService(CategoryDAO categoryDAO) {
        this.categoryDAO = categoryDAO;
    }

    @Override
    public List<Category> getCategories() {
        return categoryDAO.getTableRows();
    }

    @Override
    public Category getCategoryById(int id) {
        return categoryDAO.getRowById(id);
    }

    @Override
    public void addCategory(Category category) {
        categoryDAO.save(category);
    }

    @Override
    public void updateCategory(Category category) {
        categoryDAO.update(category);
    }

    @Override
    public void deleteCategory(Category category) {
        categoryDAO.delete(category);
    }

}
