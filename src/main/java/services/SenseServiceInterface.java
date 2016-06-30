package services;

import entity.Sense;

import java.util.List;

/**
 * Created by Вадимка on 30.04.16.
 */
public interface SenseServiceInterface {

    List<Sense> getSenses();
    Sense getSenseById(int id);
    void addSense(Sense sense);
    void updateSense(Sense sense);
    void deleteSense(Sense sense);

}
