package org.team.domain;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public class UploadFileVO {

   private List<MultipartFile> file;

   public List<MultipartFile> getFile() {
      return file;
   }

   public void setFile(List<MultipartFile> file) {
      this.file = file;
   }

   @Override
   public String toString() {
      return "UploadFileVO [file=" + file + "]";
   }
   
   
}