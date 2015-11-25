package nt.ngc.com.controller;

import java.io.IOException;
import java.util.LinkedList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import nt.ngc.com.model.FileMeta;
import nt.ngc.com.service.FileService;

@Controller
public class FileController {

    @Autowired
    private FileService fileService;

    @Value("${uploadfile.failed.message}")
    private String failedMessage;

    @Value("${ckEditor.upload.script}")
    private String ckUploadResponse;

    @RequestMapping("files/ckEditorUpload")
    public @ResponseBody String ckUpload(MultipartHttpServletRequest request, @RequestParam("CKEditorFuncNum") String fNum,
            HttpServletRequest hRequest) {
        String baseUrl = hRequest.getContextPath();
        LinkedList<FileMeta> uploadMeta = fileService.upLoadFile(request, getCurrentLoginId());
        String result;
        if (!uploadMeta.isEmpty() && uploadMeta.getFirst().isUploaded()) {
            FileMeta uploadedMeta = uploadMeta.getFirst();
            result = String.format(ckUploadResponse, fNum, baseUrl + uploadedMeta.getFileDownLoadUrl(), "Success");
            return result;
        }

        return failedMessage;
    }

    @RequestMapping("/files/secured/upload")
    public @ResponseBody LinkedList<FileMeta> securedUpload(MultipartHttpServletRequest request, HttpServletResponse response) {
        return fileService.upLoadFile(request, getCurrentLoginId());
    }

    private String getCurrentLoginId() {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        return auth == null ? "" : auth.getName();
    }

    @RequestMapping("/files/{fId}/{fileName:.+}")
    public void getFileStream(@PathVariable("fId") String fileId, @PathVariable("fileName") String fileName, HttpServletResponse response)
            throws IOException {
        fileService.downLoadFile(fileId, fileName, response);
    }
}
