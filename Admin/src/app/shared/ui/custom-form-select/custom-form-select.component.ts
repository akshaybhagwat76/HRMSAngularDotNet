import { Component, EventEmitter, Input, OnInit, Output } from '@angular/core';
import { FormGroup } from '@angular/forms';
import { InputTypes } from 'src/app/pages/dashboards/default/data';

@Component({
  selector: 'app-custom-form-select',
  templateUrl: './custom-form-select.component.html',
  styleUrls: ['./custom-form-select.component.scss']
})
export class CustomFormSelectComponent implements OnInit {

  @Input() formGrp: FormGroup;
  @Input() formCtrlName: string = '';
  @Input() formCtrlValidName: string = '';
  @Input() labelFor!: string;
  @Input() labelName!: string;
  @Input() inputType: string;
  @Input() placeholder: string;
  @Input() id: string;
  @Input() class: string;
  @Input() autocomplete: string = 'off';
  @Input() requiredField: boolean = false;
  @Input() errorFormCtrl: FormGroup;
  @Input() errorText: string;
  @Input() errorValidText: string;  
  @Input() dropdownDatas: any;
  // @Output() onChange: any;
  @Output() onChange: EventEmitter<any> = new EventEmitter<any>();

  inputTypes = InputTypes;

  constructor() { }

  ngOnInit(): void {
  }

  getErrorRequired(): boolean {
    return this.requiredField && this.errorFormCtrl[this.formCtrlName].hasError('required') && this.errorFormCtrl[this.formCtrlName].touched;
  }
  getErrorValid(): boolean {
    return this.requiredField && this.errorFormCtrl[this.formCtrlName].hasError(this.formCtrlValidName);
  }

  onChanges(id) {
    // let departments = this.departments;
    // this.projectDepartments = departments.filter(x => x.branch_Id == id);
    this.onChange.emit(id);
  }

}
