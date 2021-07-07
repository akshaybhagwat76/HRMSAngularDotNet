import { Component, OnInit, ViewChild, AfterViewInit } from '@angular/core';
import { employees } from './data';
import { FormBuilder, Validators, FormGroup } from '@angular/forms';
import { forkJoin } from "rxjs";

import { NgbModal } from '@ng-bootstrap/ng-bootstrap';
import { CompanyService } from '../../../core/services/company.service';
import { BranchesService } from '../../../core/services/branches.service';
import { ContriesService } from '../../../core/services/contries.service';
import { DepartmentsService } from '../../../core/services/departments.service';
import { WorkingStatusService } from '../../../core/services/workStatus.service';
import { CategoryEmpsService } from '../../../core/services/categoryEmp.service';
import { TypeEmpsService } from '../../../core/services/typeEmp.service';
import { HigherAuthorityService } from '../../../core/services/higherAuthorites.service';
import { HigherAuthorityNameService } from '../../../core/services/higherAuthoritesName.service';
import { ThirdPartyTypeService } from '../../../core/services/thirdPartyType.service';
import { CastService } from '../../../core/services/cast.service';
import { BloodGroupService } from '../../../core/services/bloodgroup.service';
import { ZoneService } from '../../../core/services/zone.service';
import { StateService } from '../../../core/services/state.service';
import { RelationshipService } from '../../../core/services/relationShip.service';
import { UserTypeService } from '../../../core/services/usertype.service';

@Component({
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
  companies: any;
  branches: any;
  contries: any;
  departments: any;
  workingStatus: any;
  categories: any;
  typiesEmp: any;
  higherAuthority: any;
  thirdParty: any;
  higherAuthortyName: any;
  casts: any;
  bloodGroup: any;
  states: any;
  zones: any;
  relationShip:any;
  userType: any;
  employees;

  @ViewChild('content') content;

  constructor(private modalService: NgbModal,public formBuilder: FormBuilder,private companyService: CompanyService,
    private branchesService: BranchesService, private contriesService: ContriesService,
    private departmentsService: DepartmentsService,
    private workingStatusService: WorkingStatusService,
    private categoryEmpsService: CategoryEmpsService,
    private typeEmpsService: TypeEmpsService,
    private higherAuthorityService: HigherAuthorityService,
    private thirdPartyTypeService:ThirdPartyTypeService,
    private higherAuthorityNameService:HigherAuthorityNameService,
    private castService:CastService,
    private bloodGroupService:BloodGroupService,
    private zoneService:ZoneService,
    private stateService:StateService,
    private relationshipService: RelationshipService,
    private userTypeService: UserTypeService) { }

  ngOnInit() {
      this.companyService.getAll().subscribe(data=>{
        console.log(data);
      });
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
          religion: ['',[Validators.required, Validators.pattern('[a-zA-Z0-9]+')]],
          nationality: ['',[Validators.required, Validators.pattern('[a-zA-Z0-9]+')]],
          biometricCode: [''],
          higherAuthorityName: [''],
          higherAuthority: [''],
          higherAuthorityProject: [''],
          emailAddress: [''],
          thirdPartyType: [''],
          thirdParty: [''],
          workingStatus: [''],
          probatlonPerlod: [''],
          refName: [''],
          refNo: [''],
          bloodGroup: [''],
          cast: [''],
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
    this.fetchData();
  }
  ngAfterViewInit() {
    // setTimeout(() => {
    //   this.openModal();
    // }, 2000);
  }
  /**
   * Fetches the data
   */
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
    const thirdPartyType = this.thirdPartyTypeService.getAll();

    const cast = this.castService.getAll();
    const bloodGroup = this.bloodGroupService.getAll();

    const state = this.stateService.getAll();
    const zones = this.zoneService.getAll();

    const relationship = this.relationshipService.getAll();
    const userType = this.userTypeService.getAll();

    forkJoin([companies, branches, contries, departments, workingStatus, categories,
       typesEmp,higherAuthority,higherAuthorityName,thirdPartyType, cast,bloodGroup,
      state, zones, relationship, userType]).subscribe(result => {
      this.companies = result[0];
      this.branches = result[1];
      this.contries = result[2];
      this.departments = result[3];
      this.workingStatus = result[4];
      this.categories = result[5];
      this.typiesEmp = result[6];
      this.higherAuthority = result[7];
      this.higherAuthortyName = result[8];
      this.thirdParty = result[9];
      this.casts = result[10];
      this.bloodGroup = result[11];
      this.states = result[12];
      this.zones = result[13];
      this.relationShip = result[14];
      this.userType = result[15];
    });
    //this.employees = employees;
  }

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
      alert("test event");
    }
}
