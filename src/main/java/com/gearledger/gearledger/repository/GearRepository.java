package com.gearledger.gearledger.repository;

import com.gearledger.gearledger.model.Gear;
import org.springframework.data.jpa.repository.JpaRepository;

public interface GearRepository extends JpaRepository<Gear, Long> {
}
