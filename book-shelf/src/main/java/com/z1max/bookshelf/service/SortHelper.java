package com.z1max.bookshelf.service;

public class SortHelper {
    private String sortingBy;

    public SortHelper(String sortingBy) {
        this.sortingBy = sortingBy;
    }

    public String getSortingBy() {
        return sortingBy;
    }

    public void setSortingBy(String sortingBy) {
        this.sortingBy = sortingBy;
    }

    @Override
    public String toString() {
        return sortingBy;
    }
}
