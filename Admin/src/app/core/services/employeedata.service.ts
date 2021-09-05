import { Injectable } from '@angular/core';
import {
  EmployeeFormData, Basicdetailsdtls, FamilyDetailsDto, EducationalQualificationDto, Educationattachmentsdata,
  HR_EMPLOYEE_NOMINEE_DETAILSDto, PermanentContactInformationDto, ProfessionalInformations, Profattachmentsdata,
  CorresspondanceContactInformationDto, OtherInformationDto, IdentityProofs,
  IdentityProofsattachments
} from '../models/EmployeeFormData';

@Injectable()
export class EmployeedataService {
  
  public EmployeeData: EmployeeFormData = new EmployeeFormData();
  constructor() { }

  //Basic Details
  getEmployeeBasicData(): Basicdetailsdtls {
    var Basicdetailsdtls: Basicdetailsdtls = {
      companyId: this.EmployeeData.companyId,
      employeeCategoryId: this.EmployeeData.employeeCategoryId,
      employeeCode: this.EmployeeData.employeeCode,
      biometricCode: this.EmployeeData.biometricCode,
      firstName: this.EmployeeData.firstName,
      middleName: this.EmployeeData.middleName,
      lastName: this.EmployeeData.lastName,
      email: this.EmployeeData.email,
      project_BranchId: this.EmployeeData.project_BranchId,
      departmentId: this.EmployeeData.departmentId,
      designationId: this.EmployeeData.designationId,
      higher_Authority_Branch_ProjectId: this.EmployeeData.higher_Authority_Branch_ProjectId,
      higher_AuthorityId: this.EmployeeData.higher_AuthorityId,
      higher_Authority_NameId: this.EmployeeData.higher_Authority_NameId,
      date_Of_Joining: this.EmployeeData.date_Of_Joining,
      employee_TypeId: this.EmployeeData.employee_TypeId,
      mobile_No: this.EmployeeData.mobile_No,
      third_Party_Type: this.EmployeeData.third_Party_Type,
      third_Party_Id: this.EmployeeData.third_Party_Id,
      working_StatusId: this.EmployeeData.working_StatusId,
      probation_Period: this.EmployeeData.probation_Period,
      referenceEmployeeName: this.EmployeeData.referenceEmployeeName,
      reference_Phone_No: this.EmployeeData.reference_Phone_No,
      date_Of_Birth: this.EmployeeData.date_Of_Birth,
      gender: this.EmployeeData.gender,
      nationality: this.EmployeeData.nationality,
      religion: this.EmployeeData.religion,
      castId: this.EmployeeData.companyId,
      physicalDisability: this.EmployeeData.physicalDisability==undefined?false:this.EmployeeData.physicalDisability,
      blood_GroupId: this.EmployeeData.blood_GroupId,
      marital_StatusId: this.EmployeeData.marital_StatusId,
      identification_Mark: this.EmployeeData.identification_Mark,
      status: this.EmployeeData.status==undefined?true:this.EmployeeData.status,
      professionalInformation: this.EmployeeData.professionalInformation,
      highestQualification: this.EmployeeData.highestQualification,
      isActive: this.EmployeeData.isActive==undefined?true:this.EmployeeData.isActive,
      isDeleted: this.EmployeeData.isDeleted==undefined?false:this.EmployeeData.isDeleted
    }
    return Basicdetailsdtls;
  }

