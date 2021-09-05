
export class EmployeeFormData {
    //common fields
    id: number = 0;
    status_Id: number = 0;
    remarks: string = '';
    action_Remarks: string = '';

    // Basicdetails
    companyId: number = 0;
    employeeCategoryId: number = 0;
    employeeCode: string = '';
    biometricCode: string = '';
    firstName: string = '';
    middleName: string = '';
    lastName: string = '';
    email: string = '';
    project_BranchId: number = 0;
    departmentId: number = 0;
    designationId: number = 0;
    higher_Authority_Branch_ProjectId: number = 0;
    higher_AuthorityId: number = 0;
    higher_Authority_NameId: number = 0;
    date_Of_Joining: string = '';
    employee_TypeId: number = 0;
    mobile_No: string = '';
    third_Party_Type: number = 0;
    third_Party_Id: number = 0;
    working_StatusId: number = 0;
    probation_Period: number = 0;
    referenceEmployeeName: string = '';
    reference_Phone_No: string = '';
    date_Of_Birth: string = '';
    gender: string = '';
    nationality: string = '';
    religion: string = '';
    castId: number = 0;
    physicalDisability: false;
    blood_GroupId: number = 0;
    marital_StatusId: number = 0;
    identification_Mark: string = '';
    status: true;
    professionalInformation: string = '';
    highestQualification: string = '';
    isActive: true;
    isDeleted: false;

    //Family Details
    sys_FamilyDetailsDto =new FamilyDetailsDto();

    //EducationQualificationDetails
    sys_EducationalQualificationDto =new EducationalQualificationDto();

    //Nominee Details
    tBL_HR_EMPLOYEE_NOMINEE_DETAILSDto =new HR_EMPLOYEE_NOMINEE_DETAILSDto();

    //Permanent Contact Information Details
    sys_PermanentContactInformationDto =new PermanentContactInformationDto();

    //Professional Details
    sys_ProfessionalInformations =new ProfessionalInformations();

    //Corresspondance Contact Information Details
    sys_CorresspondanceContactInformationDto =new CorresspondanceContactInformationDto();

    //Other Information Details
    sys_OtherInformationDto =new OtherInformationDto();

    
clear() {
    this.id= 0;
    this.status_Id= 0;
    this.remarks= '';
    this.action_Remarks= '';
    this.companyId= 0;
    this.employeeCategoryId= 0;
    this.employeeCode= '';
    this.biometricCode= '';
    this.firstName= '';
    this.middleName= '';
    this.lastName= '';
    this.email= '';
    this.project_BranchId= 0;
    this.departmentId= 0;
    this.designationId= 0;
    this.higher_Authority_Branch_ProjectId= 0;
    this.higher_AuthorityId= 0;
    this.higher_Authority_NameId= 0;
    this.date_Of_Joining= '';
    this.employee_TypeId= 0;
    this.mobile_No= '';
    this.third_Party_Type= 0;
    this.third_Party_Id= 0;
    this.working_StatusId= 0;
    this.probation_Period= 0;
    this.referenceEmployeeName= '';
    this.reference_Phone_No= '';
    this.date_Of_Birth= '';
    this.gender= '';
    this.nationality= '';
    this.religion= '';
    this.castId= 0;
    this.physicalDisability= false;
    this.blood_GroupId= 0;
    this.marital_StatusId= 0;
    this.identification_Mark= '';
    this.status= true;
    this.professionalInformation= '';
    this.highestQualification= '';
    this.isActive= true;
    this.isDeleted= false;
    this.sys_FamilyDetailsDto =new FamilyDetailsDto();
    this.sys_EducationalQualificationDto =new EducationalQualificationDto();
    this.tBL_HR_EMPLOYEE_NOMINEE_DETAILSDto =new HR_EMPLOYEE_NOMINEE_DETAILSDto();
    this.sys_PermanentContactInformationDto =new PermanentContactInformationDto();
    this.sys_ProfessionalInformations =new ProfessionalInformations();
    this.sys_CorresspondanceContactInformationDto =new CorresspondanceContactInformationDto();
    this.sys_OtherInformationDto =new OtherInformationDto();
}
}

// Basicdetails
export class Basicdetailsdtls {
companyId: number = 0;
employeeCategoryId: number = 0;
employeeCode: string = '';
biometricCode: string = '';
firstName: string = '';
middleName: string = '';
lastName: string = '';
email: string = '';
project_BranchId: number = 0;
departmentId: number = 0;
designationId: number = 0;
higher_Authority_Branch_ProjectId: number = 0;
higher_AuthorityId: number = 0;
higher_Authority_NameId: number = 0;
date_Of_Joining: string = '';
employee_TypeId: number = 0;
mobile_No: string = '';
third_Party_Type: number = 0;
third_Party_Id: number = 0;
working_StatusId: number = 0;
probation_Period: number = 0;
referenceEmployeeName: string = '';
reference_Phone_No: string = '';
date_Of_Birth: string = '';
gender: string = '';
nationality: string = '';
religion: string = '';
castId: number = 0;
physicalDisability: false;
blood_GroupId: number = 0;
marital_StatusId: number = 0;
identification_Mark: string = '';
status: true;
professionalInformation: string = '';
highestQualification: string = '';
isActive: true;
isDeleted: false;
}

