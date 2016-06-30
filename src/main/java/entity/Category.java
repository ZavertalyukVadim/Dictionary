package entity;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Вадимка on 17.04.16.
 */
@Entity
@Table(name = "category")
public class Category {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;

    private String name;

    @Column(name = "linked_image_address")
    private String linkedImageAddress;

    @OneToMany(fetch = FetchType.EAGER, mappedBy = "category")
    private List<Word> words = new ArrayList<Word>();

    public Category(){}

    public Category(String name, String linkedImageAddress) {
        this.name = name;
        this.linkedImageAddress = linkedImageAddress;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getLinkedImageAddress() {
        return linkedImageAddress;
    }

    public void setLinkedImageAddress(String linkedImageAddress) {
        this.linkedImageAddress = linkedImageAddress;
    }

    public List<Word> getWords() {
        return words;
    }

    public void setWords(List<Word> words) {
        this.words = words;
    }
}
