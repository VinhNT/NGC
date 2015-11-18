package nt.ngc.com.service.impl;

import java.io.IOException;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedList;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import nt.ngc.com.dao.BinaryFileRepository;
import nt.ngc.com.entities.BinaryFile;
import nt.ngc.com.model.FileMeta;
import nt.ngc.com.service.FileService;
import nt.ngc.com.utils.Utils;

@Component
public class FileServiceImpl implements FileService {

    @Value("${uploadfile.savedfolder}")
    private String savedFolderPath;

    @Autowired
    private BinaryFileRepository bfRepository;

    @Override
    public LinkedList<FileMeta> upLoadFile(MultipartHttpServletRequest request,
            HttpServletResponse response, String userName) {
        LinkedList<FileMeta> files = new LinkedList<FileMeta>();
        String fileId = Utils.generateBase64IdFromTimeStamps();
        boolean isExisting;

        do {
            isExisting = bfRepository.countBinaryWithId(fileId) > 0;
            fileId = Utils.generateBase64IdFromTimeStamps();
        } while (isExisting);

        FileMeta fileMeta = null;
        // 1. build an iterator
        Iterator<String> itr = request.getFileNames();
        MultipartFile mpf = null;
        BinaryFile binaryFile = new BinaryFile(fileId);
        binaryFile.setUploader(userName);
        binaryFile.setTimestamp(new Date(System.currentTimeMillis()));
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
                binaryFile.setBinarydata(mpf.getBytes());
                bfRepository.save(binaryFile);
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
