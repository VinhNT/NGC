package nt.ngc.com.service.impl;

import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Iterator;
import java.util.LinkedList;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import nt.ngc.com.model.FileMeta;
import nt.ngc.com.service.FileService;

@Component
public class FileServiceImpl implements FileService {

    @Value("${uploadfile.savedfolder}")
    private String savedFolderPath;

    @Override
    public LinkedList<FileMeta> upLoadFile(MultipartHttpServletRequest request,
            HttpServletResponse response) {
        LinkedList<FileMeta> files = new LinkedList<FileMeta>();
        FileMeta fileMeta = null;
        // 1. build an iterator
        Iterator<String> itr = request.getFileNames();
        MultipartFile mpf = null;
        // 2. get each file
        while (itr.hasNext()) {
            // 2.1 get next MultipartFile
            mpf = request.getFile(itr.next());
            // 2.3 create new fileMeta
            fileMeta = new FileMeta();
            fileMeta.setFileName(mpf.getOriginalFilename());
            fileMeta.setFileSize(mpf.getSize() / 1024 + " Kb");
            fileMeta.setFileType(mpf.getContentType());
            fileMeta.setUploaded(true);
            try {
                fileMeta.setBytes(mpf.getBytes());
                // copy file to local disk (make sure the path "e.g. D:/temp/files" exists)
                FileCopyUtils.copy(mpf.getBytes(),
                        new FileOutputStream(savedFolderPath + mpf.getOriginalFilename()));
            } catch (IOException e) {
                fileMeta.setUploaded(false);
                fileMeta.setErrMessage(e.getMessage());
            }
            // 2.4 add to files
            files.add(fileMeta);
        }
        return files;
    }
}