  setEmployeeBasicData(data: Basicdetailsdtls) {
       this.EmployeeData.companyId= data.companyId,
       this.EmployeeData.employeeCategoryId=data.employeeCategoryId,
       this.EmployeeData.employeeCode=data.employeeCode,
       this.EmployeeData.biometricCode=data.biometricCode,
       this.EmployeeData.firstName=data.firstName,
       this.EmployeeData.middleName=data.middleName,
       this.EmployeeData.lastName=data.lastName,
       this.EmployeeData.email=data.email,
       this.EmployeeData.project_BranchId=data.project_BranchId,
       this.EmployeeData.departmentId=data.departmentId,
       this.EmployeeData.designationId=data.designationId,
       this.EmployeeData.higher_Authority_Branch_ProjectId=data.higher_Authority_Branch_ProjectId,
       this.EmployeeData.higher_AuthorityId=data.higher_AuthorityId,
       this.EmployeeData.higher_Authority_NameId=data.higher_Authority_NameId,
       this.EmployeeData.date_Of_Joining=data.date_Of_Joining,
       this.EmployeeData.employee_TypeId=data.employee_TypeId,
       this.EmployeeData.mobile_No=data.mobile_No,
       this.EmployeeData.third_Party_Type=data.third_Party_Type,
       this.EmployeeData.third_Party_Id=data.third_Party_Id,
       this.EmployeeData.working_StatusId=data.working_StatusId,
       this.EmployeeData.probation_Period=data.probation_Period,
       this.EmployeeData.referenceEmployeeName=data.referenceEmployeeName,
       this.EmployeeData.reference_Phone_No=data.reference_Phone_No,
       this.EmployeeData.date_Of_Birth=data.date_Of_Birth,
       this.EmployeeData.gender=data.gender,
       this.EmployeeData.nationality=data.nationality,
       this.EmployeeData.religion=data.religion,
       this.EmployeeData.companyId=data.castId,
       this.EmployeeData.physicalDisability=data.physicalDisability,
       this.EmployeeData.blood_GroupId=data.blood_GroupId,
       this.EmployeeData.marital_StatusId=data.marital_StatusId,
       this.EmployeeData.identification_Mark=data.identification_Mark,
       this.EmployeeData.status=data.status,
       this.EmployeeData.professionalInformation=data.professionalInformation,
       this.EmployeeData.highestQualification=data.highestQualification,
       this.EmployeeData.isActive=data.isActive,
       this.EmployeeData.isDeleted=data.isDeleted
  }

  //Family Details
  getFamilyDetails(): FamilyDetailsDto {
    var FamilyDetailsDto: FamilyDetailsDto = {
      id: this.EmployeeData.sys_FamilyDetailsDto.id,
      status_Id: this.EmployeeData.sys_FamilyDetailsDto.id,
      remarks: this.EmployeeData.sys_FamilyDetailsDto.remarks,
      action_Remarks: this.EmployeeData.sys_FamilyDetailsDto.action_Remarks,
      employee_Id: this.EmployeeData.sys_FamilyDetailsDto.employee_Id,
      isDeleted: this.EmployeeData.sys_FamilyDetailsDto.isDeleted==undefined?false:this.EmployeeData.sys_FamilyDetailsDto.isDeleted,
      familyDetail_RelationshipId: this.EmployeeData.sys_FamilyDetailsDto.familyDetail_RelationshipId,
      familyDetail_Name: this.EmployeeData.sys_FamilyDetailsDto.familyDetail_Name,
      familyDetail_Mobile: this.EmployeeData.sys_FamilyDetailsDto.familyDetail_Mobile,
      familyDetail_EmailId: this.EmployeeData.sys_FamilyDetailsDto.familyDetail_EmailId,
      familyDetail_DOB: this.EmployeeData.sys_FamilyDetailsDto.familyDetail_DOB,
      identity_Number: this.EmployeeData.sys_FamilyDetailsDto.identity_Number,
      nominee_Address: this.EmployeeData.sys_FamilyDetailsDto.nominee_Address,
      isAadharStatus: this.EmployeeData.sys_FamilyDetailsDto.isAadharStatus==undefined?true:this.EmployeeData.sys_FamilyDetailsDto.isAadharStatus
    }
    return FamilyDetailsDto;
  }

