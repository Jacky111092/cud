package net.codejava.spring;

import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itextpdf.text.BaseColor;
import com.itextpdf.text.Document;
import com.itextpdf.text.Font;
import com.itextpdf.text.FontFactory;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.Phrase;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;

import bean.Policy;

/**
 * This view class generates a PDF document 'on the fly' based on the data
 * contained in the model.
 * 
 * @author www.codejava.net
 *
 */
public class PDFServiceAll extends AbstractITextPdfView {

	@Override
	protected void buildPdfDocument(Map<String, Object> model, Document doc, PdfWriter writer,
			HttpServletRequest request, HttpServletResponse response) throws Exception {
		// get data model which is passed by the Spring container
		// List<Book> listBooks = (List<Book>) model.get("listBooks");
		List<Policy> pdf = (List<Policy>) model.get("viewpdfAll");
		for (Policy policyBean : pdf) {
			System.out.println(policyBean.getEnddate());
		}

		doc.add(new Paragraph("Policy Details"));

		PdfPTable table = new PdfPTable(4);
		table.setWidthPercentage(100.0f);
		table.setWidths(new float[] { 3.0f, 2.0f, 2.0f, 2.0f });
		table.setSpacingBefore(10);

		// define font for table header row
		Font font = FontFactory.getFont(FontFactory.HELVETICA);
		font.setColor(BaseColor.WHITE);

		// define table header cell
		PdfPCell cell = new PdfPCell();
		cell.setBackgroundColor(BaseColor.BLUE);
		cell.setPadding(5);

		// write table header
		cell.setPhrase(new Phrase("Policy Id", font));
		table.addCell(cell);

		cell.setPhrase(new Phrase("Policy Name", font));
		table.addCell(cell);

		cell.setPhrase(new Phrase("Start Date", font));
		table.addCell(cell);

		cell.setPhrase(new Phrase("End Date", font));
		table.addCell(cell);

	/*	cell.setPhrase(new Phrase("Claim Status", font));
		table.addCell(cell);
*/
		/*
		 * cell.setPhrase(new Phrase("Price", font)); table.addCell(cell);
		 */
		// write table row data
		/*
		 * for (Book aBook : listBooks) { table.addCell(aBook.getTitle());
		 * table.addCell(aBook.getAuthor()); table.addCell(aBook.getIsbn());
		 * table.addCell(aBook.getPublishedDate());
		 * table.addCell(String.valueOf(aBook.getPrice())); }
		 */for (Policy policyBean : pdf) {
			//System.out.println(policyBean.getClaimStatus());
			table.addCell(policyBean.getPolicyId());
			table.addCell(policyBean.getPolicyName());
			table.addCell(policyBean.getStartdate().toString());
			table.addCell(policyBean.getEnddate().toString());
		//	table.addCell(policyBean.getClaimStatus());

		}

		doc.add(table);

	}

}