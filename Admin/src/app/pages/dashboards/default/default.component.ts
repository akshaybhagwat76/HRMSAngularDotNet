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
import { DesignationService } from 'src/app/core/services/designation.service';



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
  // Form submition
  submit: boolean;
  hrmsForm: FormGroup;
  familyForm: FormGroup;
  nomineeForm: FormGroup;
  @ViewChild('content') content;

  constructor(private modalService: NgbModal, public formBuilder: FormBuilder, private companyService: CompanyService,
    private branchesService: BranchesService, private contriesService: ContriesService,
    private departmentsService: DepartmentsService,
    private workingStatusService: WorkingStatusService,
    private designationService: DesignationService,
    private categoryEmpsService: CategoryEmpsService,
    private higherAuthoritiesBranchesService: HigherAuthoritiesBranchesService,
    private typeEmpsService: TypeEmpsService,
    private higherAuthorityService: HigherAuthorityService,
    private thirdPartyTypeService: ThirdPartyTypeService,
    private thirdPartyService: ThirdpartyService,
    private higherAuthorityNameService: HigherAuthorityNameService,
    private castService: CastService,
    private bloodGroupService: BloodGroupService,
    private zoneService: ZoneService,
    private stateService: StateService,
    private relationshipService: RelationshipService,
    private userTypeService: UserTypeService,
    private employesService: EmployeesService,
    private meritalstatusService: MeritalstatusService,
    private fb: FormBuilder
  ) { }
  companies: any;
  branches: any;
  contries: any;
  departments: any;
  workingStatus: any;
  categories: any;
  typiesEmp: any;
  higherAuthorities: any;
  higherAuthoritiesBranches: any;

  thirdPartyName: any;
  thirdParty: any;
  thirdPartyType: any;


  higherAuthorityNames: any;
  casts: any;
  bloodGroup: any;
  states: any;
  zones: any;
  countryZones: any[] = [];
  corresspondCountryZone: any[] = [];
  thirdPartyList: any[] = [];
  relationShip: any;
  designation: any;
  userType: any;
  employees: any;
  meritalStatuses: any;

  //Family Details
  fName: string;
  fRelationship: number;
  fDateOfBirth: Date;
  fAadharNo: string;
  fAadharStatus: string;
  fAddress: string;
  fContactNo: string;
  isFamilyEdited = false;
  updatedFamilyDetailsId: number;

  //Nominee Details
  nName: string;
  nRelationship: number;
  nDateOfBirth: Date;
  nAadharNo: string;
  nAadharStatus: string;
  nAddress: string;
  nContactNo: string;
  isNomineeEdited = false;
  updatedNomineeDetailsId: number;

  private fetchData() {
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
    const designation = this.designationService.getAll();
    forkJoin([companies, branches, contries, departments, workingStatus, categories,
      typesEmp, higherAuthority, higherAuthorityName, thirdPartyType, cast,
      state, zones, relationship, userType, employees, higherAuthoritesBranches, thirdParty, cast, bloodGroup, merital
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
      // this.designation = result[21];
    });

    //this.employees = employees;
  }

  // Family Details
  get familyDetailsArr() {
    return (<FormArray>this.hrmsForm.get('familyDetails')).controls;
  }

  // Nominee Details
  get nomineeDetailsArr() {
    return (<FormArray>this.hrmsForm.get('nomineeDetails')).controls;
  }

  ngOnInit() {
    this.fbBuilder();
    // this.forCompany();
    // this.forBranch();
    // this.forCountries();
    // this.forDepartments();
    // this.forWorkingStatus();
    // this.forCategories();
    // this.typiesEmp();
    // this.forHigherAuthorityNames();

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
      probatlonPerlod: [''],
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

  fbBuilder() {
    this.hrmsForm = this.fb.group({
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
      probatlonPerlod: [''],
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
      familyDetails: new FormArray([]),
      nomineeDetails: new FormArray([]),
    });
  }

  // Family details
  addfamilyDetailsArr() {
    this.familyForm = this.formBuilder.group({
      NameNominee: [this.fName],
      dateOfBirthNominee: [this.fDateOfBirth],
      relationshipNominee: [this.fRelationship],
      aadharNoNominee: [this.fAadharNo],
      AadharStatusNominee: [this.fAadharStatus],
      ContactNominee: [this.fContactNo],
      AddressNominee: [this.fAddress],
    });
    (<FormArray>this.hrmsForm.get('familyDetails')).push(this.familyForm);
    this.clearFamilyDetails();
  }

  addNomineeDetailsArr() {
    debugger;
    this.nomineeForm = this.formBuilder.group({
      NameNominee: [this.nName],
      dateOfBirthNominee: [this.nDateOfBirth],
      relationshipNominee: [this.nRelationship],
      aadharNoNominee: [this.nAadharNo],
      AadharStatusNominee: [this.nAadharStatus],
      ContactNominee: [this.nContactNo],
      AddressNominee: [this.nAddress],
    });
    (<FormArray>this.hrmsForm.get('nomineeDetails')).push(this.nomineeForm);
    this.clearNomineeDetails();
  }

  updatefamilyDetailsArr() {
    const familtyDetailsform = (<FormArray>this.hrmsForm.controls['familyDetails']).at(this.updatedFamilyDetailsId);
    familtyDetailsform.patchValue({
      'NameNominee': [this.fName],
      'dateOfBirthNominee': [this.fDateOfBirth],
      'relationshipNominee': [this.fRelationship],
      'aadharNoNominee': [this.fAadharNo],
      'AadharStatusNominee': [this.fAadharStatus],
      'ContactNominee': [this.fContactNo],
      'AddressNominee': [this.fAddress],
    });
    this.isFamilyEdited = false;
    this.updatedFamilyDetailsId = 0;
    this.clearFamilyDetails();
  }

  updateNomineeDetailsArr() {
    const nommineeDetailsform = (<FormArray>this.hrmsForm.controls['nomineeDetails']).at(this.updatedNomineeDetailsId);
    nommineeDetailsform.patchValue({
      'NameNominee': [this.nName],
      'dateOfBirthNominee': [this.nDateOfBirth],
      'relationshipNominee': [this.nRelationship],
      'aadharNoNominee': [this.nAadharNo],
      'AadharStatusNominee': [this.nAadharStatus],
      'ContactNominee': [this.nContactNo],
      'AddressNominee': [this.nAddress],
    });
    this.isNomineeEdited = false;
    this.updatedNomineeDetailsId = 0;
    this.clearNomineeDetails();
  }

  deleteFamilyDetails(row) {
    const familyDetails = <FormArray>this.hrmsForm.controls['familyDetails'];
    if (familyDetails) {
      familyDetails.removeAt(row);
    }
  }

  deleteNomineeDetails(row) {
    const nomineeDetails = <FormArray>this.hrmsForm.controls['nomineeDetails'];
    if (nomineeDetails) {
      nomineeDetails.removeAt(row);
    }
  }

  clearFamilyDetails() {
    this.fName = "";
    this.fRelationship = null;
    this.fDateOfBirth = null;
    this.fAadharNo = "";
    this.fAadharStatus = "";
    this.fAddress = "";
    this.fContactNo = "";
  }

  clearNomineeDetails() {
    this.nName = "";
    this.nRelationship = null;
    this.nDateOfBirth = null;
    this.nAadharNo = "";
    this.nAadharStatus = "";
    this.nAddress = "";
    this.nContactNo = "";
  }

  editFamilyDetails(row) {
    const familyData = (<FormArray>this.hrmsForm.controls['familyDetails']).at(row).value;
    this.fName = familyData.NameNominee;
    this.fRelationship = familyData.relationshipNominee;
    this.fDateOfBirth = familyData.dateOfBirthNominee;
    this.fAadharNo = familyData.aadharNoNominee;
    this.fAadharStatus = familyData.AadharStatusNominee;
    this.fAddress = familyData.AddressNominee;
    this.fContactNo = familyData.ContactNominee;
    this.isFamilyEdited = true;
    this.updatedFamilyDetailsId = row;
  }

  editNomineeDetails(row) {
    const nomineeData = (<FormArray>this.hrmsForm.controls['nomineeDetails']).at(row).value;
    this.nName = nomineeData.NameNominee;
    this.nRelationship = nomineeData.relationshipNominee;
    this.nDateOfBirth = nomineeData.dateOfBirthNominee;
    this.nAadharNo = nomineeData.aadharNoNominee;
    this.nAadharStatus = nomineeData.AadharStatusNominee;
    this.nAddress = nomineeData.AddressNominee;
    this.nContactNo = nomineeData.ContactNominee;
    this.isNomineeEdited = true;
    this.updatedNomineeDetailsId = row;
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

  validSubmitNominee() {
    this.submit = true;
  }

  addFamilyDetails() {
    console.log(this.validationform.value);
  }

  forCompany() {
    this.companyService.getAll().subscribe(data => {
      console.log(data);
      this.companies = data;
    });
  }
  forBranch() {
    this.branchesService.getAll().subscribe(data => {
      console.log(data);
      this.branches = data;
    });
  }
  forCountries() {
    this.contriesService.getAll().subscribe(data => {
      console.log(data);
      this.contries = data;
    });
  }
  forDepartments() {
    this.departmentsService.getAll().subscribe(data => {
      console.log(data);
      this.departments = data;
    });
  }
  forWorkingStatus() {
    this.workingStatusService.getAll().subscribe(data => {
      console.log(data);
      this.workingStatus = data;
    });
  }
  forCategories() {
    this.categoryEmpsService.getAll().subscribe(data => {
      console.log(data);
      this.categories = data;
    });
  }
  fortypiesEmp() {
    this.typeEmpsService.getAll().subscribe(data => {
      console.log(data);
      this.typiesEmp = data;
    });
  }
  forHigherAuthorityNames() {
    this.higherAuthorityNameService.getAll().subscribe(data => {
      console.log(data);
      this.departments = data;
    });
  }
  forHigherAuthoritiesBranches() {
    this.higherAuthoritiesBranchesService.getAll().subscribe(data => {
      console.log(data);
      this.higherAuthoritiesBranches = data;
    });
  }

  onOptionsSelected(event) {
    const value = event.target.value;
    this.countryZones = this.zones.filter(x => x.country_Id == value);

  }
  OptionsSelected(event) {
    const value = event.target.value;
    this.corresspondCountryZone = this.zones.filter(x => x.country_Id == value);
  }

  onThirdPartySelected(event) {
    const value = event.target.value;
    debugger;
    this.thirdPartyList = this.thirdParty.filter(x => x.thirdPartyType_Id == value);
  }

}
