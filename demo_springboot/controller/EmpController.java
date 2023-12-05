package com.example.demo_springboot.controller;

import com.example.demo_springboot.dto.EmpDTO;
import com.example.demo_springboot.entity.EmpDetail;
import com.example.demo_springboot.repo.EmpRepo;
import com.example.demo_springboot.service.EmpService;
import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.pdf.PdfWriter;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.io.ByteArrayOutputStream;
import java.util.Optional;

@RestController
@RequestMapping("/api/pdf")
/**
 * This is a class created for employers
 */
public class EmpController {
    //pdf generate and download
    private final EmpRepo empRepo;
    @Autowired
    private EmpService empService;

    public EmpController(EmpRepo empRepo) {
        this.empRepo = empRepo;
    }

//    @GetMapping("/generate")
//    /**
//     * Method performs exception handling in pdf generation
//     */
//    public ResponseEntity<byte[]> generateAndDownloadPdf() throws DocumentException {
//     try {
//            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
//
//            Document document = new Document();
//            PdfWriter.getInstance(document, byteArrayOutputStream);
//            document.open();
//
//            for (EmpDetail empDetail : empService.getDetails(1, 3)) {
//                document.add(new Paragraph("Employee details"));
//                document.add(new Paragraph("Name: " + empDetail.getName()));
//                document.add(new Paragraph("Age: " + empDetail.getAge()));
//                document.add(new Paragraph("Phone: " + empDetail.getPhone()));
//                document.add(new Paragraph("--------------------------------"));
//                //testing whether exception handles
//                int result=1/0;
//            }
//
//            document.close();
//
//            HttpHeaders headers = new HttpHeaders();
//
//
//            headers.setContentType(MediaType.APPLICATION_PDF);
//            headers.setContentDispositionFormData("filename", "generated.pdf");
//            headers.add("Custom-Header", "Custom Value");
//            return ResponseEntity
//                    .ok()
//                    .headers(headers)
//                    .body(byteArrayOutputStream.toByteArray());
//
//        } catch (ArithmeticException e) {
//            e.printStackTrace();
//
//
//            return ResponseEntity
//                    .status(HttpStatus.INTERNAL_SERVER_ERROR)
//                    .body("PDF generation failed.".getBytes());
//        }
//    }


//    @GetMapping
//    public ResponseEntity<Page<EmpDetail>> getDetails(
//            @RequestParam(name = "pageNo", defaultValue = "1") Integer pageNo,
//            @RequestParam(name = "pageSize", defaultValue = "10") Integer pageSize) {
//        Page<EmpDetail> pagedResult = empService.getDetails(pageNo, pageSize);
//        return ResponseEntity.ok(pagedResult);
//    }

    /**
     *
     * @param empDTO
     * @return
     */
    @PostMapping
    public ResponseEntity<Object> newEmpDetail(@Valid @RequestBody EmpDTO empDTO) {
        EmpDetail savedEmpDetail = empService.newEmpDetail(empDTO);
        return ResponseEntity.status(HttpStatus.CREATED).body(savedEmpDetail);
    }

    @GetMapping("/details/{id}")
    public Optional<Optional<EmpDetail>> getEmpDetailById(@PathVariable("id") Integer empId) {
        return empService.getEmpDetailById(empId);
    }
    @RequestMapping(value = "/details/findByName",method = RequestMethod.GET)
    public EmpDetail getEmpDetailByName(String empName) {
        return empService.getEmpDetailByName(empName);
    }
//    @GetMapping("/findByName")
//    public ResponseEntity<EmpDetail> getEmpDetailByName(@RequestParam("empName") String empName) {
//        EmpDetail empDetail = empService.getEmpDetailByName(empName);
//        if (empDetail != null) {
//            return ResponseEntity.ok(empDetail);
//        } else {
//            return ResponseEntity.notFound().build();
//        }
//    }

    @PutMapping
    public ResponseEntity<EmpDetail> updateEmpDetail(@RequestBody EmpDetail changeEmpDetail) {
        EmpDetail updatedEmpDetail = empService.updateEmpDetail(changeEmpDetail);
        return ResponseEntity.ok(updatedEmpDetail);
    }

    @DeleteMapping("/{empId}")
    public ResponseEntity<String> deleteById(@PathVariable("empId") Integer empId) {
        String result = empService.deleteById(empId);
        return ResponseEntity.ok(result);
    }

//    @GetMapping("/generate")
//    public ResponseEntity<String> exampleEndpoint(
//            @RequestParam("pageNumber") String requestParam,
//            @RequestHeader("customHeader") String customHeader) {
//
//        HttpHeaders responseHeaders = new HttpHeaders();
//        responseHeaders.add("X-Custom-Header", "HeaderParam");
//        String response = "pageNumber: " + requestParam + "\n" +
//                "Custom Header: " + customHeader;
//
//        return ResponseEntity.ok()
//                .headers(responseHeaders)
//                .body(response);
//    }


}