  setFamilyDetails(data:FamilyDetailsDto) {
       this.EmployeeData.sys_FamilyDetailsDto.id=data.id,
       this.EmployeeData.sys_FamilyDetailsDto.id=data.status_Id,
       this.EmployeeData.sys_FamilyDetailsDto.remarks=data.remarks,
       this.EmployeeData.sys_FamilyDetailsDto.action_Remarks=data.action_Remarks,
       this.EmployeeData.sys_FamilyDetailsDto.employee_Id=data.employee_Id,
       this.EmployeeData.sys_FamilyDetailsDto.isDeleted=data.isDeleted,
       this.EmployeeData.sys_FamilyDetailsDto.familyDetail_RelationshipId=data.familyDetail_RelationshipId,
       this.EmployeeData.sys_FamilyDetailsDto.familyDetail_Name=data.familyDetail_Name,
       this.EmployeeData.sys_FamilyDetailsDto.familyDetail_Mobile=data.familyDetail_Mobile,
       this.EmployeeData.sys_FamilyDetailsDto.familyDetail_EmailId=data.familyDetail_EmailId,
       this.EmployeeData.sys_FamilyDetailsDto.familyDetail_DOB=data.familyDetail_DOB,
       this.EmployeeData.sys_FamilyDetailsDto.identity_Number=data.identity_Number,
       this.EmployeeData.sys_FamilyDetailsDto.nominee_Address=data.nominee_Address,
       this.EmployeeData.sys_FamilyDetailsDto.isAadharStatus=data.isAadharStatus
    }

  //EducationQualificationDetails
  getEducationalQualification(): EducationalQualificationDto {
    var EducationalQualificationDto: EducationalQualificationDto = {
      id: this.EmployeeData.sys_EducationalQualificationDto.id,
      employee_Id: this.EmployeeData.sys_EducationalQualificationDto.employee_Id,
      emp_Year_OF_Passing: this.EmployeeData.sys_EducationalQualificationDto.emp_Year_OF_Passing,
      qualification: this.EmployeeData.sys_EducationalQualificationDto.qualification,
      specialization: this.EmployeeData.sys_EducationalQualificationDto.specialization,
      school: this.EmployeeData.sys_EducationalQualificationDto.school,
      board: this.EmployeeData.sys_EducationalQualificationDto.board,
      marks: this.EmployeeData.sys_EducationalQualificationDto.marks,
      remarks: this.EmployeeData.sys_EducationalQualificationDto.remarks,
      isDeleted: this.EmployeeData.sys_EducationalQualificationDto.isDeleted==undefined?false:this.EmployeeData.sys_EducationalQualificationDto.isDeleted,
      attachments: this.EmployeeData.sys_EducationalQualificationDto.attachments
    }
    return EducationalQualificationDto;
  }

  setEducationalQualification(data:EducationalQualificationDto){
       this.EmployeeData.sys_EducationalQualificationDto.id=data.id,
       this.EmployeeData.sys_EducationalQualificationDto.employee_Id=data.employee_Id,
       this.EmployeeData.sys_EducationalQualificationDto.emp_Year_OF_Passing=data.emp_Year_OF_Passing,
       this.EmployeeData.sys_EducationalQualificationDto.qualification=data.qualification,
       this.EmployeeData.sys_EducationalQualificationDto.specialization=data.specialization,
       this.EmployeeData.sys_EducationalQualificationDto.school=data.school,
       this.EmployeeData.sys_EducationalQualificationDto.board=data.board,
       this.EmployeeData.sys_EducationalQualificationDto.marks=data.marks,
       this.EmployeeData.sys_EducationalQualificationDto.remarks=data.remarks,
       this.EmployeeData.sys_EducationalQualificationDto.isDeleted=data.isDeleted,
       this.EmployeeData.sys_EducationalQualificationDto.attachments=data.attachments
    }


