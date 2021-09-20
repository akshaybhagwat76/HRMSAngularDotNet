import {
  Component,
  OnInit,
  ViewChild,
  AfterViewInit
} from '@angular/core';
import {
  employees
} from './data';
import {
  FormBuilder,
  Validators,
  FormGroup,
  FormArray,
  FormControl
} from '@angular/forms';
import {
  forkJoin
} from 'rxjs';

import {
  NgbModal
} from '@ng-bootstrap/ng-bootstrap';
import {
  CompanyService
} from '../../../core/services/company.service';
import {
  BranchesService
} from '../../../core/services/branches.service';
import {
  ContriesService
} from '../../../core/services/contries.service';
import {
  DepartmentsService
} from '../../../core/services/departments.service';
import {
  WorkingStatusService
} from '../../../core/services/workStatus.service';
import {
  CategoryEmpsService
} from '../../../core/services/categoryEmp.service';
import {
  TypeEmpsService
} from '../../../core/services/typeEmp.service';
import {
  HigherAuthorityService
} from '../../../core/services/higherAuthorites.service';
import {
  HigherAuthorityNameService
} from '../../../core/services/higherAuthoritesName.service';
import {
  ThirdPartyTypeService
} from '../../../core/services/thirdPartyType.service';
import {
  CastService
} from '../../../core/services/cast.service';
import {
  BloodGroupService
} from '../../../core/services/bloodgroup.service';
import {
  ZoneService
} from '../../../core/services/zone.service';
import {
  StateService
} from '../../../core/services/state.service';
import {
  RelationshipService
} from '../../../core/services/relationShip.service';
import {
  UserTypeService
} from '../../../core/services/usertype.service';
import {
  EmployeesService
} from 'src/app/core/services/employees.service';
import { HigherAuthoritiesBranchesService } from 'src/app/core/services/higher-authorities-branches.service';
import { ThirdpartyService } from 'src/app/core/services/thirdparty.service';
import { MeritalstatusService } from 'src/app/core/services/meritalstatus.service';
import { HttpClient, HttpEventType } from '@angular/common/http';
import { HighestQualificationService } from 'src/app/core/services/highest-qualification.service';
import { DesignationsService } from 'src/app/core/services/designations.service';
import { EmployeeMasterService } from 'src/app/core/services/employee-master.service';
import { IdentityTypeService } from 'src/app/core/services/identity-type.service';
import { CompanyMaster } from 'src/app/core/models/company-master.models';
import {
  EmployeeFormData, Basicdetailsdtls, FamilyDetailsDto, EducationalQualificationDto, Educationattachmentsdata,
  HR_EMPLOYEE_NOMINEE_DETAILSDto, PermanentContactInformationDto, ProfessionalInformations, Profattachmentsdata,
  CorresspondanceContactInformationDto, OtherInformationDto, IdentityProofs,
  IdentityProofsattachments
} from '../../../core/models/EmployeeFormData';
import { EmployeedataService } from '../../../core/services/employeedata.service';
import { Attachment, Attachment2, Attachment3, Employee, SysFamilyDetailsDto } from 'src/app/core/models/EmployeeFormDataLatest';

@Component({
  moduleId: "",
  selector: 'app-default',
  templateUrl: './default.component.html',
  styleUrls: ['./default.component.scss']
})
export class DefaultComponent implements OnInit {

  validationform: FormGroup; // bootstrap validation form
  validationformNominee: FormGroup;
  validationFamily: FormGroup;

  
  employeeformdata: EmployeeFormData;
  //Employee Data variables
  basicdetails: Basicdetailsdtls;
  FamilyDetails: FamilyDetailsDto;
  EducationalQualification: EducationalQualificationDto;
  NOMINEE_DETAILS: HR_EMPLOYEE_NOMINEE_DETAILSDto;
  PermanentContact: PermanentContactInformationDto;
  ProfessionalInf: ProfessionalInformations;
  CorresspondanceContact: CorresspondanceContactInformationDto;
  OtherInformation: OtherInformationDto;

  // Form submition

  submit: boolean;
  hrmsForm: FormGroup;
  familyForm: FormGroup;
  nomineeForm: FormGroup;
  educationForm: FormGroup;
  // permanentContactInformationForm: FormGroup;
  // corresspondanceContactInformationForm: FormGroup;
  // otherInformationForm: FormGroup;
  educationDocumentForm: FormGroup;
  identityProofForm: FormGroup;
  ProfessionalInformationForm: FormGroup;
  ProfessionalDocumentInformationForm: FormGroup;
  @ViewChild('content') content;
  educationInfoSubmit: boolean;
  professionalInfoSubmit: boolean;
  companyMaster: CompanyMaster = {};
  signatureUrl: any = null;
  pictureUrl: any = null;
  employeeId = 0; //  

  constructor(private modalService: NgbModal, public formBuilder: FormBuilder, private companyService: CompanyService,
    private branchesService: BranchesService, private contriesService: ContriesService,
    private departmentsService: DepartmentsService,
    private workingStatusService: WorkingStatusService,
    private categoryEmpsService: CategoryEmpsService,
    private higherAuthoritiesBranchesService: HigherAuthoritiesBranchesService,
    private typeEmpsService: TypeEmpsService,
    private employeeMasterService: EmployeeMasterService,
    private higherAuthorityService: HigherAuthorityService,
    private thirdPartyTypeService: ThirdPartyTypeService,
    private thirdPartyService: ThirdpartyService,
    private higherAuthorityNameService: HigherAuthorityNameService,
    private castService: CastService,
    private bloodGroupService: BloodGroupService,
    private highestQualificationService: HighestQualificationService,
    private zoneService: ZoneService,
    private stateService: StateService,
    private relationshipService: RelationshipService,
    private userTypeService: UserTypeService,
    private employesService: EmployeesService,
    private meritalstatusService: MeritalstatusService,
    private fb: FormBuilder,
    private designationService: DesignationsService,
    private identityService: IdentityTypeService,
    private employeedataservice: EmployeedataService,
    private http: HttpClient,
  ) { }
  companies: any;
  branches: any;
  contries: any;
  departments: any;
  workingStatus: any;
  categories: any;
  typiesEmp: any;
  higherAuthorities: any;
  filteredHigherAuthorities: any;

  higherAuthoritiesBranches: any;
  disabledEmployeeCode = false;
  thirdPartyName: any;
  thirdParty: any;
  filetedThirdParty: any;
  thirdPartyType: any;


  higherAuthorityNames: any;
  filteredHigherAuthorityNames: any;
  casts: any;
  bloodGroup: any;
  states: any;
  PerFilteredStates: any;
  CorrFilteredStates: any;

  zones: any;
  countryZones: any[] = [];
  projectDepartments: any[] = [];

  corresspondCountryZone: any[] = [];
  thirdPartyList: any;
  relationShip: any;
  designation: any;
  userType: any;
  employees: any;
  meritalStatuses: any;
  // Family Details
  fName: string;
  FamilyDetail_RelationshipId: number = 0;
  FamilyDetail_DOB: Date;
  fAadharNo: string;
  fAadharStatus: Boolean = false;
  fAddress: string;
  fContactNo: string;
  isFamilyEdited = false;
  updatedFamilyDetailsId: number;

  // Nominee Details
  nName: string;
  nRelationship: number = 0;
  nDateOfBirth: Date;
  nAadharNo: string;
  nAadharStatus: boolean = false;
  nAddress: string;
  nContactNo: string;
  isNomineeEdited = false;
  updatedNomineeDetailsId: number;
  highestQualifications: any;
  designations: any;
  identityList: any;
  designationsDepartmentList: any;

  // Educational Information
  highestQualification: string = '0';
  qualification: string = '0';
  year: number;
  specialization: string;
  school: string;
  board: string;
  marks: number;
  isUploaded: boolean;
  isEducationEdited = false;
  udatedEducationDetailsId: number;
  currentDate: any;

  // Education Document
  courseName: number;
  documentType: string;
  documentfile: File;
  documentPreviewUrl: any = null;
  eduDocumentPreviewUrl: any = null;
  fileUploadProgress: string = null;
  uploadedFilePath: string = null;
  Numberofdays: any;
  NumberOfMonths: any;
  NumberOfYear: any;
  NumberofDate: any;
  NumberOfMonth: any;
  NumberOfYears: any;

  // Identity Proof
  identityType: string;
  identityNo: string;
  validUpto: Date;
  attachmentsSysIdentityProof: Attachment3[] = [];
  identityPreviewUrl: string;

  // Professional Information
  EmployeerName: string;
  EmployeerAddress: string;
  Designation: string;
  ContactPerson: string;
  ContactNo: string;
  EmailId: string;
  DateOfJoining: Date;
  LastDrawnSalary: number;
  ReasonforLeavingy: string;
  DateOfLeaving: Date;
  Professionaldocument: boolean;
  isPersonalStatus = false;
  isProfessionalDocUploaded = false;
  attachmentsProfessionalInfo: Attachment2[] = []; // need to check

  // Professional Document
  employeeName: number;
  piDocumentType: string;
  pidocumentfile: File;
  _documentPreviewUrl: any = null;
  documentUrl: any = null;

  isStatusVisible = true;

  public fetchData() {
    const companies = this.companyService.getAll();
    const branches = this.branchesService.getAll();
    const contries = this.contriesService.getAll();
    const departments = this.departmentsService.getAll();
    const workingStatus = this.workingStatusService.getAll();
    const categories = this.categoryEmpsService.getAll();
    const typesEmp = this.typeEmpsService.getAll();
    const higherAuthority = this.higherAuthorityService.getAll();
    const higherAuthorityName = this.higherAuthorityNameService.getAll();
    const higherAuthoritesBranches = this.higherAuthoritiesBranchesService.getAll();
    const thirdPartyType = this.thirdPartyTypeService.getAll();
    const thirdParty = this.thirdPartyService.getAll();
    const cast = this.castService.getAll();
    const bloodGroup = this.bloodGroupService.getAll();
    const state = this.stateService.getAll();
    const zones = this.zoneService.getAll();
    const relationship = this.relationshipService.getAll();
    const userType = this.userTypeService.getAll();
    const employees = this.employesService.getAll();
    const merital = this.meritalstatusService.getAll();
    const highest_Qualification = this.highestQualificationService.getAll();
    const designation = this.designationService.getAll();
    const identity = this.identityService.getAll();

    forkJoin([companies, branches, contries, departments, workingStatus, categories,
      typesEmp, higherAuthority, higherAuthorityName, thirdPartyType, cast,
      state, zones, relationship, userType, employees, higherAuthoritesBranches, thirdParty,
      cast, bloodGroup, merital, highest_Qualification, designation, identity
    ]).subscribe(result => {
      this.companies = result[0];
      this.branches = result[1];
      this.contries = result[2];
      this.departments = result[3];
      this.workingStatus = result[4];
      this.categories = result[5];
      this.typiesEmp = result[6];
      this.higherAuthorities = result[7];
      this.higherAuthorityNames = result[8];
      this.thirdPartyType = result[9];
      this.casts = result[10];
      this.states = result[11];
      this.zones = result[12];
      this.relationShip = result[13];
      this.userType = result[14];
      this.employees = result[15];
      this.higherAuthoritiesBranches = result[16];
      this.thirdParty = result[17];
      this.casts = result[18];
      this.bloodGroup = result[19];
      this.meritalStatuses = result[20];
      this.highestQualifications = result[21];
      this.designations = result[22];
      this.identityList = result[23];
      ;
      // this.designations = result[22];
      // this.designations = result[23];

      // this.designation = result[21];
    });
    let employeeId = 0;
    if(employeeId) {
      this.getEmployeeDetails(employeeId);
    }
    //this.employees = employees;
  }
   
