package nt.ngc.com.controller;

import java.util.LinkedList;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import nt.ngc.com.model.FileMeta;
import nt.ngc.com.service.FileService;

@Controller
public class FileController {

    @Autowired
    private FileService fileService;

    @RequestMapping("files/upload")
    public @ResponseBody LinkedList<FileMeta> upload(MultipartHttpServletRequest request,
            HttpServletResponse response) {
        return fileService.upLoadFile(request, response, getCurrentLoginId());
    }

    @RequestMapping("secured/files/upload")
    public @ResponseBody LinkedList<FileMeta> securedUpload(MultipartHttpServletRequest request,
            HttpServletResponse response) {
        return fileService.upLoadFile(request, response, getCurrentLoginId());
    }

    private String getCurrentLoginId() {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        return auth == null ? "" : auth.getName();
    }
}
