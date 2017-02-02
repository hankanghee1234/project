package org.team.domain;

import java.util.ArrayList;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public class UploadFileVO {

   private List<MultipartFile> file;
   
   /*public ArrayList<MultipartFile> getArrayList() {
	return arrayList;
}

public void setArrayList(ArrayList<MultipartFile> arrayList) {
	this.arrayList = arrayList;
}*/

/*private ArrayList<MultipartFile> arrayList;*/

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