  // Family Details
  get familyDetailsArr() {


    return (<FormArray>this.hrmsForm.get('sys_FamilyDetailsDto')).controls;
  }

  // Nominee Details
  get nomineeDetailsArr() {
    return (<FormArray>this.hrmsForm.get('tBL_HR_EMPLOYEE_NOMINEE_DETAILSDto')).controls;
  }

  // Education Information
  get educationInformationArr() {
    return (<FormArray>this.hrmsForm.get('sys_EducationalQualificationDto')).controls;
  }

  // Education Document
  get educationDocumentArr() {
    return "";//this.hrmsForm.controls['sys_EducationalQualificationDto'].get('Attachments')['controls'] as FormArray;
  }
  // Identity Proof
  get identityProofArr() {
    //  return return (<FormArray>this.hrmsForm.get('sys_OtherInformationDto')).controls;
    return this.hrmsForm.controls['sys_OtherInformationDto'].get('sys_Identity_Proofs')['controls'] as FormArray;
  }
  // Professional Information
  get professionalInformationArr() {
    return (<FormArray>this.hrmsForm.get('sys_ProfessionalInformations')).controls;
  }

  // Professional Attachment
  get professionalDocumentArr() {
    return (<FormArray>this.hrmsForm.get('professionalDocumentAttachment')).controls;
  }
  ngOnInit() {
    const relationship = this.relationshipService.getAll();
    this.fbBuilder();
    //  this.forCompany();
    // this.forBranch();
    // this.forCountries();
    // this.forDepartments();
    // this.forWorkingStatus();
    // this.forCategories();
    //this.typiesEmp();
    // this.forHigherAuthorityNames();
    this.basicdetails = this.employeedataservice.getEmployeeBasicData();
    this.FamilyDetails = this.employeedataservice.getFamilyDetails();
    this.EducationalQualification = this.employeedataservice.getEducationalQualification();
    this.NOMINEE_DETAILS = this.employeedataservice.getHR_EMPLOYEE_NOMINEE_DETAILS();
    this.PermanentContact = this.employeedataservice.getPermanentContactInformation();
    this.ProfessionalInf = this.employeedataservice.getProfessionalInformations();
    this.CorresspondanceContact = this.employeedataservice.getCorresspondanceContactInformationDto();
    this.OtherInformation = this.employeedataservice.getOtherInformationDto();
    console.log(this.basicdetails);
    console.log(this.FamilyDetails);
    console.log(this.EducationalQualification);
    console.log(this.NOMINEE_DETAILS);
    console.log(this.PermanentContact);
    console.log(this.ProfessionalInf);
    console.log(this.CorresspondanceContact);
    console.log(this.OtherInformation);

    this.fetchData();
    /**
     * Bootstrap validation form data
     */
    this.validationformNominee = this.formBuilder.group({
      validationNameNominee: [''],
      dateOfBirthNominee: [''],
      relationshipNominee: [''],
      aadharNoNominee: [''],
      rdoAadharStatusNominee1: [''],
      rdoAadharStatusNominee2: [''],
      validationContactNominee: [''],
      validationAddressNominee: [''],
    });

    // form family detail
    this.validationFamily = this.formBuilder.group({
      validationNameNominee: [''],
      dateOfBirthNominee: [''],
      relationshipNominee: [''],
      aadharNoNominee: [''],
      rdoAadharStatusNominee1: [''],
      rdoAadharStatusNominee2: [''],
      validationContactNominee: [''],
      validationAddressNominee: [''],
    });
    this.validationform = this.formBuilder.group({
      firstName: ['', [Validators.required, Validators.pattern('[a-zA-Z0-9]+')]],
      lastName: ['', [Validators.required, Validators.pattern('[a-zA-Z0-9]+')]],
      employeeCode: ['', [Validators.required, Validators.pattern('[a-zA-Z0-9]+')]],
      company: ['', [Validators.required, Validators.pattern('[a-zA-Z0-9]+')]],
      category: ['', [Validators.required, Validators.pattern('[a-zA-Z0-9]+')]],
      department: ['', [Validators.required, Validators.pattern('[a-zA-Z0-9]+')]],
      project: ['', [Validators.required, Validators.pattern('[a-zA-Z0-9]+')]],
      dateOfJoining: ['', [Validators.required, Validators.pattern('[a-zA-Z0-9]+')]],
      mobileNo: ['', [Validators.required, Validators.pattern('[a-zA-Z0-9]+')]],
      employeeType: ['', [Validators.required, Validators.pattern('[a-zA-Z0-9]+')]],
      maritalStatus: ['', [Validators.required, Validators.pattern('[a-zA-Z0-9]+')]],
      physicalNo: [''],
      religion: ['', [Validators.required, Validators.pattern('[a-zA-Z0-9]+')]],
      nationality: ['', [Validators.required, Validators.pattern('[a-zA-Z0-9]+')]],
      biometricCode: [''],
      higherAuthorityName: [''],
      higherAuthority: [''],
      higherAuthorityProject: [''],
      identificationMark: [''],
      emailAddress: [''],
      thirdPartyType: [''],
      thirdParty: [''],
      workingStatus: [''],
      probationPeriod: [''],
      refName: [''],
      refNo: [''],
      bloodGroup: [''],
      cast: [''],
      physicalYes: [''],
      dateOfBirth: [''],
      contactNo: [''],
      address: [''],
      aadharNo: [''],
      familyDateOfBirth: [''],
      relationship: [''],
      familyName: [''],
    });

    /**
     * Fetches the data
     */
    // this.fetchData();

    // console.warn(this.companies);

  }
  get f() { return this.hrmsForm.controls; }

  get pcInfo() {
    return (<FormGroup>this.hrmsForm.get('sys_PermanentContactInformationDto')).controls;
  }
  get ccInfo() {
    return (<FormGroup>this.hrmsForm.get('sys_CorresspondanceContactInformationDto')).controls;

  }
  get oInfo() {
    return (<FormGroup>this.hrmsForm.get('sys_OtherInformationDto')).controls;
  }
  fbBuilder() {
    this.hrmsForm = this.fb.group({
      id: ['', [Validators.required]],
      Status_Id: 1,
      remarks: [''],
      action_Remarks: [''],
      companyId: ['', [Validators.required]],
      employeeCategoryId: [''],
      employeeCode: [''],
      biometricCode: [''],
      employeeAutoGenerate: [false],
      firstName: ['', [Validators.required]],
      middleName: [''],
      lastName: ['', [Validators.required]],
      email: ['', [Validators.email]],
      project_BranchId: [''],
      departmentId: ['', [Validators.required]],
      designationId: ['', [Validators.required]],
      higher_Authority_Branch_ProjectId: [''],
      higher_AuthorityId: [''],
      higher_Authority_NameId: [''],
      date_Of_Joining: [''],
      employee_TypeId: ['', [Validators.required]],
      mobile_No: ['', [Validators.required, Validators.pattern("^[0-9]*$")]],
      third_Party_Type: [''],
      third_Party_Id: [''],
      working_StatusId: [''],
      probation_Period: [0],
      referenceEmployeeName: [''],
      reference_Phone_No: ['', [Validators.pattern("^[0-9]*$")]],
      date_Of_Birth: [''],
      gender: ['Male'],
      nationality: ['', [Validators.required]],
      religion: ['', [Validators.required]],
      castId: [''],
      physicalDisability: [false],
      blood_GroupId: [''],
      marital_StatusId: ['', [Validators.required]],
      identification_Mark: [''],
      
      status: [''],
      professionalInformation: [''],
      highestQualification: [''],
      // isActive: [true],
      // isDelete: [false],
      sys_FamilyDetailsDto: new FormArray([]),
      tBL_HR_EMPLOYEE_NOMINEE_DETAILSDto: new FormArray([]),
      sys_EducationalQualificationDto: new FormArray([]),
      // educationDocument: new FormArray([]),
      sys_PermanentContactInformationDto: this.fb.group({
        address: ['', [Validators.required]],
        address1: [''],
        country: ['', [Validators.required]],
        zone: ['', [Validators.required]],
        state: ['', [Validators.required]],
        city: ['', [Validators.required]],
        pin: ['', [Validators.required]],
        employee_Id: [0]
      }),
      sys_CorresspondanceContactInformationDto: this.fb.group({
        address: ['', [Validators.required]],
        address1: [''],
        country: ['', [Validators.required]],
        zone: ['', [Validators.required]],
        state: ['', [Validators.required]],
        city: ['', [Validators.required]],
        pin: ['', [Validators.required]],
        phone: [],
        emailAddress2: ['', [Validators.email]],
        mobileNo2: [],
        employee_Id: [0]

      }),
      sys_OtherInformationDto: this.fb.group({
        bank_Name: [''],
        branch_Name: [''],
        account_No: [''],
        ifsC_Code: [''],
        status: [true],
        other_Details: [''],
        card_No: [''],
        carProxy_Nod_No: [''],
        // ipUserId: [''],
        // ipUserData: [''],
        user_Type: [''],
        signatureFile: [''],
        pictureFile: [''],
        employee_Id: [0],
        sys_Identity_Proofs: new FormArray([]),
      }),
      professionalInformationStatus: ['', [Validators.required]],
      sys_ProfessionalInformations: new FormArray([]),
      professionalDocumentAttachment: new FormArray([])
    });
    // this.initEducationalQualification();
  }
  initEducationalQualification() {
    const EducationalQualificationArray = <FormArray>this.hrmsForm.controls['sys_EducationalQualificationDto'];
    for (let k = 0; k < 1; k++) {
      EducationalQualificationArray.push(this.fb.group({
        id: [],
        employee_Id: [],
        emp_Year_OF_Passing: [],
        qualification: [],
        specialization: [],
        school: [],
        board: [],
        marks: [],
        remarks: [],
        attachments: this.fb.array([])
      }))
      this.initEduAttachmentsQualification();


    }
  }
  initEduAttachmentsQualification() {
    const EduAttachmentsArray = (<FormArray>this.hrmsForm.controls['sys_EducationalQualificationDto']).at(0).get('Attachments') as FormArray;
    for (let k = 0; k < 1; k++) {
      EduAttachmentsArray.push(this.fb.group({
        educational_Qualification_Id: [],
        employee_Id: [],
        courseName: [],
        documentType: [],
        documentUrl: [],
      }))
    }
  }