  //Nominee Details
  getHR_EMPLOYEE_NOMINEE_DETAILS(): HR_EMPLOYEE_NOMINEE_DETAILSDto {
    var HR_EMPLOYEE_NOMINEE_DETAILSDto: HR_EMPLOYEE_NOMINEE_DETAILSDto = {
      id: this.EmployeeData.tBL_HR_EMPLOYEE_NOMINEE_DETAILSDto.id,
      employee_Id: this.EmployeeData.tBL_HR_EMPLOYEE_NOMINEE_DETAILSDto.employee_Id,
      nominee_RelationshipId: this.EmployeeData.tBL_HR_EMPLOYEE_NOMINEE_DETAILSDto.nominee_RelationshipId,
      nominee_Name: this.EmployeeData.tBL_HR_EMPLOYEE_NOMINEE_DETAILSDto.nominee_Name,
      nominee_Mobile: this.EmployeeData.tBL_HR_EMPLOYEE_NOMINEE_DETAILSDto.nominee_Mobile,
      nominee_EmailId: this.EmployeeData.tBL_HR_EMPLOYEE_NOMINEE_DETAILSDto.nominee_EmailId,
      nominee_DOB: this.EmployeeData.tBL_HR_EMPLOYEE_NOMINEE_DETAILSDto.nominee_DOB,
      identity_Number: this.EmployeeData.tBL_HR_EMPLOYEE_NOMINEE_DETAILSDto.identity_Number,
      nominee_Address: this.EmployeeData.tBL_HR_EMPLOYEE_NOMINEE_DETAILSDto.nominee_Address,
      isAadharStatus: this.EmployeeData.tBL_HR_EMPLOYEE_NOMINEE_DETAILSDto.isAadharStatus==undefined?true:this.EmployeeData.tBL_HR_EMPLOYEE_NOMINEE_DETAILSDto.isAadharStatus,
      isDeleted: this.EmployeeData.tBL_HR_EMPLOYEE_NOMINEE_DETAILSDto.isDeleted==undefined?false:this.EmployeeData.tBL_HR_EMPLOYEE_NOMINEE_DETAILSDto.isDeleted
    }
    return HR_EMPLOYEE_NOMINEE_DETAILSDto;
  }

  setHR_EMPLOYEE_NOMINEE_DETAILS(data: HR_EMPLOYEE_NOMINEE_DETAILSDto) {
       this.EmployeeData.tBL_HR_EMPLOYEE_NOMINEE_DETAILSDto.id=data.id,
       this.EmployeeData.tBL_HR_EMPLOYEE_NOMINEE_DETAILSDto.employee_Id=data.employee_Id,
       this.EmployeeData.tBL_HR_EMPLOYEE_NOMINEE_DETAILSDto.nominee_RelationshipId=data.nominee_RelationshipId,
       this.EmployeeData.tBL_HR_EMPLOYEE_NOMINEE_DETAILSDto.nominee_Name=data.nominee_Name,
       this.EmployeeData.tBL_HR_EMPLOYEE_NOMINEE_DETAILSDto.nominee_Mobile=data.nominee_Mobile,
       this.EmployeeData.tBL_HR_EMPLOYEE_NOMINEE_DETAILSDto.nominee_EmailId=data.nominee_EmailId,
       this.EmployeeData.tBL_HR_EMPLOYEE_NOMINEE_DETAILSDto.nominee_DOB=data.nominee_DOB,
       this.EmployeeData.tBL_HR_EMPLOYEE_NOMINEE_DETAILSDto.identity_Number=data.identity_Number,
       this.EmployeeData.tBL_HR_EMPLOYEE_NOMINEE_DETAILSDto.nominee_Address=data.nominee_Address,
       this.EmployeeData.tBL_HR_EMPLOYEE_NOMINEE_DETAILSDto.isAadharStatus=data.isAadharStatus,
       this.EmployeeData.tBL_HR_EMPLOYEE_NOMINEE_DETAILSDto.isDeleted=data.isDeleted

  }

  //Permanent Contact Information Details
  getPermanentContactInformation(): PermanentContactInformationDto {
    var PermanentContactInformation: PermanentContactInformationDto = {
      id: this.EmployeeData.sys_PermanentContactInformationDto.id,
      status_Id: this.EmployeeData.sys_PermanentContactInformationDto.id,
      remarks: this.EmployeeData.sys_PermanentContactInformationDto.remarks,
      action_Remarks: this.EmployeeData.sys_PermanentContactInformationDto.action_Remarks,
      address: this.EmployeeData.sys_PermanentContactInformationDto.address,
      address1: this.EmployeeData.sys_PermanentContactInformationDto.address1,
      country: this.EmployeeData.sys_PermanentContactInformationDto.country,
      zone: this.EmployeeData.sys_PermanentContactInformationDto.zone,
      state: this.EmployeeData.sys_PermanentContactInformationDto.state,
      city: this.EmployeeData.sys_PermanentContactInformationDto.city,
      pin: this.EmployeeData.sys_PermanentContactInformationDto.pin,
      employee_Id: this.EmployeeData.sys_PermanentContactInformationDto.employee_Id
    }
    return PermanentContactInformation;
  }

