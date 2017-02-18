package org.team.util;

import java.awt.Color;
import java.awt.Dimension;
import java.awt.Graphics2D;
import java.awt.geom.AffineTransform;
import java.awt.geom.Rectangle2D;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.List;

import javax.imageio.ImageIO;

import org.apache.pdfbox.pdmodel.PDDocument;
import org.apache.pdfbox.rendering.PDFRenderer;
import org.apache.poi.xslf.usermodel.XMLSlideShow;
import org.apache.poi.xslf.usermodel.XSLFSlide;

public class PDFConvertor {
	// 서버저장경로명
	static final String findPath = "C:\\zzz\\pptdesc\\";
	
	static final String savedPath = "C:\\zzz\\pptdesc\\";

	public static void main(String[] args) throws Exception {
		// 확장자명까지 작성해주어야함.
		PDFConvertor.JPGconvertor("test2.pptx");
	}

	public static ArrayList<String> JPGconvertor(String Name) throws Exception {
		/*String arr[] = new String[9999];*/
		
		ArrayList<String> arr = new ArrayList<>();
		File file = new File(findPath + Name);
		
		/*arr[0]= "finish";*/
		
		arr.add("finish");
		
		String filePath = file.getAbsolutePath();
		String fileStyle = filePath.substring(filePath.lastIndexOf("."));
		
		System.out.println(filePath.substring(filePath.lastIndexOf(".")));

		switch (fileStyle) {
		
		case ".pdf":
			System.out.println("PDF로...");
			return PDFConvertor.PDFtoJPG(Name);
			
		case ".pptx":
			System.out.println("ppt로...");
			
			return PDFConvertor.PPTXtoJPG(Name); 
			/*break;*/
		}
		return arr;
	}

	public static ArrayList<String> PDFtoJPG(String PDFName) throws Exception {
		// 저장된 파일을 읽어들이는부분..
		File file = new File(findPath + PDFName);
		
		PDDocument doc = PDDocument.load(file, "utf-8");
		
		PDFRenderer renderer = new PDFRenderer(doc);

		ArrayList<String> pdfName = new ArrayList<>();
		
		
		
		
		for (int i = 0; i < doc.getNumberOfPages(); i++) {
		
			BufferedImage image = renderer.renderImageWithDPI(i, 130);
			
			pdfName.add((i + 1) + " - " +PDFName + ".jpg");
			
			File PDF = new File(String.format("%s/%d - " + PDFName + ".jpg", savedPath, (i + 1)));
			
			ImageIO.write(image, "JPEG", PDF);
		}
		doc.close();
		
		return pdfName;
	}

	public static ArrayList<String> PPTXtoJPG(String PPTName) throws Exception {
		
		FileInputStream is = new FileInputStream(findPath + PPTName);
		
		XMLSlideShow ppt = new XMLSlideShow(is);
		is.close();
		
		double zoom = 2;
		
		AffineTransform at = new AffineTransform();
		at.setToScale(zoom, zoom);

		Dimension pgsize = ppt.getPageSize();
		
		List<XSLFSlide> slide = ppt.getSlides();
		
		/*String name[] = new String[100];*/
		ArrayList<String> pptName = new ArrayList<>();
		
	

		
	
		for (int i = 0; i < slide.size(); i++) {
			BufferedImage img = new BufferedImage((int) Math.ceil(pgsize.width * zoom),
					(int) Math.ceil(pgsize.height * zoom), BufferedImage.TYPE_INT_RGB);
		
			Graphics2D graphics = img.createGraphics();
			graphics.setTransform(at);
			graphics.setPaint(Color.white);
			graphics.fill(new Rectangle2D.Float(0, 0, pgsize.width, pgsize.height));
			slide.get(i).draw(graphics);
			
			
			pptName.add((i + 1) + " - " + PPTName + ".jpg");
			FileOutputStream out = new FileOutputStream
					(savedPath + pptName.get(i));
			javax.imageio.ImageIO.write(img, "jpg", out);
			
			out.close();
			
			
		}
		ppt.close();
		
	

			
		
		return pptName;
	}
	
	
	//word 파일하고 엑셀 등등 컨버터 하는거 추가기능으로 찾아봐야 할듯
	
}