  // Add Family details
  addfamilyDetailsArr() {
    if (this.fName && this.FamilyDetail_RelationshipId) {
      this.familyForm = this.formBuilder.group({
        familyDetail_Name: [this.fName],
        familyDetail_DOB: [this.FamilyDetail_DOB],
        familyDetail_RelationshipId: [this.FamilyDetail_RelationshipId],
        identity_Number: [this.fAadharNo],
        isAadharStatus: [this.fAadharStatus],
        familyDetail_Mobile: [this.fContactNo],
        nominee_Address: [this.fAddress],
        employee_Id: [0]
      });
      (<FormArray>this.hrmsForm.get('sys_FamilyDetailsDto')).push(this.familyForm);
      this.clearFamilyDetails();
    } else {
      if (!(this.fName || this.FamilyDetail_RelationshipId)) {
        alert(`
        - Enter Name
        - Select Relationship
        `);
      }
      else if (!this.fName) {
        alert(`
      - Enter Name
      `);
      }
      else if (!this.FamilyDetail_RelationshipId) {
        alert(`
        - Select Relationship
      `);
      }

    }

  }

  // Edit Family Details
  editFamilyDetails(row) {
    const familyData = (<FormArray>this.hrmsForm.controls['sys_FamilyDetailsDto']).at(row).value;
    this.fName = familyData.familyDetail_Name;
    this.FamilyDetail_RelationshipId = familyData.familyDetail_RelationshipId;
    this.FamilyDetail_DOB = familyData.familyDetail_DOB;
    this.fAadharNo = familyData.identity_Number;
    this.fAadharStatus = familyData.isAadharStatus;
    this.fAddress = familyData.nominee_Address;
    this.fContactNo = familyData.familyDetail_Mobile;
    this.isFamilyEdited = true;
    this.updatedFamilyDetailsId = row;
  }

  // Update Family Details
  updatefamilyDetailsArr() {
    const familtyDetailsform = (<FormArray>this.hrmsForm.controls['sys_FamilyDetailsDto']).at(this.updatedFamilyDetailsId);
    familtyDetailsform.patchValue({
      'familyDetail_Name': this.fName,
      'familyDetail_DOB': this.FamilyDetail_DOB,
      'familyDetail_RelationshipId': this.FamilyDetail_RelationshipId,
      'identity_Number': this.fAadharNo,
      'isAadharStatus': this.fAadharStatus,
      'familyDetail_Mobile': this.fContactNo,
      'nominee_Address': this.fAddress,
    });
    this.isFamilyEdited = false;
    this.updatedFamilyDetailsId = 0;
    this.clearFamilyDetails();
  }

  // Delete Familt Details
  deleteFamilyDetails(row) {
    const familyDetails = <FormArray>this.hrmsForm.controls['sys_FamilyDetailsDto'];
    if (familyDetails) {
      familyDetails.removeAt(row);
    }
    if (!familyDetails.length) {
      this.isFamilyEdited = false;
    }
  }

  // Clear Family Details
  clearFamilyDetails() {
    this.fName = "";
    this.FamilyDetail_RelationshipId = null;
    this.FamilyDetail_DOB = null;
    this.fAadharNo = "";
    this.fAadharStatus = false;
    this.fAddress = "";
    this.fContactNo = "";
  }

  // Add Nominee Details
  addNomineeDetailsArr() {
    if (this.nName && this.nRelationship) {
      this.nomineeForm = this.formBuilder.group({
        nominee_Name: [this.nName],
        nominee_DOB: [this.nDateOfBirth],
        nominee_RelationshipId: [this.nRelationship],
        identity_Number: [this.nAadharNo],
        isAadharStatus: [this.nAadharStatus],
        nominee_Mobile: [this.nContactNo],
        nominee_Address: [this.nAddress],
        employee_Id: [0]
      });
      (<FormArray>this.hrmsForm.get('tBL_HR_EMPLOYEE_NOMINEE_DETAILSDto')).push(this.nomineeForm);
      this.clearNomineeDetails();
    }

    else {
      if (!(this.nName || this.nRelationship)) {
        alert(`
        - Enter Name
        - Select Relationship
        `);
      }
      else if (!this.nName) {
        alert(`
      - Enter Name
      `);
      }
      else if (!this.nRelationship) {
        alert(`
        - Select Relationship
      `);
      }
    }
  }

  // Edit Nominee Details
  editNomineeDetails(row) {
    const nomineeData = (<FormArray>this.hrmsForm.controls['tBL_HR_EMPLOYEE_NOMINEE_DETAILSDto']).at(row).value;
    this.nName = nomineeData.Nominee_Name;
    this.nRelationship = nomineeData.Nominee_RelationshipId;
    this.nDateOfBirth = nomineeData.Nominee_DOB;
    this.nAadharNo = nomineeData.Identity_Number;
    this.nAadharStatus = nomineeData.IsAadharStatus;
    this.nAddress = nomineeData.AddressNominee;
    this.nContactNo = nomineeData.Nominee_Mobile;
    this.isNomineeEdited = true;
    this.updatedNomineeDetailsId = row;
  }

  // Update Nominee Details
  updateNomineeDetailsArr() {
    const nommineeDetailsform = (<FormArray>this.hrmsForm.controls['tBL_HR_EMPLOYEE_NOMINEE_DETAILSDto']).at(this.updatedNomineeDetailsId);
    nommineeDetailsform.patchValue({
      'nominee_Name': this.nName,
      'nominee_DOB': this.nDateOfBirth,
      'nominee_RelationshipId': this.nRelationship,
      'identity_Number': this.nAadharNo,
      'isAadharStatus': this.nAadharStatus,
      'nominee_Mobile': this.nContactNo,
      'nominee_Address': this.nAddress,
    });
    this.isNomineeEdited = false;
    this.updatedNomineeDetailsId = 0;
    this.clearNomineeDetails();
  }

  // Delete Nominee Details
  deleteNomineeDetails(row) {
    const nomineeDetails = <FormArray>this.hrmsForm.controls['tBL_HR_EMPLOYEE_NOMINEE_DETAILSDto'];
    if (nomineeDetails) {
      nomineeDetails.removeAt(row);
    }
  }

  // Clear Nominee Details
  clearNomineeDetails() {
    this.nName = "";
    this.nRelationship = null;
    this.nDateOfBirth = null;
    this.nAadharNo = "";
    this.nAadharStatus = false;
    this.nAddress = "";
    this.nContactNo = "";
  }

  // Add Education Information
  addEducationInformationArr() {
    this.educationInfoSubmit = true;
    if (this.qualification && this.year) {
      this.educationForm = this.formBuilder.group({
        // highestQualification: [this.highestQualification],
        qualification: [this.qualification],
        emp_Year_OF_Passing: [this.year],
        specialization: [this.specialization],
        school: [this.school],
        board: [this.board],
        marks: [this.marks],
        // attachments: [''],
        employee_Id: [0]
      });
      (<FormArray>this.hrmsForm.get('sys_EducationalQualificationDto')).push(this.educationForm);
      if (this.isUploaded) {
        this.addEducationDocumentArr();
      }
      this.clearEducationInformation();
      this.educationInfoSubmit = false;
    }

  }

  // Edit Education Information
  editEducationInformation(row) {
    const educationData = (<FormArray>this.hrmsForm.controls['sys_EducationalQualificationDto']).at(row).value;
    // this.highestQualification = educationData.highestQualification;
    this.qualification = educationData.Qualification;
    this.year = educationData.Emp_Year_OF_Passing;
    this.specialization = educationData.Specialization;
    this.school = educationData.School;
    this.board = educationData.Board;
    this.marks = educationData.Marks;
    this.isUploaded = educationData.Attachments;
    this.isEducationEdited = true;
    this.udatedEducationDetailsId = row;
  }

  // Update Education Information
  updateEducationInformationArr() {
    const educationInformationform = (<FormArray>this.hrmsForm.controls['sys_EducationalQualificationDto']).at(this.udatedEducationDetailsId);
    educationInformationform.patchValue({
      // 'highestQualification': [this.highestQualification],
      'qualification': this.qualification,
      'emp_Year_OF_Passing': this.year,
      'specialization': this.specialization,
      'school': this.school,
      'board': this.board,
      'marks': this.marks,
      'attachments': [''],
    });
    this.isEducationEdited = false;
    this.udatedEducationDetailsId = 0;
    this.clearEducationInformation();
  }

  // Delete Education Information
  deleteEducationInformation(row) {
    const educationInformation = <FormArray>this.hrmsForm.controls['sys_EducationalQualificationDto'];
    if (educationInformation) {
      educationInformation.removeAt(row);
    }
  }

  // Clear Education Information
  clearEducationInformation() {
    this.highestQualification = null;
    this.qualification = "";
    this.year = null;
    this.specialization = "";
    this.school = "";
    this.board = "";
    this.marks = null;
    this.isUploaded = false;
  }

  // Add Education Document
  addEducationDocumentArr() {
    this.educationDocumentForm = this.formBuilder.group({
      courseName: [this.qualification],
      documentType: [''],
      documentfile: [''],
      eduDocumentPreviewUrl: ['']
    });
    // (<FormArray>this.hrmsForm.get('educationDocument')).push(this.educationDocumentForm);
    (<FormArray>this.hrmsForm.get('sys_EducationalQualificationDto').get('Attachments')).push(this.educationDocumentForm);
    // this.clearEducationDocument();
  }

  // Clear Education Document
  clearEducationDocument() {
    this.courseName = null;
    this.documentType = "";
    this.documentfile = null;
    this.fileUploadProgress = "";
    this.eduDocumentPreviewUrl = "";
  }

  // Delete Education Document
  deleteEducationDocument(row) {
    const educationDocument = this.hrmsForm.controls['sys_EducationalQualificationDto'].get('Attachments') as FormArray;
    if (educationDocument) {
      educationDocument.removeAt(row);
    }
  }

  // Add Identity Proof
  addIdentityProoftArr() {
    // this.identityProofForm = this.formBuilder.group({
    //   identity_Type: [this.identityType],
    //   identity_No: [this.identityNo],
    //   valid_Upto: [this.validUpto],
    //   attachments: [this.attachments],
    //   identityPreviewUrl: [this.documentPreviewUrl]
    // });
    this.attachmentsSysIdentityProof && this.attachmentsSysIdentityProof.forEach(attachment => {
      attachment.identityType = this.identityType;
    });

    // id: number;
    // status_Id: number;
    // remarks: string;
    // action_Remarks: string;
    // identity_Proof_Id: number;
    // employeeId: number;
    // identityType: string;
    // documentType: string;
    // documentUrl: string;

    this.identityProofForm = this.formBuilder.group({
      identity_Type: [this.identityType],
      identity_No: [this.identityNo],
      valid_Upto: [this.validUpto],
      attachments: [this.attachmentsSysIdentityProof],
    });

    // this.documentPreviewUrl
    
    (<FormArray>this.hrmsForm.get('sys_OtherInformationDto').get('sys_Identity_Proofs')).push(this.identityProofForm);
    // this.clearEducationDocument();
  }