  setPermanentContactInformation(data: PermanentContactInformationDto) {
       this.EmployeeData.sys_PermanentContactInformationDto.id=data.id,
       this.EmployeeData.sys_PermanentContactInformationDto.id=data.status_Id,
       this.EmployeeData.sys_PermanentContactInformationDto.remarks=data.remarks,
       this.EmployeeData.sys_PermanentContactInformationDto.action_Remarks=data.action_Remarks,
       this.EmployeeData.sys_PermanentContactInformationDto.address=data.address,
       this.EmployeeData.sys_PermanentContactInformationDto.address1=data.address1,
       this.EmployeeData.sys_PermanentContactInformationDto.country=data.country,
       this.EmployeeData.sys_PermanentContactInformationDto.zone=data.zone,
       this.EmployeeData.sys_PermanentContactInformationDto.state=data.state,
       this.EmployeeData.sys_PermanentContactInformationDto.city=data.city,
       this.EmployeeData.sys_PermanentContactInformationDto.pin=data.pin,
       this.EmployeeData.sys_PermanentContactInformationDto.employee_Id=data.employee_Id
  }

  //Professional Details
  getProfessionalInformations(): ProfessionalInformations {
    var getProfessionalInformations: ProfessionalInformations = {
      id: this.EmployeeData.sys_ProfessionalInformations.id,
      status_Id: this.EmployeeData.sys_ProfessionalInformations.status_Id,
      remarks: this.EmployeeData.sys_ProfessionalInformations.remarks,
      action_Remarks: this.EmployeeData.sys_ProfessionalInformations.action_Remarks,
      employeerName: this.EmployeeData.sys_ProfessionalInformations.employeerName,
      isDeleted: this.EmployeeData.sys_ProfessionalInformations.isDeleted==undefined?false:this.EmployeeData.sys_ProfessionalInformations.isDeleted,
      employeerAddress: this.EmployeeData.sys_ProfessionalInformations.employeerAddress,
      designation: this.EmployeeData.sys_ProfessionalInformations.designation,
      contactPerson: this.EmployeeData.sys_ProfessionalInformations.contactPerson,
      contactNo: this.EmployeeData.sys_ProfessionalInformations.contactNo,
      emailId: this.EmployeeData.sys_ProfessionalInformations.emailId,
      dateOfJoining: this.EmployeeData.sys_ProfessionalInformations.dateOfJoining,
      lastDrawnSalary: this.EmployeeData.sys_ProfessionalInformations.lastDrawnSalary,
      reasonForLeaving: this.EmployeeData.sys_ProfessionalInformations.reasonForLeaving,
      dateOfLeaving: this.EmployeeData.sys_ProfessionalInformations.dateOfJoining,
      employee_Id: this.EmployeeData.sys_ProfessionalInformations.employee_Id,
      attachments: this.EmployeeData.sys_ProfessionalInformations.attachments
    }
    return getProfessionalInformations;
  }

