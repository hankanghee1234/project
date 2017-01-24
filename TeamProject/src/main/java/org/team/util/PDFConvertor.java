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
import java.util.List;

import javax.imageio.ImageIO;

import org.apache.pdfbox.pdmodel.PDDocument;
import org.apache.pdfbox.rendering.PDFRenderer;
import org.apache.poi.xslf.usermodel.XMLSlideShow;
import org.apache.poi.xslf.usermodel.XSLFSlide;

public class PDFConvertor {
	// 서버저장경로명
	static final String savedPath = "C:\\zzz\\pptdesc\\";

	public static void main(String[] args) throws Exception {
		// 확장자명까지 작성해주어야함.
		PDFConvertor.JPGconvertor("test2.pptx");
	}

	public static void JPGconvertor(String Name) throws Exception {
		File file = new File(savedPath + Name);
		String filePath = file.getAbsolutePath();
		String fileStyle = filePath.substring(filePath.lastIndexOf("."));
		System.out.println(filePath.substring(filePath.lastIndexOf(".")));

		switch (fileStyle) {
		case ".pdf":
			System.out.println("PDF로...");
			PDFConvertor.PDFtoJPG(Name);
			break;
		case ".pptx":
			System.out.println("ppt로...");
			PDFConvertor.PPTXtoJPG(Name);
			break;
		}
	}

	public static String PDFtoJPG(String PDFName) throws Exception {
		// 저장된 파일을 읽어들이는부분..
		File file = new File(savedPath + PDFName);
		PDDocument doc = PDDocument.load(file);
		PDFRenderer renderer = new PDFRenderer(doc);

		for (int i = 0; i < doc.getNumberOfPages(); i++) {
			BufferedImage image = renderer.renderImageWithDPI(i, 130);
			File PDF = new File(String.format("%s/%d - " + PDFName + ".jpg", savedPath, (i + 1)));
			ImageIO.write(image, "JPEG", PDF);
		}
		doc.close();
		return PDFName;
	}

	public static void PPTXtoJPG(String PPTName) throws Exception {
		FileInputStream is = new FileInputStream(savedPath + PPTName);
		XMLSlideShow ppt = new XMLSlideShow(is);
		is.close();
		double zoom = 2;
		AffineTransform at = new AffineTransform();
		at.setToScale(zoom, zoom);

		Dimension pgsize = ppt.getPageSize();
		List<XSLFSlide> slide = ppt.getSlides();
		for (int i = 0; i < slide.size(); i++) {
			BufferedImage img = new BufferedImage((int) Math.ceil(pgsize.width * zoom),
					(int) Math.ceil(pgsize.height * zoom), BufferedImage.TYPE_INT_RGB);
			Graphics2D graphics = img.createGraphics();
			graphics.setTransform(at);
			graphics.setPaint(Color.white);
			graphics.fill(new Rectangle2D.Float(0, 0, pgsize.width, pgsize.height));
			slide.get(i).draw(graphics);
			FileOutputStream out = new FileOutputStream(savedPath + (i + 1) + " - " + PPTName + ".jpg");
			javax.imageio.ImageIO.write(img, "jpg", out);
			out.close();
		}
		ppt.close();
	}
}