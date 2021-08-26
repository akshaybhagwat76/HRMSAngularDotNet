export class CompanyMaster {
    CompanyId?: number;
    EmployeeCategoryId?: number;
    EmployeeCode?: string;
    BiometricCode?: string;
    FirstName?: string;
    MiddleName?: string;
    LastName?: string;
    email?: string;
    Project_BranchId?: number;
    DepartmentId?: number;
    DesignationId?: number;
    Higher_Authority_Branch_ProjectId?: number;
    Higher_AuthorityId?: number;
    Higher_Authority_NameId?: number;
    Date_Of_Joining?: Date;
    Employee_TypeId?: number;
    Mobile_No?: string;
    Third_Party_Type?: number;
    Third_Party_Id?: number;
    Working_StatusId?: number;
    Probation_Period?: number;
    ReferenceEmployeeName?: string;
    Reference_Phone_No?: string;
    Date_Of_Birth?: Date;
    Gender?: string;
    Nationality?: string;
    Religion?: string;
    CastId?: number;
    PhysicalDisability?: boolean;
    Blood_GroupId?: number;
    Marital_StatusId?: number;
    Identification_Mark?: string;
    Status?: boolean;
    Status_Id?: number;
    sys_FamilyDetailsDto?: Sys_FamilyDetailsDto[];
    sys_EducationalQualificationDto?: TBL_HR_EMPLOYEE_EDUCATION_DETAILSDto[];
    tBL_HR_EMPLOYEE_NOMINEE_DETAILSDto?: TBL_HR_EMPLOYEE_NOMINEE_DETAILSDto[];
    sys_PermanentContactInformationDto?: Sys_PermanentContactInformationDto;
    sys_ProfessionalInformations?: Sys_ProfessionalInformationDto[];
    sys_CorresspondanceContactInformationDto?: Sys_CorresspondanceContactInformationDto;
    sys_OtherInformationDto?: Sys_OtherInformationDto;
}

export class Sys_FamilyDetailsDto {
    Employee_Id: number;
    FamilyDetail_RelationshipId: number;
    FamilyDetail_Name: string;
    FamilyDetail_Mobile: string;
    FamilyDetail_EmailId: string;
    FamilyDetail_DOB: Date;
    Identity_Number: string;
    Nominee_Address: string;
    IsAadharStatus: boolean;
}

export class TBL_HR_EMPLOYEE_EDUCATION_DETAILSDto {
    Id: number;
    Employee_Id: number;
    Emp_Year_OF_Passing: number;
    Qualification: string;
    Specialization: string;
    School: string;
    Board: string;
    Marks: string;
    Remarks: string;
    Attachments: string;
}

export class TBL_HR_EMPLOYEE_NOMINEE_DETAILSDto {
    Id: number;
    Employee_Id: number;
    Nominee_RelationshipId: number;
    Nominee_Name: string;
    Nominee_Mobile: string;
    Nominee_EmailId: string;
    Nominee_DOB: Date;
    Identity_Number: string;
    Nominee_Address: string;
    IsAadharStatus: boolean;
}

export class Sys_PermanentContactInformationDto {
    Address: string;
    Address1: string;
    Country: number;
    Zone: number;
    State: number;
    City: string;
    Pin: string;
    Employee_Id: number;
}

export class Sys_ProfessionalInformationDto {
    EmployeerName: string;
    EmployeerAddress: string;
    Designation: string;
    ContactPerson: string;
    ContactNo: string;
    EmailId: string;
    AttachmentType_Path: string;
    DateOfJoining: Date;
    LastDrawnSalary: string;
    ReasonForLeaving: string;
    DateOfLeaving: Date;
    Employee_Id: number;
}

export class Sys_CorresspondanceContactInformationDto {
    Address: string;
    Address1: string;
    Country: number;
    Zone: number;
    State: number;
    City: string;
    Pin: string;
    MobileNo2: string;
    Phone: string;
    EmailAddress2: string;
    Employee_Id: number;
}

export class Sys_OtherInformationDto {
    Bank_Name: string;
    Branch_Name: string;
    Account_No: string;
    IFSC_Code: string;
    Status: boolean;
    Other_Details: string;
    Card_No: string;
    CarProxy_Nod_No: string;
    User_Type: string;
    Signature: string;
    Picture: string;
    SignatureFile: string;
    PictureFile: string;
    Employee_Id: number;
    sys_Identity_Proofs: Sys_Identity_ProofDto[];
}

export class Sys_Identity_ProofDto {
    Identity_Type: string;
    Identity_No: string;
    Attachments: string;
    Attachments_File_Name: string;
    Valid_Upto: Date;
    OtherInformationId: number;
}
