package services;

import DAOs.SenseDAO;
import entity.Sense;

import java.util.List;

/**
 * Created by Вадимка on 30.04.16.
 */
public class SenseService implements SenseServiceInterface {

    private SenseDAO senseDAO;

    SenseService(SenseDAO senseDAO) {
        this.senseDAO = senseDAO;
    }

    @Override
    public List<Sense> getSenses() {
        return senseDAO.getTableRows();
    }

    @Override
    public Sense getSenseById(int id) {
        return senseDAO.getRowById(id);
    }

    @Override
    public void addSense(Sense sense) {
        senseDAO.save(sense);
    }

    @Override
    public void updateSense(Sense sense) {
        senseDAO.update(sense);
    }

    @Override
    public void deleteSense(Sense sense) {
        senseDAO.delete(sense);
    }

}
