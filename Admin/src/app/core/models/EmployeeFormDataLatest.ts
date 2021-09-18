export interface SysFamilyDetailsDto {
    id: number;
    status_Id: number;
    remarks: string;
    action_Remarks: string;
    employee_Id: number;
    isDeleted: boolean;
    familyDetail_RelationshipId: number;
    familyDetail_Name: string;
    familyDetail_Mobile: string;
    familyDetail_EmailId: string;
    familyDetail_DOB: Date | string;
    identity_Number: string;
    nominee_Address: string;
    isAadharStatus: boolean;
}

export class Attachment {
    id: number;
    status_Id: number;
    remarks: string;
    action_Remarks: string;
    educational_Qualification_Id: number;
    employeeId: number;
    courseName: string;
    documentType: string;
    documentUrl: string;
}

export interface SysEducationalQualificationDto {
    id: number;
    employee_Id: number;
    emp_Year_OF_Passing: number;
    qualification: string;
    specialization: string;
    school: string;
    board: string;
    marks: string;
    remarks: string;
    isDeleted: boolean;
    attachments: Attachment[];
}

export interface TBLHREMPLOYEENOMINEEDETAILSDto {
    id: number;
    employee_Id: number;
    nominee_RelationshipId: number;
    nominee_Name: string;
    nominee_Mobile: string;
    nominee_DOB: Date | string;
    identity_Number: string;
    nominee_Address: string;
    isAadharStatus: boolean;
    isDeleted: boolean;
}

export interface SysPermanentContactInformationDto {
    id: number;
    status_Id: number;
    remarks: string;
    action_Remarks: string;
    address: string;
    address1: string;
    country: number;
    zone: number;
    state: number;
    city: string;
    pin: string;
    employee_Id: number;
}

export class Attachment2 {
    id: number;
    status_Id: number;
    remarks: string;
    action_Remarks: string;
    professional_Information_Attachements_Id: number;
    employeeId: number;
    employeeName: string;
    documentType: string;
    documentUrl: string;
}

export interface SysProfessionalInformation {
    id: number;
    status_Id: number;
    remarks: string;
    action_Remarks: string;
    employeerName: string;
    isDeleted: boolean;
    employeerAddress: string;
    designation: string;
    contactPerson: string;
    contactNo: string;
    emailId: string;
    dateOfJoining: Date | string;
    lastDrawnSalary: string;
    reasonForLeaving: string;
    dateOfLeaving: Date | string;
    employee_Id: number;
    attachments: Attachment2[];
}

export interface SysCorresspondanceContactInformationDto {
    id: number;
    status_Id: number;
    remarks: string;
    action_Remarks: string;
    address: string;
    address1: string;
    country: number;
    zone: number;
    state: number;
    city: string;
    pin: string;
    mobileNo2: string;
    phone: string;
    emailAddress2: string;
    employee_Id: number;
}

export class Attachment3 {
    id: number;
    status_Id: number;
    remarks: string;
    action_Remarks: string;
    identity_Proof_Id: number;
    employeeId: number;
    identityType: string;
    documentType: string;
    documentUrl: string;
}

export class SysIdentityProof {
    id: number;
    status_Id: number;
    remarks: string;
    action_Remarks: string;
    identity_Type: string;
    identity_No: string;
    attachments: Attachment3[];
    valid_Upto: Date | string;
    isDeleted: boolean;
    otherInformationId: number;
}

export interface SysOtherInformationDto {
    id: number;
    status_Id: number;
    remarks: string;
    action_Remarks: string;
    bank_Name: string;
    branch_Name: string;
    account_No: string;
    ifsC_Code: string;
    status: boolean;
    other_Details: string;
    card_No: string;
    carProxy_Nod_No: string;
    user_Id: string;
    user_Data: string;
    user_Type: number;
    signature: string;
    picture: string;
    signatureFile: string;
    pictureFile: string;
    employee_Id: number;
    sys_Identity_Proofs: SysIdentityProof[];
}

export class Employee {
    id: number;
    status_Id: number;
    remarks: string;
    action_Remarks: string;
    companyId: number;
    employeeCategoryId: number;
    employeeCode: string;
    biometricCode: string;
    firstName: string;
    middleName: string;
    lastName: string;
    email: string;
    project_BranchId: number;
    departmentId: number;
    designationId: number;
    higher_Authority_Branch_ProjectId: number;
    higher_AuthorityId: number;
    higher_Authority_NameId: number;
    date_Of_Joining: Date;
    employee_TypeId: number;
    mobile_No: string;
    third_Party_Type: number;
    third_Party_Id: number;
    working_StatusId: number;
    probation_Period: number;
    referenceEmployeeName: string;
    reference_Phone_No: string;
    date_Of_Birth: Date;
    gender: string;
    nationality: string;
    religion: string;
    castId: number;
    physicalDisability: boolean;
    blood_GroupId: number;
    marital_StatusId: number;
    identification_Mark: string;
    status: boolean;
    professionalInformation: string;
    highestQualification: string;
    isActive?: boolean;
    isDeleted?: boolean;
    sys_FamilyDetailsDto: SysFamilyDetailsDto[];
    sys_EducationalQualificationDto: SysEducationalQualificationDto[];
    tBL_HR_EMPLOYEE_NOMINEE_DETAILSDto: TBLHREMPLOYEENOMINEEDETAILSDto[];
    sys_PermanentContactInformationDto: SysPermanentContactInformationDto;
    sys_ProfessionalInformations: SysProfessionalInformation[];
    sys_CorresspondanceContactInformationDto: SysCorresspondanceContactInformationDto;
    sys_OtherInformationDto: SysOtherInformationDto;
}