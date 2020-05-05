package com.cognizant.ormlearn.repository;

import org.springframework.stereotype.Repository;
import com.cognizant.ormlearn.model.Country;
import org.springframework.data.jpa.repository.JpaRepository;
@Repository
public interface CountryRepository extends JpaRepository<Country, String> {
}
