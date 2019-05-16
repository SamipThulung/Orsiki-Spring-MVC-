package realProject.controller;

  
import java.applet.Applet;
import java.io.BufferedOutputStream;  
import java.io.File;  
import java.io.FileOutputStream;
import java.io.InputStream;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;  
import org.springframework.web.bind.annotation.RequestMapping;  
import org.springframework.web.bind.annotation.RequestMethod;  
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;  
import org.springframework.web.servlet.ModelAndView;

import realProject.entity.Products;  
import realProject.service.ProductService;
  
@Controller
@RequestMapping("/img") 
public class FileUploadController {  
	
	@Autowired
	private ProductService productService;
    private static final String UPLOAD_DIRECTORY ="/images";
//    "/"+"/WebContent/resources/images" 
 
      
    @RequestMapping("/uploadform")  
    public ModelAndView uploadForm(){  
        return new ModelAndView("uploadform");    
    }  
      
    @RequestMapping(value="/savefile",method=RequestMethod.POST)  
    public String saveimage( @RequestParam("file") MultipartFile file,  
           HttpSession session) throws Exception{  
  
    	
    	if (!file.isEmpty()) {
            try {
            	
              ServletContext context = session.getServletContext();  
              System.out.println("Context Path"+context.getContextPath());
              System.out.println("Real Path"+context.getRealPath("/"));
          
//                String realPathtoUploads =  context.getRealPath(UPLOAD_DIRECTORY);
              String realPathtoUploads = "/Users/apple/Documents/workspace/Sapra/WebContent/resources/images";
                System.out.println(realPathtoUploads + "real path");
                String filename = file.getOriginalFilename();
//                if(! new File(realPathtoUploads).exists())
//                {
//                    new File(realPathtoUploads).mkdir();
//                }
//                String path = "\\Users\\apple\\Documents\\workspace\\Sapra\\WebContent\\resources\\images " + filename;
//                InputStream is = Applet.class.getClassLoader().getResourceAsStream(
//
//                                path);

                System.out.println("realPathtoUploads = {}"+ realPathtoUploads+"End");
                System.out.println(realPathtoUploads +"break"+ File.separator +"Break"+ filename+"none");
                byte[] bytes = file.getBytes();  
                BufferedOutputStream stream =new BufferedOutputStream(new FileOutputStream(  
                   new File(realPathtoUploads + File.separator + filename)));  
                stream.write(bytes);  
                stream.flush();  
              	stream.close();  

//                String orgName = file.getOriginalFilename();
//                String filePath = realPathtoUploads + orgName;
//                File dest = new File(filePath);
//                file.transferTo(dest);
                return "thankYouPage";
            }catch(Exception e){
            	System.out.println(e+"Error");
            	}
            }
    	    
    	else{
    		return "index";
    	}
		return "index";
    	
       
    	
//    ServletContext context = session.getServletContext();  
//    String path = context.getRealPath(UPLOAD_DIRECTORY);  
//    String filename = file.getOriginalFilename();  
//  
//    System.out.println(path+" "+filename);        
//  
//    byte[] bytes = file.getBytes();  
//    BufferedOutputStream stream =new BufferedOutputStream(new FileOutputStream(  
//         new File(path + File.separator + filename)));  
//    stream.write(bytes);  
//    stream.flush();  
//    stream.close();  
//           
    
    }  
    
    @RequestMapping(value="/input")
    public String saveToDatabase(@RequestParam("name") String name, @RequestParam("gender") String gender, @RequestParam("description") String description, @RequestParam("image1") String image1, @RequestParam("image2") String image2,@RequestParam("image3") String image3,@RequestParam("image4") String image4, @RequestParam("price") String price, @RequestParam("productType") String productType, @RequestParam("subType") String subType, @RequestParam("cp") String cp , HttpSession session){
    	
    	
    	Products product = new Products();
    	product.setName(name);
    	product.setGender(gender);
    	product.setDescription(description);
    	product.setImage1(image1);
    	product.setImage2(image2);
    	product.setImage3(image3);
    	product.setImage3(image4);
    	product.setPrice(Integer.parseInt(price));
    	product.setImage4("nothing");
    	product.setSubtype(subType);
    	product.setProductType(productType);
    	product.setCp(cp);
    	
    	if(session.getAttribute("activate").equals(1)){
    	
    	productService.addProduct(product);
    	
    	
    	
    	return "index";}
    	else{
    		return "adminPanel";
    	}
    }
 
	 
	 @RequestMapping(value="/uplimg")
	 public String ret( ){
		
		
			 return "adminPanel";
		
	 }
	 
	 @RequestMapping(value="/logout")
	 public String logut(HttpSession session){
		 session.removeAttribute("activate");
		 return "adminPanel";
	 }
	 
	 @RequestMapping(value="/in")
	 public String in(@RequestParam("admin") String name, @RequestParam("password") String pass, HttpSession session){
		 String adminName = "Noyasia";
		 String password = "SaPra12345@";
		 
		 if(adminName.equals(name) && password.equals(pass)){
			 session.setAttribute("activate", 1);
			 return "index";
		 }else{
			 return "adminPanel";
		 }
	 }
	 
		
	}