package nt.ngc.com.controller;

import java.io.IOException;
import java.util.LinkedList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import nt.ngc.com.model.FileMeta;
import nt.ngc.com.service.FileService;

@Controller
public class FileController {

    @Autowired
    private FileService fileService;

    @RequestMapping("files/ckEditorUpload")
    public @ResponseBody ModelAndView upload(MultipartHttpServletRequest request, HttpServletRequest servletRequest) {
        ModelAndView mv = new ModelAndView();
        LinkedList<FileMeta> uploadMeta = fileService.upLoadFile(request, getCurrentLoginId());
    }

    @RequestMapping("/files/secured/upload")
    public @ResponseBody LinkedList<FileMeta> securedUpload(MultipartHttpServletRequest request, HttpServletResponse response) {
        return fileService.upLoadFile(request, response, getCurrentLoginId());
    }

    private String getCurrentLoginId() {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        return auth == null ? "" : auth.getName();
    }

    @RequestMapping("/files/{fId}/{fileName:.+}")
    public void getFileStream(@PathVariable("fId") String fileId, @PathVariable("fileName") String fileName, HttpServletResponse response) throws IOException {
        fileService.downLoadFile(fileId, fileName, response);
    }
}