  // Delete Identity Proof
  deleteIdentityProof(row) {

    const IdentityProof = this.hrmsForm.controls['sys_OtherInformationDto'].get('sys_Identity_Proofs') as FormArray;
    if (IdentityProof) {
      IdentityProof.removeAt(row);
    }
  }

  // Add Professional Information
  addProfessionalInformationArr() {
    this.professionalInfoSubmit = true;
    if (this.EmployeerName && this.EmailId && this.DateOfJoining && this.LastDrawnSalary) {
      this.ProfessionalInformationForm = this.formBuilder.group({
        employeerName: [this.EmployeerName],
        employeerAddress: [this.EmployeerAddress],
        designation: [this.Designation],
        contactPerson: [this.ContactPerson],
        contactNo: [this.ContactNo],
        emailId: [this.EmailId],
        dateOfJoining: [this.DateOfJoining],
        lastDrawnSalary: [this.LastDrawnSalary],
        reasonForLeaving: [this.ReasonforLeavingy],
        dateOfLeaving: [this.DateOfLeaving],
        attachmentType_Path: [this.Professionaldocument],
        employee_Id: [0]
      });
      (<FormArray>this.hrmsForm.get('sys_ProfessionalInformations')).push(this.ProfessionalInformationForm);
      if (this.isProfessionalDocUploaded) {
        this.addProfessionalDocumentArr();
      }
      this.professionalInfoSubmit = false;
    }

    // this.clearEducationDocument();
  }
  // Delete Professional Information
  deleteProfessionalInformation(row) {
    const ProfessionalInformation = <FormArray>this.hrmsForm.controls['sys_ProfessionalInformations'];
    if (ProfessionalInformation) {
      ProfessionalInformation.removeAt(row);
    }
  }

  // Add Professional Document
  addProfessionalDocumentArr() {
    // this.ProfessionalDocumentInformationForm = this.formBuilder.group({
    //   piEmployeeName: [this.EmployeerName],
    //   piDocumentType: [''],
    //   pidocumentfile: [''],
    //   piDocumentPreviewUrl: ['']
    // });
    this.ProfessionalDocumentInformationForm = this.formBuilder.group({
      employeeName: [this.EmployeerName],
      documentType: [''],
      documentfile: [''],
      documentPreviewUrl: ['']
    });
    (<FormArray>this.hrmsForm.get('professionalDocumentAttachment')).push(this.ProfessionalDocumentInformationForm);
  }

  // Delete Professional
  deleteProfessionalDoc(row) {
    const _professionalDoc = <FormArray>this.hrmsForm.controls['professionalDocumentAttachment'];
    if (_professionalDoc) {
      _professionalDoc.removeAt(row);
    }
  }

  ngAfterViewInit() {
    // setTimeout(() => {
    //   this.openModal();
    // }, 2000);
  }

  /**
   * Fetches the data
   */

  // openModal() {
  //   this.modalService.open(this.content, { centered: true });
  // }

  /**
   * Returns form
   */
  get form() {
    return this.validationform.controls;
  }

  /**
   * Bootsrap validation form submit method
   */
  validSubmit() {
    this.submit = true;
  }
  disabledEmployee(event) {
    this.disabledEmployeeCode = event.target.checked;
    this.hrmsForm.patchValue({
      'employeeAutoGenerate': event.target.checked
    });
    if (this.disabledEmployeeCode == true) {
      (document.getElementById("eEmployeeCode") as HTMLInputElement).value = "";
    }
  }
  CountDays(event) {
    const oneDay = 24 * 60 * 60 * 1000;
    this.currentDate = new Date();
    var dateOfjoining = new Date(event.target.value);
    this.Numberofdays = Math.floor((this.currentDate.getTime() - dateOfjoining.getTime()) / 1000 / 60 / 60 / 24);
    var intvalue = (this.currentDate - dateOfjoining.getTime()) / (365 * 24 * 60 * 60 * 1000);
    this.NumberOfYear = Math.floor(intvalue);
    let dateOfjoiningmonth = dateOfjoining.getMonth();
    let currentmonth = this.currentDate.getMonth();
    let dateOfjoiningyear = dateOfjoining.getFullYear();
    let currentyear = this.currentDate.getFullYear();
    this.NumberOfMonths = (currentyear - dateOfjoiningyear) * 12 + (currentmonth - dateOfjoiningmonth);
    //const diffDays = Math.round(Math.abs((dateOfjoining - this.currentDate) / oneDay));
    //var Difference_In_Time = dateOfjoining.getTime() - currentDate.getTime();

    // To calculate the no. of days between two dates
    // var Difference_In_Days = Difference_In_Time / (1000 * 3600 * 24);
  }

  DateOfBirth(event) {
    const oneDay = 24 * 60 * 60 * 1000;
    this.currentDate = new Date();
    var dateOfjoining = new Date(event.target.value);
    this.NumberofDate = Math.floor((this.currentDate.getTime() - dateOfjoining.getTime()) / 1000 / 60 / 60 / 24);
    var intvalue = (this.currentDate - dateOfjoining.getTime()) / (365 * 24 * 60 * 60 * 1000);
    this.NumberOfYears = Math.floor(intvalue);
    if (this.NumberOfYears < 18) {
      alert("Employee Age must be greater then 18 years!");
    }
    let dateOfjoiningmonth = dateOfjoining.getMonth();
    let currentmonth = this.currentDate.getMonth();
    let dateOfjoiningyear = dateOfjoining.getFullYear();
    let currentyear = this.currentDate.getFullYear();
    this.NumberOfMonth = (currentyear - dateOfjoiningyear) * 12 + (currentmonth - dateOfjoiningmonth);
    //const diffDays = Math.round(Math.abs((dateOfjoining - this.currentDate) / oneDay));
    //var Difference_In_Time = dateOfjoining.getTime() - currentDate.getTime();

    // To calculate the no. of days between two dates
    // var Difference_In_Days = Difference_In_Time / (1000 * 3600 * 24);
  }

  validSubmitNominee() {
    this.submit = true;
  }

  addFamilyDetails() {
    //console.log(this.validationform.value);
  }

  forCompany() {
    this.companyService.getAll().subscribe(data => {
      this.companies = data;
    });
  }
  forBranch() {
    this.branchesService.getAll().subscribe(data => {
      this.branches = data;
    });
  }
  forCountries() {
    this.contriesService.getAll().subscribe(data => {
      this.contries = data;
    });
  }
  forDepartments() {
    this.departmentsService.getAll().subscribe(data => {
      this.departments = data;
    });
  }
  forWorkingStatus() {
    this.workingStatusService.getAll().subscribe(data => {
      this.workingStatus = data;
    });
  }
  forCategories() {
    this.categoryEmpsService.getAll().subscribe(data => {
      this.categories = data;
    });
  }
  fortypiesEmp() {
    this.typeEmpsService.getAll().subscribe(data => {
      this.typiesEmp = data;
    });
  }
  forHigherAuthorityNames() {
    this.higherAuthorityNameService.getAll().subscribe(data => {
      this.departments = data;
    });
  }

  forHigherAuthoritiesBranches() {
    this.higherAuthoritiesBranchesService.getAll().subscribe(data => {
      this.higherAuthoritiesBranches = data;
    });
  }

  onOptionsSelected(event, target) {
    let zonest = this.zones;
    if (target == 'per') {
      this.countryZones = zonest.filter(x => x.country_Id == event);
    }
    else {
      this.corresspondCountryZone = zonest.filter(x => x.country_Id == event);
    }
  }

  fetchHigherAuthorities(id) {
    let higherAuthorities = this.higherAuthorities;
    this.filteredHigherAuthorities = higherAuthorities.filter(x => x.higherAuthorityBranchId == id);
  }
  fetchHigherAuthorityNames(id) {
    let higherAuthorityNames = this.higherAuthorityNames;
    this.filteredHigherAuthorityNames = higherAuthorityNames.filter(x => x.higherAuthorityId == id);
  }
  getControl(name) {
    return this.hrmsForm.get(name);
  }
  OptionsSelected(id, target) {
    let states = this.states;
    if (target !== 'per') {
      this.CorrFilteredStates = states.filter(x => x.zone_Id == id);
    }
    else {
      this.PerFilteredStates = states.filter(x => x.zone_Id == id);
    }
  }

  OptionsPersonalSelected(id) {
    let states = this.states;
    this.PerFilteredStates = states.filter(x => x.zone_Id == id);
  }


  onThirdPartySelected(id) {
    let thirdParty = this.thirdParty;

    this.filetedThirdParty = thirdParty.filter(x => x.thirdPartyType_Id == id);
  }

  fileProgress(fileInput: any) {
    this.documentfile = <File>fileInput.target.files[0];
    var _mb = this.bytesToSize(this.documentfile.size, 2);
    if (_mb > 10) {
      alert(`
      - The maximum supported file sizes are 10 MB
        `);
      this.documentfile = null;
      return;
    }
    this.preview();
  }

  fileProgressOtherInfo(fileInput: any, type: string) {
    let documentfile = <File>fileInput.target.files[0];
    var _mb = this.bytesToSize(this.documentfile.size, 2);
    if (_mb > 10) {
      alert(`
      - The maximum supported file sizes are 10 MB
        `);
      documentfile = null;
      return;
    }
    this.previewOtherInfo(documentfile, type);
  }

  professionalFile(fileInput: any) {
    this.pidocumentfile = <File>fileInput.target.files[0];
    var _mb = this.bytesToSize(this.pidocumentfile.size, 2);
    if (_mb > 10) {
      alert(`
      - The maximum supported file sizes are 10 MB
        `);
      this.pidocumentfile = null;
      return;
    }
    this.previewProfessional();
  }

  previewOtherInfo(documentfile, type) {
    // Show preview
    var mimeType = documentfile.type;
    var reader = new FileReader();
    reader.readAsDataURL(this.documentfile);
    reader.onload = (_event) => {
      if(type == 'pictureFile') {
        this.pictureUrl = reader.result;
      } else if(type == 'signatureFile') {
        this.signatureUrl = reader.result;
      }
      
    }
  }

  preview() {
    // Show preview
    var mimeType = this.documentfile.type;
    var reader = new FileReader();
    reader.readAsDataURL(this.documentfile);
    reader.onload = (_event) => {
      this.documentPreviewUrl = reader.result;
      // need to test
      let attachemnt: Attachment3 = new Attachment3();
      // attachemnt.id = 0;
      // attachemnt.status_Id = 0;
      // attachemnt.remarks ="";
      // attachemnt.action_Remarks = "";
      // attachemnt.identity_Proof_Id = 0;
      // attachemnt.employeeId = 0;
      // attachemnt.identityType = "";
      // attachemnt.documentType = mimeType;
      attachemnt.documentUrl = this.documentPreviewUrl;
      this.attachmentsSysIdentityProof = [attachemnt]; 
    }
  }

