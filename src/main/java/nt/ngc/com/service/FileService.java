package nt.ngc.com.service;

import java.util.LinkedList;

import javax.servlet.http.HttpServletResponse;

import org.springframework.web.multipart.MultipartHttpServletRequest;

import nt.ngc.com.model.FileMeta;

public interface FileService {
    LinkedList<FileMeta> upLoadFile(MultipartHttpServletRequest request,
            HttpServletResponse response);
}
