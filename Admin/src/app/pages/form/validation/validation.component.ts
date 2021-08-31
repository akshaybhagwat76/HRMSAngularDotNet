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
import { EmployeesService } from 'src/app/core/services/employees.service';
import { EmployeeMasterService } from 'src/app/core/services/employee-master.service';
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
  lstEmployees: any[];
  constructor(public formBuilder: FormBuilder, private getemployeservice: GetemployeService
    , private companyservice: CompanyService, private branch: BranchesService, private department: DepartmentsService,
    private employeetypeService: EmployeesService, private employeeMasterService: EmployeeMasterService,
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
  filteredBranches: any;
  filteredDepartments: any;
  filteredDesignations: any;
  types: any;
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
    const types = this.employeetypeService.getAll();

    forkJoin([companies, branches, department, designation, zone, types]).subscribe(result => {
      this.companies = result[0];
      this.branches = result[1];
      this.departments = result[2];
      this.designations = result[3];
      this.zones = result[4];
      this.types = result[5];

      if (this.companies && this.companies.length > 0) {
        this.validationform.get('companyId').setValue(4);
      }
    });
  }

  ngOnInit() {
    this.validationform = this.formBuilder.group({
      companyId: [0],
      zoneId: [0],
      project_BranchId: [0],
      departmentId: [0],
      designationId: [0],
      firstName: [''],
      employeeCode: [''],
      statusId: [3],
      email: [''],
    });

    this.fetchData();

    this.breadCrumbItems = [{ label: 'Forms' }, { label: 'Form Validation', active: true }];

    /**
     * Bootstrap validation form data
     */


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

  getEmployeeType(id) {
    return this.types.find(x => x.id == id).type_Name;
  }
  getDepartment(id) {
    return this.departments.find(x => x.id == id).department_Name;
  }

  getDesignation(id) {
    return this.designations.find(x => x.id == id).designation_Name;
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

  resetForm() {
    if (this.validationform != undefined) {
      this.validationform.reset();
      this.validationform.get('companyId').setValue(4);
      this.validationform.get('statusId').setValue(3);
      this.validationform.get('departmentId').setValue(0);
      this.validationform.get('project_BranchId').setValue(0);
      this.validationform.get('designationId').setValue(0);
      this.validationform.get('zoneId').setValue(0);

      this.filteredDesignations = this.filteredDepartments = this.branches = [];
    }
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
    var searchDto = {
      "companyId": parseInt(this.validationform.controls.companyId.value),
      "project_BranchId": parseInt(this.validationform.controls.project_BranchId.value),
      "zoneId": parseInt(this.validationform.controls.zoneId.value),
      "departmentId": parseInt(this.validationform.controls.departmentId.value),
      "designationId": parseInt(this.validationform.controls.designationId.value),
      "statusId": this.validationform.controls.statusId.value,
      "employeeCode": this.validationform.controls.employeeCode.value,
      "firstName":this.validationform.controls.firstName.value,
      "email": this.validationform.controls.email.value
    }
    this.employeeMasterService.search(searchDto).subscribe((data: any) => {
      this.lstEmployees = data;
    })
  }
  selectChangeHandler(i: any) {

    console.log(i.target.value);
  }
  filterBranches(id) {
    let branches = this.branches;
    if (id !== "") {
      this.filteredBranches = branches.filter(x => x.zoneId == id);
    }
    else {
      this.filteredBranches = [];
    }
  }

  filterDepartments(id) {
    let Departments = this.departments;
    if (id !== "") {
      this.filteredDepartments = Departments.filter(x => x.branch_Id == id);
    }
    else {
      this.filteredDepartments = [];
    }
  }

  filterDesignation(id) {
    let Designations = this.designations;
    if (id !== "") {
      this.filteredDesignations = Designations.filter(x => x.department_Id == id);
    }
    else {
      this.filteredDesignations = [];
    }
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