  previewProfessional() {
    // Show preview
    var mimeType = this.pidocumentfile.type;
    var reader = new FileReader();
    reader.readAsDataURL(this.pidocumentfile);
    reader.onload = (_event) => {
      this._documentPreviewUrl = reader.result;
      // need to test
      // let attachemnt: Attachment2 = new Attachment2();
      // // attachemnt.id = 0;
      // // attachemnt.status_Id = 0;
      // // attachemnt.remarks ="";
      // // attachemnt.action_Remarks = "";
      // // attachemnt.identity_Proof_Id = 0;
      // // attachemnt.employeeId = 0;
      // // attachemnt.identityType = "";
      // // attachemnt.documentType = mimeType;
      // attachemnt.documentUrl = this._documentPreviewUrl;
      // this.attachmentsProfessionalInfo = [attachemnt]; 
    }
  }

  onSubmit(row) {
    const educationDocData = (this.hrmsForm.controls['sys_EducationalQualificationDto'].get('Attachments') as FormArray).at(row);
    educationDocData.patchValue({
      'courseName': this.courseName,
      'documentType': this.documentType,
      'documentfile': this.documentPreviewUrl,
      'eduDocumentPreviewUrl': this.documentPreviewUrl
    });
    const educationDocumentsArray = this.hrmsForm.controls['sys_EducationalQualificationDto'].get('Attachments')['controls'] as FormArray;;
    educationDocumentsArray.at(row).patchValue({ 'eduDocumentPreviewUrl': this.documentPreviewUrl });
  }

  onProfessionalSubmit(row) {
    const professionalDocData = (<FormArray>this.hrmsForm.controls['professionalDocumentAttachment']).at(row);
    professionalDocData.patchValue({
      'employeeName': this.EmployeerName,
      'documentUrl': this._documentPreviewUrl
    });
    const professionalDocumentsArray = <FormArray>this.hrmsForm.controls['professionalDocumentAttachment'];
    professionalDocumentsArray.at(row).patchValue({ 'documentUrl': this._documentPreviewUrl });
  }

  getImgSrc(row) {
    const eduDocData = (this.hrmsForm.controls['sys_EducationalQualificationDto'].get('Attachments') as FormArray).at(row).value;
    return eduDocData.eduDocumentPreviewUrl;
  }

  getImgProfessionalSrc(row) {
    const professionalDocData = (<FormArray>this.hrmsForm.controls['professionalDocumentAttachment']).at(row).value;
    return professionalDocData.documentUrl;
  }

  getIdentityImgSrc(row) {


    const identityData = (this.hrmsForm.controls['sys_OtherInformationDto'].get('sys_Identity_Proofs') as FormArray).at(row).value;
    return identityData.identityPreviewUrl;
  }

  finallySave() {
  }
  pStatus(value) {
    if (value == "f") {
      this.isPersonalStatus = false
    } else {
      this.isPersonalStatus = true;
    }
  }

  onSubmitHrms() {
    // this.hrmsForm.value.sys_PermanentContactInformationDto = this.permanentContactInformationForm.value;
    // this.hrmsForm.value.sys_CorresspondanceContactInformationDto = this.corresspondanceContactInformationForm.value;
    // this.hrmsForm.value.sys_OtherInformationDto = this.otherInformationForm.value;
    // if (this.hrmsForm.valid) {
    //   this.submitHrmsForm();
    // } else {
    //   this.validateAllFormFields(this.hrmsForm);
    //   this.validateAllFormFields(this.permanentContactInformationForm);
    //   this.validateAllFormFields(this.corresspondanceContactInformationForm);
    //   this.validateAllFormFields(this.otherInformationForm);
    // }
    // this.submitHrmsForm();
    this.submitHrmsForm();
  }
  resetHrmsForm() {
    if (this.hrmsForm != undefined) {
      this.hrmsForm.reset();
    }
    if (this.familyForm != undefined) {
      this.familyForm.reset();
      const control = <FormArray>this.hrmsForm.controls['sys_FamilyDetailsDto'];
      (this.hrmsForm.controls['sys_FamilyDetailsDto'] as FormArray).controls = [];
      (this.hrmsForm.controls['sys_FamilyDetailsDto'] as FormArray).clear();

      // for (let i = control.length - 1; i >= 0; i--) {
      //   control.removeAt(i)
      // }
    }
    if (this.nomineeForm != undefined) {
      this.nomineeForm.reset();
      const control = <FormArray>this.hrmsForm.controls['tBL_HR_EMPLOYEE_NOMINEE_DETAILSDto'];
      for (let i = control.length - 1; i >= 0; i--) {
        control.removeAt(i)
      }
    }
    if (this.educationForm != undefined) {
      this.educationForm.reset();
      const control = <FormArray>this.hrmsForm.controls['sys_EducationalQualificationDto'];
      for (let i = control.length - 1; i >= 0; i--) {
        control.removeAt(i)
      }
      const control1 = this.hrmsForm.controls['sys_EducationalQualificationDto'].get('Attachments')['controls'] as FormArray;
      for (let i = control1.length - 1; i >= 0; i--) {
        control1.removeAt(i)
      }
    }
    if (this.hrmsForm.get('sys_PermanentContactInformationDto') != undefined) {
      this.hrmsForm.get('sys_PermanentContactInformationDto').reset();
    }
    if (this.hrmsForm.get('sys_CorresspondanceContactInformationDto') != undefined) {
      this.hrmsForm.get('sys_CorresspondanceContactInformationDto').reset();
      const control = <FormArray>this.hrmsForm.controls['sys_CorresspondanceContactInformationDto'];
      for (let i = control.length - 1; i >= 0; i--) {
        control.removeAt(i)
      }
    }
    if (this.hrmsForm.get('sys_OtherInformationDto') != undefined) {
      this.hrmsForm.get('sys_OtherInformationDto').reset();
      const control = <FormArray>this.hrmsForm.controls['sys_CorresspondanceContactInformationDto'];
      for (let i = control.length - 1; i >= 0; i--) {
        control.removeAt(i)
      }
    }
    if (this.educationDocumentForm != undefined) {
      this.educationDocumentForm.reset();
    }
    if (this.identityProofForm != undefined) {
      this.identityProofForm.reset();

    }
    if (this.ProfessionalInformationForm != undefined) {
      this.ProfessionalInformationForm.reset();
      const control = <FormArray>this.hrmsForm.controls['sys_ProfessionalInformations'];
      for (let i = control.length - 1; i >= 0; i--) {
        control.removeAt(i)
      }
    }
    if (this.ProfessionalDocumentInformationForm != undefined) {
      this.ProfessionalDocumentInformationForm.reset();
      const control = <FormArray>this.hrmsForm.controls['professionalDocumentAttachment'];
      for (let i = control.length - 1; i >= 0; i--) {
        control.removeAt(i)
      }
    }
  }

  private formatDate(date) {
    const d = new Date(date);
    let month = '' + (d.getMonth() + 1);
    let day = '' + d.getDate();
    const year = d.getFullYear();
    if (month.length < 2) month = '0' + month;
    if (day.length < 2) day = '0' + day;
    return [year, month, day].join('-');
  }