  setProfessionalInformations(data: ProfessionalInformations) {
       this.EmployeeData.sys_ProfessionalInformations.id=data.id,
       this.EmployeeData.sys_ProfessionalInformations.status_Id=data.status_Id,
       this.EmployeeData.sys_ProfessionalInformations.remarks=data.remarks,
       this.EmployeeData.sys_ProfessionalInformations.action_Remarks=data.action_Remarks,
       this.EmployeeData.sys_ProfessionalInformations.employeerName=data.employeerName,
       this.EmployeeData.sys_ProfessionalInformations.isDeleted=data.isDeleted,
       this.EmployeeData.sys_ProfessionalInformations.employeerAddress=data.employeerAddress,
       this.EmployeeData.sys_ProfessionalInformations.designation=data.designation,
       this.EmployeeData.sys_ProfessionalInformations.contactPerson=data.contactPerson,
       this.EmployeeData.sys_ProfessionalInformations.contactNo=data.contactNo,
       this.EmployeeData.sys_ProfessionalInformations.emailId=data.emailId,
       this.EmployeeData.sys_ProfessionalInformations.dateOfJoining=data.dateOfJoining,
       this.EmployeeData.sys_ProfessionalInformations.lastDrawnSalary=data.lastDrawnSalary,
       this.EmployeeData.sys_ProfessionalInformations.reasonForLeaving=data.reasonForLeaving,
       this.EmployeeData.sys_ProfessionalInformations.dateOfJoining=data.dateOfLeaving,
       this.EmployeeData.sys_ProfessionalInformations.employee_Id=data.employee_Id,
       this.EmployeeData.sys_ProfessionalInformations.attachments=data.attachments
  }

  //Corresspondance Contact Information Details
  getCorresspondanceContactInformationDto(): CorresspondanceContactInformationDto {
    var CorresspondanceContactInformation: CorresspondanceContactInformationDto = {
      id: this.EmployeeData.sys_CorresspondanceContactInformationDto.id,
      status_Id: this.EmployeeData.sys_CorresspondanceContactInformationDto.status_Id,
      remarks: this.EmployeeData.sys_CorresspondanceContactInformationDto.remarks,
      action_Remarks: this.EmployeeData.sys_CorresspondanceContactInformationDto.action_Remarks,
      address: this.EmployeeData.sys_CorresspondanceContactInformationDto.address,
      address1: this.EmployeeData.sys_CorresspondanceContactInformationDto.address1,
      country: this.EmployeeData.sys_CorresspondanceContactInformationDto.country,
      zone: this.EmployeeData.sys_CorresspondanceContactInformationDto.zone,
      state: this.EmployeeData.sys_CorresspondanceContactInformationDto.state,
      city: this.EmployeeData.sys_CorresspondanceContactInformationDto.city,
      pin: this.EmployeeData.sys_CorresspondanceContactInformationDto.pin,
      mobileNo2: this.EmployeeData.sys_CorresspondanceContactInformationDto.mobileNo2,
      phone: this.EmployeeData.sys_CorresspondanceContactInformationDto.phone,
      emailAddress2: this.EmployeeData.sys_CorresspondanceContactInformationDto.emailAddress2,
      employee_Id: this.EmployeeData.sys_CorresspondanceContactInformationDto.employee_Id
    }
    return CorresspondanceContactInformation;
  }

  setCorresspondanceContactInformationDto(data: CorresspondanceContactInformationDto) {
       this.EmployeeData.sys_CorresspondanceContactInformationDto.id=data.id,
       this.EmployeeData.sys_CorresspondanceContactInformationDto.status_Id=data.status_Id,
       this.EmployeeData.sys_CorresspondanceContactInformationDto.remarks=data.remarks,
       this.EmployeeData.sys_CorresspondanceContactInformationDto.action_Remarks=data.action_Remarks,
       this.EmployeeData.sys_CorresspondanceContactInformationDto.address=data.address,
       this.EmployeeData.sys_CorresspondanceContactInformationDto.address1=data.address1,
       this.EmployeeData.sys_CorresspondanceContactInformationDto.country=data.country,
       this.EmployeeData.sys_CorresspondanceContactInformationDto.zone=data.zone,
       this.EmployeeData.sys_CorresspondanceContactInformationDto.state=data.state,
       this.EmployeeData.sys_CorresspondanceContactInformationDto.city=data.city,
       this.EmployeeData.sys_CorresspondanceContactInformationDto.pin=data.pin,
       this.EmployeeData.sys_CorresspondanceContactInformationDto.mobileNo2=data.mobileNo2,
       this.EmployeeData.sys_CorresspondanceContactInformationDto.phone=data.phone,
       this.EmployeeData.sys_CorresspondanceContactInformationDto.emailAddress2=data.emailAddress2,
       this.EmployeeData.sys_CorresspondanceContactInformationDto.employee_Id=data.employee_Id
  }

