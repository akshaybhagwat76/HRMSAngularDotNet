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
@Component({
  selector: 'app-default',
  templateUrl: './default.component.html',
  styleUrls: ['./default.component.scss']
})
export class DefaultComponent implements OnInit {

  validationform: FormGroup; // bootstrap validation form
  validationformNominee: FormGroup
  // Form submition
  submit: boolean;
  companies: any;
  branches: any;
  contries: any;
  departments: any;
  workingStatus: any;

  employees;
  
  @ViewChild('content') content;

  constructor(private modalService: NgbModal,public formBuilder: FormBuilder,private companyService: CompanyService,
    private branchesService: BranchesService, private contriesService: ContriesService,
    private departmentsService: DepartmentsService,
    private workingStatusService: WorkingStatusService,) { }

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
    forkJoin([companies, branches, contries, departments, workingStatus]).subscribe(result => {
      this.companies = result[0];
      this.branches = result[1];
      this.contries = result[2];
      this.departments = result[3];
      this.workingStatus = result[4];
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
     console.log(this.validationform.controls);
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
}
