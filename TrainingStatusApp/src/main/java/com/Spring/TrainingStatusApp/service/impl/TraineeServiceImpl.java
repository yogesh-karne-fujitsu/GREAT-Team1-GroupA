package com.Spring.TrainingStatusApp.service.impl;

import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.Spring.TrainingStatusApp.controller.bean.Trainee;
import com.Spring.TrainingStatusApp.dao.TraineeDao;
import com.Spring.TrainingStatusApp.service.TraineeService;


@Service
public class TraineeServiceImpl implements TraineeService {
	
	
	private String currentDirectory = System.getProperty("user.dir");
	private final String MAIL_FILE_PATH = "\\images\\sabamailImg\\";
	private final String PERCIPEO_FILE_PATH = "\\images\\percipioImg\\";
	private final String TEST_SCORE_FILE_PATH = "\\images\\testscoreImg\\";


	@Autowired
	TraineeDao traineeDao;


	@Override
	public int createNewTrainee(Trainee trainee, MultipartFile esrn, MultipartFile ssrn,
			MultipartFile tsrn) throws IOException {
		String mailTargetPath = saveFile(MAIL_FILE_PATH, esrn, trainee);
		String percipeoTargetPath = saveFile(PERCIPEO_FILE_PATH, tsrn, trainee);
		String testScoreTargetPath = saveFile(TEST_SCORE_FILE_PATH, tsrn, trainee);

		return traineeDao.createNewTrainee(trainee, mailTargetPath, percipeoTargetPath, testScoreTargetPath);
	}

	private String saveFile(String savingfilePath, MultipartFile fileToSave, Trainee trainee) throws IOException {
		String targetPath = currentDirectory.concat("\\src\\main\\webapp").concat(savingfilePath);
		try (InputStream inputstream = fileToSave.getInputStream()) {
			String extension = getFileExtension(fileToSave.getOriginalFilename());
			Path path = Paths.get(targetPath);
			Path filePath = path.resolve(trainee.getEmpId().concat("_").concat(trainee.getCourseId()).concat(extension));
			Files.copy(inputstream, filePath, StandardCopyOption.REPLACE_EXISTING);
			return savingfilePath.concat(trainee.getEmpId().concat("_").concat(trainee.getCourseId()).concat(extension));
		} catch (IOException ioe) {
			throw new IOException("Error saving Mail screenshot " + targetPath, ioe);
		}
	}

		private String getFileExtension(String fileName) {
			int extensionStartIndex = fileName.lastIndexOf(".");
			return fileName.substring(extensionStartIndex, fileName.length());
		}

		@Override
		public List<Trainee> getTrainees(String batNm, String empID, String subDate, String approver) {

			List<Trainee> trainee1 = traineeDao.getTrainees(batNm, empID, subDate, approver);
			System.out.println("Return Service page->" + trainee1);
			return trainee1;
			
		}

		@Override
		public int updateRecst(String eid, String cid, char st) throws IOException {
			System.out.println("ServiceImple2");
			traineeDao.updateRecSts(eid, cid, st);
			System.out.println("ServiceImple3");
			return 0;
		}


		@Override
		public List<Trainee> getTrainees(String empID, String subDate) {
			List<Trainee> trainee2 = traineeDao.getTrainees(empID, subDate);
			System.out.println("Return Service page->" + trainee2);
			return trainee2;
		}

		@Override
		public List<Trainee> getTraineeMail(String empID, String mailId) {
			List<Trainee> trainee3 = traineeDao.getTrainees(empID, mailId);
			System.out.println("Return Service page->" + trainee3);
			return trainee3;
		}




}