  //Other Information Details
  getOtherInformationDto(): OtherInformationDto {
    var OtherInformationDto: OtherInformationDto = {
      id: this.EmployeeData.sys_OtherInformationDto.id,
      status_Id: this.EmployeeData.sys_OtherInformationDto.status_Id,
      remarks: this.EmployeeData.sys_OtherInformationDto.remarks,
      action_Remarks: this.EmployeeData.sys_OtherInformationDto.action_Remarks,
      bank_Name: this.EmployeeData.sys_OtherInformationDto.bank_Name,
      branch_Name: this.EmployeeData.sys_OtherInformationDto.branch_Name,
      account_No: this.EmployeeData.sys_OtherInformationDto.account_No,
      ifsC_Code: this.EmployeeData.sys_OtherInformationDto.ifsC_Code,
      status: this.EmployeeData.sys_OtherInformationDto.status==undefined?true:this.EmployeeData.sys_OtherInformationDto.status,
      other_Details: this.EmployeeData.sys_OtherInformationDto.other_Details,
      card_No: this.EmployeeData.sys_OtherInformationDto.card_No,
      carProxy_Nod_No: this.EmployeeData.sys_OtherInformationDto.carProxy_Nod_No,
      user_Id: this.EmployeeData.sys_OtherInformationDto.user_Id,
      user_Data: this.EmployeeData.sys_OtherInformationDto.user_Data,
      user_Type: this.EmployeeData.sys_OtherInformationDto.user_Type,
      signature: this.EmployeeData.sys_OtherInformationDto.signature,
      picture: this.EmployeeData.sys_OtherInformationDto.picture,
      signatureFile: this.EmployeeData.sys_OtherInformationDto.signatureFile,
      pictureFile: this.EmployeeData.sys_OtherInformationDto.pictureFile,
      employee_Id: this.EmployeeData.sys_OtherInformationDto.employee_Id,
      Identity_Proofs: new IdentityProofs()
    }
    return OtherInformationDto;
  }

  setOtherInformationDto(data: OtherInformationDto) {
       this.EmployeeData.sys_OtherInformationDto.id=data.id,
       this.EmployeeData.sys_OtherInformationDto.status_Id=data.status_Id,
       this.EmployeeData.sys_OtherInformationDto.remarks=data.remarks,
       this.EmployeeData.sys_OtherInformationDto.action_Remarks=data.action_Remarks,
       this.EmployeeData.sys_OtherInformationDto.bank_Name=data.bank_Name,
       this.EmployeeData.sys_OtherInformationDto.branch_Name=data.branch_Name,
       this.EmployeeData.sys_OtherInformationDto.account_No=data.account_No,
       this.EmployeeData.sys_OtherInformationDto.ifsC_Code=data.ifsC_Code,
       this.EmployeeData.sys_OtherInformationDto.status=data.status,
       this.EmployeeData.sys_OtherInformationDto.other_Details=data.other_Details,
       this.EmployeeData.sys_OtherInformationDto.card_No=data.card_No,
       this.EmployeeData.sys_OtherInformationDto.carProxy_Nod_No=data.carProxy_Nod_No,
       this.EmployeeData.sys_OtherInformationDto.user_Id=data.user_Id,
       this.EmployeeData.sys_OtherInformationDto.user_Data=data.user_Data,
       this.EmployeeData.sys_OtherInformationDto.user_Type=data.user_Type,
       this.EmployeeData.sys_OtherInformationDto.signature=data.signature,
       this.EmployeeData.sys_OtherInformationDto.picture=data.picture,
       this.EmployeeData.sys_OtherInformationDto.signatureFile=data.signatureFile,
       this.EmployeeData.sys_OtherInformationDto.pictureFile=data.pictureFile,
       this.EmployeeData.sys_OtherInformationDto.employee_Id=data.employee_Id,
       this.EmployeeData.sys_OtherInformationDto.Identity_Proofs = data.Identity_Proofs;
  }
}
