import { Component, OnInit } from '@angular/core';
import { FormBuilder, Validators, FormGroup } from '@angular/forms';
import { MustMatch } from './validation.mustmatch';
import { GetemployeService } from 'src/app/core/services/getemploye.service';
import { CompanyService } from 'src/app/core/services/company.service';
import { BranchesService } from 'src/app/core/services/branches.service';
import { ZoneService } from 'src/app/core/services/zone.service';
import { DepartmentsService } from 'src/app/core/services/departments.service';
import { forkJoin } from 'rxjs';
import { DesignationsService } from 'src/app/core/services/designations.service';
@Component({
  selector: 'app-validation',
  templateUrl: './validation.component.html',
  styleUrls: ['./validation.component.scss']
})

/**
 * Forms Validation component
 */
export class ValidationComponent implements OnInit {

  validationform: FormGroup; // bootstrap validation form
  tooltipvalidationform: FormGroup; // bootstrap tooltip validation form
  typeValidationForm: FormGroup; // type validation form
  rangeValidationForm: FormGroup; // range validation form

  constructor(public formBuilder: FormBuilder, private getemployeservice: GetemployeService
    , private companyservice: CompanyService, private branch: BranchesService, private department: DepartmentsService,
    private zone: ZoneService, private designationSerivce: DesignationsService
  ) { }
  // bread crumb items
  breadCrumbItems: Array<{}>;

  // Form submition
  submit: boolean;
  formsubmit: boolean;
  typesubmit: boolean;
  rangesubmit: boolean;

  companies: any;
  branches: any;
  zones: any;
  departments: any;
  designations: any;
  name: any;
  employe_Code: any;
  email: any;

  fetchData() {
    const companies = this.companyservice.getAll();
    const branches = this.branch.getAll();
    const department = this.department.getAll();
    const designation = this.designationSerivce.getAll();
    const zone = this.zone.getAll();
    forkJoin([companies, branches, department, designation, zone]).subscribe(result => {
      this.companies = result[0];
      this.branches = result[1];
      this.departments = result[2];
      this.designations = result[3];
      this.zones = result[4];
    });
  }

  ngOnInit() {

    this.fetchData();

    this.breadCrumbItems = [{ label: 'Forms' }, { label: 'Form Validation', active: true }];

    /**
     * Bootstrap validation form data
     */
    this.validationform = this.formBuilder.group({
      company: ['',],
      zone: ['',],
      branch: ['',],
      department: ['',],
      designation: ['',],
      firstName: ['',],
      employeeCode: ['',],
      email: ['',],
      rdoAll: ['',],
      rdoInActive: ['',],
      rdoActive: ['',],
    });

    /**
     * Bootstrap tooltip validation form data
     */
    this.tooltipvalidationform = this.formBuilder.group({
      firstName: ['', [Validators.required, Validators.pattern('[a-zA-Z0-9]+')]],
      lastName: ['', [Validators.required, Validators.pattern('[a-zA-Z0-9]+')]],
      userName: ['', [Validators.required, Validators.pattern('[a-zA-Z0-9]+')]],
      city: ['', [Validators.required, Validators.pattern('[a-zA-Z0-9]+')]],
      state: ['', [Validators.required, Validators.pattern('[a-zA-Z0-9]+')]],
    });


    /**
     * Type validation form
     */
    this.typeValidationForm = this.formBuilder.group({
      text: ['', [Validators.required]],
      email: ['', [Validators.required, Validators.pattern('[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$')]],
      url: ['', [Validators.required, Validators.pattern('https?://.+')]],
      digits: ['', [Validators.required, Validators.pattern('[0-9]+')]],
      number: ['', [Validators.required, Validators.pattern('[0-9]+')]],
      alphanum: ['', [Validators.required, Validators.pattern('[a-zA-Z0-9]+')]],
      textarea: ['', [Validators.required]],
      password: ['', [Validators.required, Validators.minLength(6)]],
      confirmpwd: ['', Validators.required]
    }, {
      validator: MustMatch('password', 'confirmpwd'),
    });


    /**
     * Range validation form
     */
    this.rangeValidationForm = this.formBuilder.group({
      minlength: ['', [Validators.required, Validators.minLength(6)]],
      maxlength: ['', [Validators.required, Validators.maxLength(6)]],
      rangelength: ['', [Validators.required, Validators.minLength(5), Validators.maxLength(10)]],
      minvalue: ['', [Validators.required, Validators.min(6)]],
      maxvalue: ['', [Validators.required, Validators.max(6)]],
      rangevalue: ['', [Validators.required, Validators.min(6), Validators.max(100)]],
      regularexp: ['', [Validators.required, Validators.pattern('#[A-Fa-f0-9]{6}')]],
    });
    this.submit = false;
    this.formsubmit = false;
    this.typesubmit = false;
    this.rangesubmit = false;
  }

  /**
   * Returns form
   */
  get form() {
    return this.validationform.controls;
  }

  /**
   * Bootsrap validation form submit method
   */
  validSubmit(value: any) {
    this.submit = true;
    console.warn(value.company);
  }


  /**
   * returns tooltip validation form
   */
  get formData() {
    return this.tooltipvalidationform.controls;
  }

  /**
   * Bootstrap tooltip form validation submit method
   */
  formSubmit() {
    this.formsubmit = true;
  }
  selectChangeHandler(i: any) {
    console.log(i.target.value);
  }
  /**
   * Returns the type validation form
   */
  get type() {
    return this.typeValidationForm.controls;
  }

  /**
   * Type validation form submit data
   */
  typeSubmit() {
    this.typesubmit = true;
  }

  /**
   * Returns the range validation form
   */
  get range() {
    return this.rangeValidationForm.controls;
  }

  /**
   * range validation submit data
   */
  rangeSubmit() {
    this.rangesubmit = true;
  }



}
