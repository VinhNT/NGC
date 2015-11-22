package nt.ngc.com.service;

import java.io.IOException;
import java.util.LinkedList;

import javax.servlet.http.HttpServletResponse;

import org.springframework.web.multipart.MultipartHttpServletRequest;

import nt.ngc.com.model.FileMeta;

public interface FileService {

    LinkedList<FileMeta> upLoadFile(MultipartHttpServletRequest request, String userName);
    void downLoadFile(String fileId, String fileName, HttpServletResponse response) throws IOException;
}
