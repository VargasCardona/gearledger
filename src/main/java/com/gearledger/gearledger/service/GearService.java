package com.gearledger.gearledger.service;

import com.gearledger.gearledger.model.Gear;
import com.gearledger.gearledger.repository.GearRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class GearService {

    @Autowired
    private GearRepository gearRepository;

    public List<Gear> getAllGear() {
        return gearRepository.findAll();
    }

    public Optional<Gear> getGearById(Long id) {
        return gearRepository.findById(id);
    }

    public Gear saveGear(Gear gear) {
        return gearRepository.save(gear);
    }

    public void deleteGear(Long id) {
        gearRepository.deleteById(id);
    }
}
