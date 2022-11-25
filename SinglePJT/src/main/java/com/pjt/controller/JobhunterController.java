package com.pjt.controller;

import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.imageio.ImageIO;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.util.JSONPObject;
import com.pjt.Service.resumeService;
import com.pjt.command.JobsearchVO;
import com.pjt.command.Picture_ImgVO;
import com.pjt.command.ResumeVO;

import net.coobird.thumbnailator.Thumbnails;

@Controller
@RequestMapping("/jobhunter")
public class JobhunterController {

	@Autowired
	resumeService rs;
	
	@GetMapping("/resume")
	public String jh_resume() {
		
		return "/jobhunter/Resume";
	}
	
	@RequestMapping("/mypage")
	public String myPage() {
		
		return "/jobhunter/MyPage";
	}
	
	@RequestMapping(value="/resume", produces = "application/json; charset=utf8", method = RequestMethod.POST)
	   @ResponseBody
	   public ResponseEntity<Integer> job_search(@RequestBody Map<String, Object> resume ) throws JsonProcessingException {
	      ResponseEntity<Integer> res=null;
	      ObjectMapper om = new ObjectMapper();
	      JSONPObject json = new JSONPObject("JSON.parse", resume);
	      String resume_info = om.writeValueAsString(json);
	      ResumeVO vo = new ResumeVO();
	      
	      vo.setResume_info(resume_info);
	      vo.setResume_title("test타이틀");
	      vo.setUser_id("test1");
	      
	      rs.addResume(vo);
	      return res;
	   }
	
	@RequestMapping("/resume_select")
	public String job_search_select(Model mo) {
		ResumeVO vo =rs.resumeSelect(1);
		System.out.println(vo);
		vo.setResume_info(vo.getResume_info().replace("JSON.parse",""));
		System.out.println(vo);
		mo.addAttribute("re", vo);
		System.out.println("실행완료");
		return "/jobhunter/Resume_select";
	}
	
	
	// 등록한 파일 폴더에 저장
		@PostMapping(value = "uploadFile", produces = MediaType.APPLICATION_JSON_VALUE)
		public ResponseEntity<List<Picture_ImgVO>> uploadFile(MultipartFile uploadFile) {
			// 저장 위치
			String uploadFolder = "C:\\upload";

			// 이미지파일 체크
			File checkfile = new File(uploadFile.getOriginalFilename());
			String type = null;

			try {
				type = Files.probeContentType(checkfile.toPath());

			} catch (IOException e) {
				e.printStackTrace();
			}

			if (!type.startsWith("image")) {
				List<Picture_ImgVO> list = null;
				return new ResponseEntity<>(list, HttpStatus.BAD_REQUEST);
			}
			
			// 날짜 폴더 생성용
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			Date toDay = new Date();
			String str = sdf.format(toDay);
			String datePath = str.replace("-", File.separator);

			// 폴더 생성
			File uploadPath = new File(uploadFolder, datePath);
			if (uploadPath.exists() == false) {
				uploadPath.mkdirs();
			}

			// 이미저 정보 담는 객체 
			List<Picture_ImgVO> list = new ArrayList<>();
			
			// 이미지 정보 객체 
			Picture_ImgVO vo = new Picture_ImgVO();
			
			// 파일 이름 
			String uploadFileName = uploadFile.getOriginalFilename();
			vo.setImg_fileName(uploadFileName);
			vo.setImg_uploadPath(datePath);

			// uuid 적용 파일 이름 
			String uuid = UUID.randomUUID().toString();
			vo.setImg_uuid(uuid);
			
			uploadFileName = uuid + "_" + uploadFileName;

			// 파일 위치, 파일 이름을 합친 File 객체 
			File saveFile = new File(uploadPath, uploadFileName);

			// 파일 저장 
			try {
				uploadFile.transferTo(saveFile);

				// 썸네일 생성
				
				File thumbnailFile = new File(uploadPath, "s_" + uploadFileName);
				BufferedImage bo_image = ImageIO.read(saveFile);
				
				// 이미지 비율
				double ratio = 3;

				int width = (int) (bo_image.getWidth() / ratio);
				int height = (int) (bo_image.getHeight() / ratio);

				BufferedImage bt_image = new BufferedImage(width, height, BufferedImage.TYPE_3BYTE_BGR);

				Graphics2D graphic = bt_image.createGraphics();

				graphic.drawImage(bo_image, 0, 0, width, height, null);

				ImageIO.write(bt_image, "jpg", thumbnailFile);

				Thumbnails.of(saveFile).size(width, height).toFile(thumbnailFile);

			} catch (Exception e) {
				e.printStackTrace();
			}
			
			list.add(vo);
			ResponseEntity<List<Picture_ImgVO>> result = new ResponseEntity<List<Picture_ImgVO>>(list, HttpStatus.OK);
			return result;

		}
		
		@GetMapping("/display")
		public ResponseEntity<byte[]> getImage(@RequestParam("filename") String filename){
		
		File file = new File("c:\\upload\\" + filename);	
		ResponseEntity<byte[]> result = null;
			try {
				
				HttpHeaders header = new HttpHeaders();

				header.add("Content-type", Files.probeContentType(file.toPath()));
				result = new ResponseEntity<>(FileCopyUtils.copyToByteArray(file), header, HttpStatus.OK);
				}catch (IOException e) {
				e.printStackTrace();
			}
			return result;
			
		}
}
