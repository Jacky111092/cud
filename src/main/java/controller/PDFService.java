package controller;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import bean.Policy;

import com.itextpdf.text.BaseColor;
import com.itextpdf.text.Document;
import com.itextpdf.text.Font;
import com.itextpdf.text.FontFactory;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.Phrase;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;
public class PDFService extends AbstractPDFService {

	

	
	@Override
	public void buildPdfDocument(Map<String, Object> model, Document doc, PdfWriter writer,
			HttpServletRequest request, HttpServletResponse response,HttpSession session) throws Exception {
		// TODO Auto-generated method stub

 
        // get data model which is passed by the Spring container
		
	Set<Policy> pdf =  (Set<Policy>) model.get("viewpdf");
	
		
      
        doc.add(new Paragraph("Recommended books for Spring framework"));
         
        PdfPTable table = new PdfPTable(4);
        table.setWidthPercentage(100.0f);
        table.setWidths(new float[] {3.0f, 2.0f, 2.0f, 2.0f});
        table.setSpacingBefore(10);
         
        // define font for table header row
        Font font = FontFactory.getFont(FontFactory.HELVETICA);
      //  font.setColor(BaseColor.WHITE);
         
        // define table header cell
        PdfPCell cell = new PdfPCell();
       // cell.setBackgroundColor(BaseColor.BLUE);
        cell.setPadding(5);
         
        // write table header
        cell.setPhrase(new Phrase("Policy Id", font));
        table.addCell(cell);
         
        cell.setPhrase(new Phrase("Policy Name", font));
        table.addCell(cell);
 
        /*cell.setPhrase(new Phrase("Claim Status", font));
        table.addCell(cell);*/
         
        /*cell.setPhrase(new Phrase("Published Date", font));
        table.addCell(cell);
         
        cell.setPhrase(new Phrase("Price", font));
        table.addCell(cell);
         */
        // write table row data
        for (Policy policyBean : pdf) {
        	 table.addCell(policyBean.getPolicyId());
        	 table.addCell(policyBean.getPolicyName());
        	// table.addCell(policyBean.getClaimStatus());
		}
        
         
        doc.add(table);
         
    }


	@Override
	protected void renderMergedOutputModel(Map<String, Object> arg0, HttpServletRequest arg1, HttpServletResponse arg2)
			throws Exception {
		// TODO Auto-generated method stub
		
	}




	

	
	
}
