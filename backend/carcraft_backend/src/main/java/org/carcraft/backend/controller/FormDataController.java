package org.carcraft.backend.controller;


import org.carcraft.backend.entity.FormData;
import org.carcraft.backend.service.FormDataService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/form-data")
public class FormDataController {

    @Autowired
    private FormDataService formDataService;

    @GetMapping
    public List<FormData> getAllFormData() {
        return formDataService.getAllFormData();
    }

    @PostMapping
    public FormData createFormData(@RequestBody FormData formData) {
        return formDataService.saveFormData(formData);
    }

    @DeleteMapping("/{id}")
    public void deleteFormData(@PathVariable Long id) {
        formDataService.deleteFormData(id);
    }
}