//FamilyDetails
export class FamilyDetailsDto {
    id: number = 0;
    status_Id: number = 0;
    remarks: string = '';
    action_Remarks: string = '';
    employee_Id: number = 0;
    isDeleted: false;
    familyDetail_RelationshipId: number = 0;
    familyDetail_Name: string = '';
    familyDetail_Mobile: string = '';
    familyDetail_EmailId: string = '';
    familyDetail_DOB: string = '';
    identity_Number: string = '';
    nominee_Address: string = '';
    isAadharStatus: true
}

//EducationQualificationDetails
export class EducationalQualificationDto {
    id: number = 0;
    employee_Id: number = 0;
    emp_Year_OF_Passing: number = 0;
    qualification: string = '';
    specialization: string = '';
    school: string = '';
    board: string = '';
    marks: string = '';
    remarks: string = '';
    isDeleted: false;
    attachments: Array<Educationattachmentsdata> = [];
}
export class Educationattachmentsdata {
    id: number = 0;
    status_Id: number = 0;
    remarks: string = '';
    action_Remarks: string = '';
    educational_Qualification_Id: number = 0;
    employeeId: number = 0;
    courseName: string = '';
    documentType: string = '';
    documentUrl: string
}


//Nominee Details
export class HR_EMPLOYEE_NOMINEE_DETAILSDto {
    id: number = 0;
    employee_Id: number = 0;
    nominee_RelationshipId: number = 0;
    nominee_Name: string = '';
    nominee_Mobile: string = '';
    nominee_EmailId: string = '';
    nominee_DOB: string = '';
    identity_Number: string = '';
    nominee_Address: string = '';
    isAadharStatus: true;
    isDeleted: false
}


//Permanent Contact Information Details
export class PermanentContactInformationDto {
    id: number = 0;
    status_Id: number = 0;
    remarks: string = '';
    action_Remarks: string = '';
    address: string = '';
    address1: string = '';
    country: number = 0;
    zone: number = 0;
    state: number = 0;
    city: string = '';
    pin: string = '';
    employee_Id: 0
}

//Professional Details
export class ProfessionalInformations {
    id: number = 0;
    status_Id: number = 0;
    remarks: string = '';
    action_Remarks: string = '';
    employeerName: string = '';
    isDeleted: false;
    employeerAddress: string = '';
    designation: string = '';
    contactPerson: string = '';
    contactNo: string = '';
    emailId: string = '';
    dateOfJoining: string = '';
    lastDrawnSalary: string = '';
    reasonForLeaving: string = '';
    dateOfLeaving: string = '';
    employee_Id: number = 0;
    attachments: Array<Profattachmentsdata> = [];
}

export class Profattachmentsdata {
    id: number = 0;
    status_Id: number = 0;
    remarks: string = '';
    action_Remarks: string = '';
    professional_Information_Attachements_Id: number = 0;
    employeeId: number = 0;
    employeeName: string = '';
    documentType: string = '';
    documentUrl: string
}


//Corresspondance Contact Information Details
export class CorresspondanceContactInformationDto {
    id: number = 0;
    status_Id: number = 0;
    remarks: string = '';
    action_Remarks: string = '';
    address: string = '';
    address1: string = '';
    country: number = 0;
    zone: number = 0;
    state: number = 0;
    city: string = '';
    pin: string = '';
    mobileNo2: string = '';
    phone: string = '';
    emailAddress2: string = '';
    employee_Id: 0
}

//Other Information Details
export class OtherInformationDto {
    id: number = 0;
    status_Id: number = 0;
    remarks: string = '';
    action_Remarks: string = '';
    bank_Name: string = '';
    branch_Name: string = '';
    account_No: string = '';
    ifsC_Code: string = '';
    status: true;
    other_Details: string = '';
    card_No: string = '';
    carProxy_Nod_No: string = '';
    user_Id: string = '';
    user_Data: string = '';
    user_Type: number = 0;
    signature: string = '';
    picture: string = '';
    signatureFile: string = '';
    pictureFile: string = '';
    employee_Id: number = 0;
    Identity_Proofs = new IdentityProofs();
}
export class IdentityProofs {
    id: number = 0;
    status_Id: number = 0;
    remarks: string = '';
    action_Remarks: string = '';
    identity_Type: string = '';
    identity_No: string = '';
    attachments: Array<IdentityProofsattachments> = [];
    valid_Upto: string = '';
    isDeleted: false;
    otherInformationId: 0
}
export class IdentityProofsattachments {
    id: number = 0;
    status_Id: number = 0;
    remarks: string = '';
    action_Remarks: string = '';
    identity_Proof_Id: number = 0;
    employeeId: number = 0;
    identityType: string = '';
    documentType: string = '';
    documentUrl: string
}