  getEmployeeDetails(employeeId: number) {
    // let employeeId = 6;
    this.employeeMasterService.get(employeeId).subscribe((result: any) => {

      // sys_PermanentContactInformationDto
      var sys_PermanentContactInformationDto = this.hrmsForm.controls['sys_PermanentContactInformationDto'];
      if (result.sys_PermanentContactInformationDto)
        sys_PermanentContactInformationDto.patchValue({
          id: result.sys_PermanentContactInformationDto.id,
          address: result.sys_PermanentContactInformationDto.address,
          address1: result.sys_PermanentContactInformationDto.address1,
          country: result.sys_PermanentContactInformationDto.country,
          zone: result.sys_PermanentContactInformationDto.zone,
          state: result.sys_PermanentContactInformationDto.state,
          city: result.sys_PermanentContactInformationDto.city,
          pin: result.sys_PermanentContactInformationDto.pin,
          employee_Id: result.sys_PermanentContactInformationDto.employee_Id,
        });


      // sys_CorresspondanceContactInformationDto
      var sys_CorresspondanceContactInformationDto = this.hrmsForm.controls['sys_CorresspondanceContactInformationDto'];
      if (result.sys_CorresspondanceContactInformationDto)
        sys_CorresspondanceContactInformationDto.patchValue({
          id: result.sys_CorresspondanceContactInformationDto.id,
          address: result.sys_CorresspondanceContactInformationDto.address,
          address1: result.sys_CorresspondanceContactInformationDto.address1,
          country: result.sys_CorresspondanceContactInformationDto.country,
          zone: result.sys_CorresspondanceContactInformationDto.zone,
          state: result.sys_CorresspondanceContactInformationDto.state,
          city: result.sys_CorresspondanceContactInformationDto.city,
          pin: result.sys_CorresspondanceContactInformationDto.pin,
          employee_Id: result.sys_CorresspondanceContactInformationDto.employee_Id,
          phone: result.sys_CorresspondanceContactInformationDto.phone,
          emailAddress2: result.sys_CorresspondanceContactInformationDto.emailAddress2,
          mobileNo2: result.sys_CorresspondanceContactInformationDto.mobileNo2,
        });

      // sys_OtherInformationDto
      var sys_OtherInformationDto = this.hrmsForm.controls['sys_OtherInformationDto'];
      if (result.sys_OtherInformationDto)
        sys_OtherInformationDto.patchValue({
          id: result.sys_OtherInformationDto.id,
          bank_Name: result.sys_OtherInformationDto.bank_Name,
          branch_Name: result.sys_OtherInformationDto.branch_Name,
          account_No: result.sys_OtherInformationDto.account_No,
          ifsC_Code: result.sys_OtherInformationDto.ifsC_Code,
          status: result.sys_OtherInformationDto.status,
          other_Details: result.sys_OtherInformationDto.other_Details,
          card_No: result.sys_OtherInformationDto.card_No,
          carProxy_Nod_No: result.sys_OtherInformationDto.carProxy_Nod_No,
          user_Type: result.sys_OtherInformationDto.user_Type,
          signatureFile: result.sys_OtherInformationDto.signatureFile,
          pictureFile: result.sys_OtherInformationDto.pictureFile,
          employee_Id: result.sys_OtherInformationDto.employee_Id
        });




      this.hrmsForm.patchValue({
        id: result.id,
        companyId: result.companyId,
        employeeCategoryId: result.employeeCategoryId,
        employeeCode: result.employeeCode,
        biometricCode: result.biometricCode,
        firstName: result.firstName,
        middleName: result.middleName,
        lastName: result.lastName,
        project_BranchId: result.project_BranchId,
        departmentId: result.departmentId,
        designationId: result.designationId,
        higher_Authority_Branch_ProjectId: result.higher_Authority_Branch_ProjectId,
        higher_AuthorityId: result.higher_AuthorityId,
        higher_Authority_NameId: result.higher_Authority_NameId,
        date_Of_Joining: this.formatDate(result.date_Of_Joining),
        email: result.email,
        employee_TypeId: result.employee_TypeId,
        mobile_No: result.mobile_No,
        third_Party_Type: result.third_Party_Type,
        third_Party_Id: result.third_Party_Id,
        working_StatusId: result.working_StatusId,
        probation_Period: result.probation_Period,
        referenceEmployeeName: result.referenceEmployeeName,
        reference_Phone_No: result.reference_Phone_No,
        date_Of_Birth: this.formatDate(result.date_Of_Birth),
        gender: result.gender,
        nationality: result.nationality,
        religion: result.religion,
        castId: result.castId,
        physicalDisability: result.physicalDisability,
        blood_GroupId: result.blood_GroupId,
        marital_StatusId: result.marital_StatusId,
        identification_Mark: result.identification_Mark,
        sys_PermanentContactInformationDto: sys_PermanentContactInformationDto
        // sys_FamilyDetailsDto: sys_FamilyDetailsDtoArray
        // XXXXXXXXXXXX: result.YYYYYYYYYYY,
      });

      if (result) {
        //sys_FamilyDetailsDto
        result.sys_FamilyDetailsDto.forEach(element => {
          this.familyForm = this.formBuilder.group({
            familyDetail_Id: [element.id],
            familyDetail_Name: [element.familyDetail_Name],
            familyDetail_DOB: [element.familyDetail_DOB],
            familyDetail_RelationshipId: [element.familyDetail_RelationshipId],
            identity_Number: [element.identity_Number],
            isAadharStatus: [element.isAadharStatus],
            familyDetail_Mobile: [element.familyDetail_Mobile],
            nominee_Address: [element.nominee_Address],
            employee_Id: [element.employee_Id]
          });
          // sys_FamilyDetailsDtoArray.push(this.familyForm);
          (<FormArray>this.hrmsForm.get('sys_FamilyDetailsDto')).push(this.familyForm);
        });



        //tBL_HR_EMPLOYEE_NOMINEE_DETAILSDto
        result.tBL_HR_EMPLOYEE_NOMINEE_DETAILSDto.forEach(element => {
          this.nomineeForm = this.formBuilder.group({
            nominee_Id: [element.id],
            nominee_Name: [element.nominee_Name],
            nominee_DOB: [element.nominee_DOB],
            nominee_RelationshipId: [element.nominee_RelationshipId],
            identity_Number: [element.identity_Number],
            isAadharStatus: [element.isAadharStatus],
            nominee_Mobile: [element.nominee_Mobile],
            nominee_Address: [element.nominee_Address],
            employee_Id: [element.employee_Id]
          });
          (<FormArray>this.hrmsForm.get('tBL_HR_EMPLOYEE_NOMINEE_DETAILSDto')).push(this.nomineeForm);
        });

        //tBL_HR_EMPLOYEE_NOMINEE_DETAILSDto
        result.tBL_HR_EMPLOYEE_NOMINEE_DETAILSDto.forEach(element => {
          var HR_EMPLOYEE_NOMINEE_DETAILSDto = this.formBuilder.group({
            nominee_Name: [element.nominee_Name],
            nominee_DOB: [element.nominee_DOB],
            nominee_RelationshipId: [element.nominee_RelationshipId],
            identity_Number: [element.identity_Number],
            isAadharStatus: [element.isAadharStatus],
            nominee_Mobile: [element.nominee_Mobile],
            nominee_Address: [element.nominee_Address],
            employee_Id: [element.employee_Id]
          });
          (<FormArray>this.hrmsForm.get('tBL_HR_EMPLOYEE_NOMINEE_DETAILSDto')).push(HR_EMPLOYEE_NOMINEE_DETAILSDto);
        });

        // sys_EducationalQualificationDto
        result.sys_EducationalQualificationDto.forEach(element => {
          var EducationalQualificationDto = this.formBuilder.group({
            highestQualification: [element.id],
            qualification: [element.qualification],
            emp_Year_OF_Passing: [element.emp_Year_OF_Passing],
            specialization: [element.specialization],
            school: [element.school],
            board: [element.board],
            marks: [element.marks],
            attachments: [element.attachments]
          });
          (<FormArray>this.hrmsForm.get('sys_EducationalQualificationDto')).push(EducationalQualificationDto);
        });

        // sys_ProfessionalInformations
        result.sys_ProfessionalInformations.forEach(element => {
          var ProfessionalInformations = this.formBuilder.group({
            id: [result.sys_ProfessionalInformations.id],
            employeerName: [result.sys_ProfessionalInformations.employeerName],
            employeerAddress: [result.sys_ProfessionalInformations.employeerAddress],
            designation: [result.sys_ProfessionalInformations.designation],
            contactPerson: [result.sys_ProfessionalInformations.contactPerson],
            contactNo: [result.sys_ProfessionalInformations.contactNo],
            emailId: [result.sys_ProfessionalInformations.emailId],
            dateOfJoining: [result.sys_ProfessionalInformations.dateOfJoining],
            lastDrawnSalary: [result.sys_ProfessionalInformations.lastDrawnSalary],
            reasonForLeaving: [result.sys_ProfessionalInformations.reasonForLeaving],
            dateOfLeaving: [result.sys_ProfessionalInformations.dateOfLeaving],
            attachmentType_Path: [result.sys_ProfessionalInformations.attachmentType_Path],
            employee_Id: [result.sys_ProfessionalInformations.employee_Id]
          });
          (<FormArray>this.hrmsForm.get('sys_ProfessionalInformations')).push(ProfessionalInformations);
        });
      }
    })
  }

  submitHrmsForm() {

    let hrmsFormData = this.hrmsForm.getRawValue();
    console.log(hrmsFormData);

    // if (this.hrmsForm.invalid)
    // {
    //   debugger;
    //   return;
    // }   
    
    let inputModel: Employee = new Employee();
    // inputModel.id = Number(this.hrmsForm.controls.id.value);
    inputModel.id = Number(0);
    inputModel.status_Id = Number(this.hrmsForm.controls.Status_Id.value);
    // inputModel.remarks = this.hrmsForm.controls.remarks.value;
    // inputModel.action_Remarks = this.hrmsForm.controls.action_Remarks.value;
    inputModel.companyId = Number(this.hrmsForm.controls.companyId.value);
    inputModel.employeeCategoryId = Number(this.hrmsForm.controls.employeeCategoryId.value);
    inputModel.employeeCode = this.hrmsForm.controls.employeeCode.value;
    inputModel.biometricCode = this.hrmsForm.controls.biometricCode.value;
    inputModel.firstName = this.hrmsForm.controls.firstName.value;
    inputModel.middleName = this.hrmsForm.controls.middleName.value;
    inputModel.lastName = this.hrmsForm.controls.lastName.value;
    inputModel.email = this.hrmsForm.controls.email.value;
    inputModel.project_BranchId = Number(this.hrmsForm.controls.project_BranchId.value);
    inputModel.departmentId = Number(this.hrmsForm.controls.departmentId.value);
    inputModel.designationId = Number(this.hrmsForm.controls.designationId.value);
    inputModel.higher_Authority_Branch_ProjectId = Number(this.hrmsForm.controls.higher_Authority_Branch_ProjectId.value);
    inputModel.higher_AuthorityId = Number(this.hrmsForm.controls.higher_AuthorityId.value);
    inputModel.higher_Authority_NameId = Number(this.hrmsForm.controls.higher_Authority_NameId.value);
    inputModel.date_Of_Joining = this.hrmsForm.controls.date_Of_Joining.value;
    inputModel.employee_TypeId = Number(this.hrmsForm.controls.employee_TypeId.value);
    inputModel.mobile_No = this.hrmsForm.controls.mobile_No.value;
    inputModel.third_Party_Type = Number(this.hrmsForm.controls.third_Party_Type.value);
    inputModel.third_Party_Id = Number(this.hrmsForm.controls.third_Party_Id.value);
    inputModel.working_StatusId = Number(this.hrmsForm.controls.working_StatusId.value);
    inputModel.probation_Period = Number(this.hrmsForm.controls.probation_Period.value);
    inputModel.referenceEmployeeName = this.hrmsForm.controls.referenceEmployeeName.value;
    inputModel.reference_Phone_No = this.hrmsForm.controls.reference_Phone_No.value;
    inputModel.date_Of_Birth = this.hrmsForm.controls.date_Of_Birth.value;
    inputModel.gender = this.hrmsForm.controls.gender.value;
    inputModel.nationality = this.hrmsForm.controls.nationality.value;
    inputModel.religion = this.hrmsForm.controls.religion.value;
    inputModel.castId = Number(this.hrmsForm.controls.castId.value);
    inputModel.physicalDisability = this.hrmsForm.controls.physicalDisability.value;
    inputModel.blood_GroupId = Number(this.hrmsForm.controls.blood_GroupId.value);
    inputModel.marital_StatusId = Number(this.hrmsForm.controls.marital_StatusId.value);
    inputModel.identification_Mark = this.hrmsForm.controls.identification_Mark.value;
    // inputModel.status = this.hrmsForm.controls.status.value;
    inputModel.professionalInformation = this.hrmsForm.controls.professionalInformation.value;
    // professionalInformationStatus
    inputModel.highestQualification = this.hrmsForm.controls.highestQualification.value;
    // inputModel.isActive = this.hrmsForm.controls.isActive.value;
    // inputModel.isDeleted = this.hrmsForm.controls.isDeleted.value;

    // FamilyDetails
    let sys_FamilyDetailsDto = this.hrmsForm.getRawValue().sys_FamilyDetailsDto;
    inputModel.sys_FamilyDetailsDto = [];
    sys_FamilyDetailsDto.forEach(data => {
      let  sys_FamilyDetail = this.employeedataservice.getFamilyDetailsData(data);
      inputModel.sys_FamilyDetailsDto.push(sys_FamilyDetail);

    });

    // SysEducationalQualificationDto
    let sys_EducationalQualificationDto = this.hrmsForm.getRawValue().sys_EducationalQualificationDto;
    inputModel.sys_EducationalQualificationDto = [];
    sys_EducationalQualificationDto.forEach(data => {
      let  sys_EducationalQualification = this.employeedataservice.getEducationalQualificationData(data);
      inputModel.sys_EducationalQualificationDto.push(sys_EducationalQualification);

    });
    // tBL_HR_EMPLOYEE_NOMINEE_DETAILSDto
    let tBL_HR_EMPLOYEE_NOMINEE_DETAILSDto = this.hrmsForm.getRawValue().tBL_HR_EMPLOYEE_NOMINEE_DETAILSDto;
    inputModel.tBL_HR_EMPLOYEE_NOMINEE_DETAILSDto = [];
    tBL_HR_EMPLOYEE_NOMINEE_DETAILSDto.forEach(data => {
      let  tBL_HR_EMPLOYEE_NOMINEE_DETAIL = this.employeedataservice.getHR_EMPLOYEE_NOMINEE_DETAILSData(data);
      inputModel.tBL_HR_EMPLOYEE_NOMINEE_DETAILSDto.push(tBL_HR_EMPLOYEE_NOMINEE_DETAIL);
    });
    // sys_PermanentContactInformationDto
    let sys_PermanentContactInformationDto =this.hrmsForm.getRawValue().sys_PermanentContactInformationDto;
    let  sys_PermanentContactInformation = this.employeedataservice.getPermanentContactInformationData(sys_PermanentContactInformationDto);
    inputModel.sys_PermanentContactInformationDto = sys_PermanentContactInformation;

    // professionalDocumentAttachment
    let professionalDocumentAttachments =this.hrmsForm.getRawValue().professionalDocumentAttachment;
    let  professionalDocumentAttachment = this.employeedataservice.getAttachments2Data(professionalDocumentAttachments);

    // sys_ProfessionalInformations
    let sys_ProfessionalInformations =this.hrmsForm.getRawValue().sys_ProfessionalInformations;
    inputModel.sys_ProfessionalInformations = [];
    sys_ProfessionalInformations.forEach(data => {
      let  sys_ProfessionalInformations = this.employeedataservice.getProfessionalInformationsData(data);
      sys_ProfessionalInformations.attachments = professionalDocumentAttachment.filter( a => a.employeeName == sys_ProfessionalInformations.employeerName);
      inputModel.sys_ProfessionalInformations.push(sys_ProfessionalInformations);
    });

    // sys_CorresspondanceContactInformationDto
    let sys_CorresspondanceContactInformationDto =this.hrmsForm.getRawValue().sys_CorresspondanceContactInformationDto;
    let  sys_CorresspondanceContactInformation = this.employeedataservice.getCorresspondanceContactInformationDtoData(sys_CorresspondanceContactInformationDto);
    inputModel.sys_CorresspondanceContactInformationDto = sys_CorresspondanceContactInformation;

    // sys_OtherInformationDto
    // inputModel.sys_OtherInformationDto =this.hrmsForm.getRawValue().sys_OtherInformationDto;
    // sys_Identity_Proofs
    // let sys_Identity_Proofs = this.hrmsForm.getRawValue().sys_Identity_Proofs;
    // let  sys_Identity_Proof = this.employeedataservice.getSysIdentityProof(sys_Identity_Proofs);
    //  inputModel.sys_OtherInformationDto = sys_OtherInformation;

    let sys_OtherInformationDto =this.hrmsForm.getRawValue().sys_OtherInformationDto;
    let  sys_OtherInformation = this.employeedataservice.getOtherInformationDtoData(sys_OtherInformationDto);
    inputModel.sys_OtherInformationDto = sys_OtherInformation;
    inputModel.sys_OtherInformationDto.pictureFile = this.pictureUrl;
    inputModel.sys_OtherInformationDto.signatureFile = this.signatureUrl;

    console.log(inputModel);

    this.employeeMasterService.post(inputModel).subscribe((resp: any) => {
      this.resetHrmsForm();
    })

    
     
  }

