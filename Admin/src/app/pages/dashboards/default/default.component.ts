import { Component, OnInit, ViewChild, AfterViewInit } from '@angular/core';
import { employees } from './data';
import { FormBuilder, Validators, FormGroup } from '@angular/forms';

import { NgbModal } from '@ng-bootstrap/ng-bootstrap';

@Component({
  selector: 'app-default',
  templateUrl: './default.component.html',
  styleUrls: ['./default.component.scss']
})
export class DefaultComponent implements OnInit {

  validationform: FormGroup; // bootstrap validation form

  // Form submition
  submit: boolean;

  employees;
  @ViewChild('content') content;

  constructor(private modalService: NgbModal,public formBuilder: FormBuilder) { }

  ngOnInit() {
        /**
     * Bootstrap validation form data
     */
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
    this.employees = employees;
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
