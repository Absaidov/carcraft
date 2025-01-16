package org.carcraft.backend.service;

import org.carcraft.backend.entity.FormData;
import org.carcraft.backend.repository.FormDataRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class FormDataService {

    @Autowired
    private FormDataRepository formDataRepository;

    public List<FormData> getAllFormData() {
        return formDataRepository.findAll();
    }

    public FormData saveFormData(FormData formData) {
        return formDataRepository.save(formData);
    }

    public void deleteFormData(Long id) {
        formDataRepository.deleteById(id);
    }
}