  // submitHrmsForm() {

  //   let formData = this.hrmsForm.getRawValue();
  //   console.log(formData);

  //   var inputModel = {
  //     "id": Number(this.hrmsForm.controls.id.value),
  //     "status_Id": Number(this.hrmsForm.controls.Status_Id.value),
  //     // "remarks": this.hrmsForm.controls.remarks.value,
  //     // "action_Remarks": this.hrmsForm.controls.action_Remarks.value,
  //     "companyId": Number(this.hrmsForm.controls.companyId.value),
  //     "employeeCategoryId": Number(this.hrmsForm.controls.employeeCategoryId.value),
  //     "employeeCode": this.hrmsForm.controls.employeeCode.value,
  //     "biometricCode": this.hrmsForm.controls.biometricCode.value,
  //     "firstName": this.hrmsForm.controls.firstName.value,
  //     "middleName": this.hrmsForm.controls.middleName.value,
  //     "lastName": this.hrmsForm.controls.lastName.value,
  //     "email": this.hrmsForm.controls.email.value,
  //     "project_BranchId": Number(this.hrmsForm.controls.project_BranchId.value),
  //     "departmentId": Number(this.hrmsForm.controls.departmentId.value),
  //     "designationId": Number(this.hrmsForm.controls.designationId.value),
  //     "higher_Authority_Branch_ProjectId": Number(this.hrmsForm.controls.higher_Authority_Branch_ProjectId.value),
  //     "higher_AuthorityId": Number(this.hrmsForm.controls.higher_AuthorityId.value),
  //     "higher_Authority_NameId": Number(this.hrmsForm.controls.higher_Authority_NameId.value),
  //     "date_Of_Joining": this.hrmsForm.controls.date_Of_Joining.value,
  //     "employee_TypeId": Number(this.hrmsForm.controls.employee_TypeId.value),
  //     "mobile_No": this.hrmsForm.controls.mobile_No.value,
  //     "third_Party_Type": Number(this.hrmsForm.controls.third_Party_Type.value),
  //     "third_Party_Id": Number(this.hrmsForm.controls.third_Party_Id.value),
  //     "working_StatusId": Number(this.hrmsForm.controls.working_StatusId.value),
  //     "probation_Period": Number(this.hrmsForm.controls.probation_Period.value),
  //     "referenceEmployeeName": this.hrmsForm.controls.referenceEmployeeName.value,
  //     "reference_Phone_No": this.hrmsForm.controls.reference_Phone_No.value,
  //     "date_Of_Birth": this.hrmsForm.controls.date_Of_Birth.value,
  //     "gender": this.hrmsForm.controls.gender.value,
  //     "nationality": this.hrmsForm.controls.nationality.value,
  //     "religion": this.hrmsForm.controls.religion.value,
  //     "castId": Number(this.hrmsForm.controls.castId.value),
  //     "physicalDisability": this.hrmsForm.controls.physicalDisability.value,
  //     "blood_GroupId": Number(this.hrmsForm.controls.blood_GroupId.value),
  //     "marital_StatusId": Number(this.hrmsForm.controls.marital_StatusId.value),
  //     "identification_Mark": this.hrmsForm.controls.identification_Mark.value,
  //     // "status": this.hrmsForm.controls.status.value,
  //     "professionalInformation": this.hrmsForm.controls.professionalInformation.value,
  //     "highestQualification": this.hrmsForm.controls.highestQualification.value,
  //     // "isActive": this.hrmsForm.controls.isActive.value,
  //     // "isDeleted": this.hrmsForm.controls.isDeleted.value,
  //     // "sys_FamilyDetailsDto": [
  //     //   {
  //     //     "id":  Number(this.hrmsForm.controls.Id.value),
  //     //     "status_Id":  Number(this.hrmsForm.controls.Status_Id.value),
  //     //     "remarks": this.hrmsForm.controls.Remarks.value,
  //     //     "action_Remarks": this.hrmsForm.controls.Action_Remarks.value,
  //     //     "employee_Id":  Number(this.hrmsForm.controls.Employee_Id.value),
  //     //     "isDeleted": this.hrmsForm.controls.IsDeleted.value,
  //     //     "familyDetail_RelationshipId":  Number(this.hrmsForm.controls.FamilyDetail_RelationshipId.value),
  //     //     "familyDetail_Name": this.hrmsForm.controls.FamilyDetail_Name.value,
  //     //     "familyDetail_Mobile": this.hrmsForm.controls.FamilyDetail_Mobile.value,
  //     //     "familyDetail_EmailId": this.hrmsForm.controls.FamilyDetail_EmailId.value,
  //     //     "familyDetail_DOB": this.hrmsForm.controls.FamilyDetail_DOB.value,
  //     //     "identity_Number": this.hrmsForm.controls.Identity_Number.value,
  //     //     "nominee_Address": this.hrmsForm.controls.Nominee_Address.value,
  //     //     "isAadharStatus": this.hrmsForm.controls.IsAadharStatus.value,
  //     //   }
  //     // ],
  //     // "sys_EducationalQualificationDto": [
  //     //   {
  //     //     "id":  Number(this.hrmsForm.controls.Id.value),
  //     //     "employee_Id":  Number(this.hrmsForm.controls.EmployeeId.value),
  //     //     "emp_Year_OF_Passing":  Number(this.hrmsForm.controls.Emp_Year_OF_Passing.value),
  //     //     "qualification": this.hrmsForm.controls.Qualification.value,
  //     //     "specialization": this.hrmsForm.controls.Specialization.value,
  //     //     "school": this.hrmsForm.controls.School.value,
  //     //     "board": this.hrmsForm.controls.Board.value,
  //     //     "marks": this.hrmsForm.controls.Marks.value,
  //     //     "remarks": this.hrmsForm.controls.Remarks.value,
  //     //     "isDeleted": this.hrmsForm.controls.IsDeleted.value,
  //     //     "attachments": [
  //     //       {
  //     //         "id":  Number(this.hrmsForm.controls.EmployeeId.value),
  //     //         "status_Id":  Number(this.hrmsForm.controls.EmployeeId.value),
  //     //         "remarks": this.hrmsForm.controls.Remarks.value,
  //     //         "action_Remarks": this.hrmsForm.controls.Action_Remarks.value,
  //     //         "educational_Qualification_Id":  Number(this.hrmsForm.controls.EmployeeId.value),
  //     //         "employeeId":  Number(this.hrmsForm.controls.EmployeeId.value),
  //     //         "courseName": this.hrmsForm.controls.CourseName.value,
  //     //         "documentType": this.hrmsForm.controls.DocumentType.value,
  //     //         "documentUrl": this.hrmsForm.controls.DocumentUrl.value,
  //     //       }
  //     //     ]
  //     //   }
  //     // ],
  //     // "tBL_HR_EMPLOYEE_NOMINEE_DETAILSDto": [
  //     //   {
  //     //     "id":  Number(this.hrmsForm.controls.Id.value),
  //     //     "employee_Id":  Number(this.hrmsForm.controls.Employee_Id.value),
  //     //     "nominee_RelationshipId":  Number(this.hrmsForm.controls.Nominee_RelationshipId.value),
  //     //     "nominee_Name": this.hrmsForm.controls.Nominee_Name.value,
  //     //     "nominee_Mobile": this.hrmsForm.controls.Nominee_Mobile.value,
  //     //     "nominee_EmailId": this.hrmsForm.controls.Nominee_EmailId.value,
  //     //     "nominee_DOB": this.hrmsForm.controls.Nominee_DOB.value,
  //     //     "identity_Number": this.hrmsForm.controls.Identity_Number.value,
  //     //     "nominee_Address": this.hrmsForm.controls.Nominee_Address.value,
  //     //     "isAadharStatus": this.hrmsForm.controls.IsAadharStatus.value,
  //     //     "isDeleted": this.hrmsForm.controls.IsDeleted.value
  //     //   }
  //     // ],
  //     // "sys_PermanentContactInformationDto": {
  //     //   "id":  Number(this.hrmsForm.controls.Id.value),
  //     //   "status_Id":  Number(this.hrmsForm.controls.Status_Id.value),
  //     //   "remarks": this.hrmsForm.controls.Remarks.value,
  //     //   "action_Remarks": this.hrmsForm.controls.Action_Remarks.value,
  //     //   "address": this.hrmsForm.controls.Address.value,
  //     //   "address1": this.hrmsForm.controls.Address1.value,
  //     //   "country":  Number(this.hrmsForm.controls.Country.value),
  //     //   "zone":  Number(this.hrmsForm.controls.Zone.value),
  //     //   "state":  Number(this.hrmsForm.controls.State.value),
  //     //   "city": this.hrmsForm.controls.City.value,
  //     //   "pin": this.hrmsForm.controls.Pin.value,
  //     //   "employee_Id":  Number(this.hrmsForm.controls.Employee_Id.value),
  //     // },
  //     // "sys_ProfessionalInformations": [
  //     //   {
  //     //     "id":  Number(this.hrmsForm.controls.Id.value),
  //     //     "status_Id":  Number(this.hrmsForm.controls.Status_Id.value),
  //     //     "remarks": this.hrmsForm.controls.Remarks.value,
  //     //     "action_Remarks": this.hrmsForm.controls.Action_Remarks.value,
  //     //     "employeerName": this.hrmsForm.controls.EmployeerName.value,
  //     //     "isDeleted": this.hrmsForm.controls.IsDeleted.value,
  //     //     "employeerAddress": this.hrmsForm.controls.EmployeerAddress.value,
  //     //     "designation": this.hrmsForm.controls.Designation.value,
  //     //     "contactPerson": this.hrmsForm.controls.ContactPerson.value,
  //     //     "contactNo": this.hrmsForm.controls.ContactNo.value,
  //     //     "emailId": this.hrmsForm.controls.EmailId.value,
  //     //     "dateOfJoining": this.hrmsForm.controls.DateOfJoining.value,
  //     //     "lastDrawnSalary": this.hrmsForm.controls.LastDrawnSalary.value,
  //     //     "reasonForLeaving": this.hrmsForm.controls.ReasonForLeaving.value,
  //     //     "dateOfLeaving": this.hrmsForm.controls.DateOfLeaving.value,
  //     //     "employee_Id":  Number(this.hrmsForm.controls.Employee_Id.value),
  //     //     "attachments": [
  //     //       {
  //     //         "id":  Number(this.hrmsForm.controls.Id.value),
  //     //         "status_Id":  Number(this.hrmsForm.controls.Status_Id.value),
  //     //         "remarks": this.hrmsForm.controls.Remarks.value,
  //     //         "action_Remarks": this.hrmsForm.controls.Action_Remarks.value,
  //     //         "professional_Information_Attachements_Id":  Number(this.hrmsForm.controls.Professional_Information_Attachements_Id.value),
  //     //         "employeeId":  Number(this.hrmsForm.controls.EmployeeId.value),
  //     //         "employeeName": this.hrmsForm.controls.EmployeeName.value,
  //     //         "documentType": this.hrmsForm.controls.DocumentType.value,
  //     //         "documentUrl": this.hrmsForm.controls.DocumentUrl.value,
  //     //       }
  //     //     ]
  //     //   }
  //     // ],
  //     // "sys_CorresspondanceContactInformationDto": {
  //     //   "id":  Number(this.hrmsForm.controls.Id.value),
  //     //   "status_Id":  Number(this.hrmsForm.controls.Status_Id.value),
  //     //   "remarks": this.hrmsForm.controls.Remarks.value,
  //     //   "action_Remarks": this.hrmsForm.controls.Action_Remarks.value,
  //     //   "address": this.hrmsForm.controls.Address.value,
  //     //   "address1": this.hrmsForm.controls.Address1.value,
  //     //   "country":  Number(this.hrmsForm.controls.Country.value),
  //     //   "zone":  Number(this.hrmsForm.controls.Zone.value),
  //     //   "state":  Number(this.hrmsForm.controls.State.value),
  //     //   "city": this.hrmsForm.controls.City.value,
  //     //   "pin": this.hrmsForm.controls.Pin.value,
  //     //   "mobileNo2": this.hrmsForm.controls.MobileNo2.value,
  //     //   "phone": this.hrmsForm.controls.Phone.value,
  //     //   "emailAddress2": this.hrmsForm.controls.EmailAddress2.value,
  //     //   "employee_Id": Number(this.hrmsForm.controls.Employee_Id.value),
  //     // },
  //     // "sys_OtherInformationDto": {
  //     //   "id":  Number(this.hrmsForm.controls.Id.value),
  //     //   "status_Id":  Number(this.hrmsForm.controls.Status_Id.value),
  //     //   "remarks": this.hrmsForm.controls.Remarks.value,
  //     //   "action_Remarks": this.hrmsForm.controls.Action_Remarks.value,
  //     //   "bank_Name": this.hrmsForm.controls.Bank_Name.value,
  //     //   "branch_Name": this.hrmsForm.controls.Branch_Name.value,
  //     //   "account_No": this.hrmsForm.controls.Account_No.value,
  //     //   "ifsC_Code": this.hrmsForm.controls.IfSC_Code.value,
  //     //   "status": this.hrmsForm.controls.Status.value,
  //     //   "other_Details": this.hrmsForm.controls.Other_Details.value,
  //     //   "card_No": this.hrmsForm.controls.Card_No.value,
  //     //   "carProxy_Nod_No": this.hrmsForm.controls.CarProxy_Nod_No.value,
  //     //   "user_Id": this.hrmsForm.controls.User_Id.value,
  //     //   "user_Data": this.hrmsForm.controls.User_Data.value,
  //     //   "user_Type":  Number(this.hrmsForm.controls.User_Type.value),
  //     //   "signature": this.hrmsForm.controls.Signature.value,
  //     //   "picture": "",
  //     //   "signatureFile": "",
  //     //   "pictureFile": "",
  //     //   "employee_Id":  Number(this.hrmsForm.controls.Employee_Id.value),
  //     //   "sys_Identity_Proofs": [
  //     //     {
  //     //       "id":  Number(this.hrmsForm.controls.Id.value),
  //     //       "status_Id":  Number(this.hrmsForm.controls.Status_Id.value),
  //     //       "remarks": this.hrmsForm.controls.Remarks.value,
  //     //       "action_Remarks": this.hrmsForm.controls.Action_Remarks.value,
  //     //       "identity_Type": this.hrmsForm.controls.Identity_Type.value,
  //     //       "identity_No": this.hrmsForm.controls.Identity_No.value,
  //     //       "attachments": [
  //     //         {
  //     //           "id":  Number(this.hrmsForm.controls.Id.value),
  //     //           "status_Id":  Number(this.hrmsForm.controls.Status_Id.value),
  //     //           "remarks": this.hrmsForm.controls.Remarks.value,
  //     //           "action_Remarks": this.hrmsForm.controls.Action_Remarks.value,
  //     //           "identity_Proof_Id":  Number(this.hrmsForm.controls.Identity_Proof_Id.value),
  //     //           "employeeId":  Number(this.hrmsForm.controls.EmployeeId.value),
  //     //           "identityType": this.hrmsForm.controls.IdentityType.value,
  //     //           "employeeName": this.hrmsForm.controls.EmployeeName.value,
  //     //           "documentType": this.hrmsForm.controls.DocumentType.value,
  //     //           "documentUrl": this.hrmsForm.controls.DocumentUrl.value,
  //     //         }
  //     //       ],
  //     //       "valid_Upto": this.hrmsForm.controls.valid_Upto.value,
  //     //       "isDeleted": this.hrmsForm.controls.IsDeleted.value,
  //     //       "otherInformationId":  Number(this.hrmsForm.controls.OtherInformationId.value),
  //     //     }
  //     //   ]
  //     // }
  //   }
  //   this.employeeMasterService.post(formData).subscribe((resp: any) => {
  //   })
  // }

