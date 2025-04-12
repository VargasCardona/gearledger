package com.gearledger.gearledger.controller;

import com.gearledger.gearledger.model.Gear;
import com.gearledger.gearledger.service.GearService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/api/gear")
public class GearController {

    @Autowired
    private GearService gearService;

    @GetMapping
    public List<Gear> getAllGear() {
        return gearService.getAllGear();
    }

    @GetMapping("/{id}")
    public Optional<Gear> getGearById(@PathVariable Long id) {
        return gearService.getGearById(id);
    }

    @PostMapping
    public Gear createGear(@RequestBody Gear gear) {
        return gearService.saveGear(gear);
    }

    @PutMapping("/{id}")
    public Gear updateGear(@PathVariable Long id, @RequestBody Gear gear) {
        gear.setId(id);
        return gearService.saveGear(gear);
    }

    @DeleteMapping("/{id}")
    public void deleteGear(@PathVariable Long id) {
        gearService.deleteGear(id);
    }
}