  downloadDoc(base64String, fileName) {
    const source = `${base64String}`;
    const link = document.createElement("a");
    link.href = source;
    link.download = `${fileName}`
    link.click();
  }

  onClickDownloadDoc(row) {
    const eduDocData = (this.hrmsForm.controls['sys_EducationalQualificationDto'].get('Attachments') as FormArray).at(row).value;
    let base64String = eduDocData.eduDocumentPreviewUrl;
    this.downloadDoc(base64String, eduDocData.documentType);
  }

  onClickDownloadProfessionalDoc(row) {
    const proDocData = (<FormArray>this.hrmsForm.controls['professionalDocumentAttachment']).at(row).value;
    let base64String = proDocData.documentUrl;
    this.downloadDoc(base64String, proDocData.documentType);
  }

  fetchDesignation(id) {
    var lstDesignations = this.designations;
    this.designationsDepartmentList = lstDesignations.filter(x => x.department_Id == id);
  }

  onBranchChanges(id) {
    let departments = this.departments;
    this.projectDepartments = departments.filter(x => x.branch_Id == id);
  }

  sameAsAbove(event) {
    if (event.target.checked) {
      this.hrmsForm.get('sys_CorresspondanceContactInformationDto').patchValue({
        'address': this.hrmsForm.get('sys_PermanentContactInformationDto').get('address').value,
        'address1': this.hrmsForm.get('sys_PermanentContactInformationDto').get('address1').value,
        'country': this.hrmsForm.get('sys_PermanentContactInformationDto').get('country').value,
        'zone': this.hrmsForm.get('sys_PermanentContactInformationDto').get('zone').value,
        'state': this.hrmsForm.get('sys_PermanentContactInformationDto').get('state').value,
        'city': this.hrmsForm.get('sys_PermanentContactInformationDto').get('city').value,
        'pin': this.hrmsForm.get('sys_PermanentContactInformationDto').get('pin').value,
      });
    } else {
      this.hrmsForm.get('sys_CorresspondanceContactInformationDto').patchValue({
        'address': '',
        'address1': '',
        'country': '',
        'zone': '',
        'state': '',
        'city': '',
        'pin': '',
      });
    }
  }

  validateAllFormFields(formGroup: FormGroup) {
    Object.keys(formGroup.controls).forEach(field => {
      const control = formGroup.get(field);
      if (control instanceof FormControl) {
        control.markAsTouched({ onlySelf: true });
      } else if (control instanceof FormGroup) {
        this.validateAllFormFields(control);
      }
    });
  }

  oiStatus(value) {
    if (value == 'Others') {
      this.isStatusVisible = true;
    }
    else {
      this.isStatusVisible = false;
    }
  }
  keyPressNumbers(event) {
    var charCode = (event.which) ? event.which : event.keyCode;
    // Only Numbers 0-9
    if ((charCode < 48 || charCode > 57)) {
      event.preventDefault();
      return false;
    } else {
      this.hrmsForm.get('sys_OtherInformationDto').patchValue({
        'ipUserData': ''
      });
    }
  }

  bytesToSize(bytes, decimals) {
    if (bytes === 0) return '0 Bytes';

    const k = 1024;
    const dm = decimals < 0 ? 0 : decimals;
    const sizes = ['Bytes', 'KB', 'MB', 'GB', 'TB', 'PB', 'EB', 'ZB', 'YB'];
    const i = Math.floor(Math.log(bytes) / Math.log(k));
    if (i == 1 || i == 0) {
      return 10;
    }
    return parseFloat((bytes / Math.pow(k, i)).toFixed(dm));
  }

}
