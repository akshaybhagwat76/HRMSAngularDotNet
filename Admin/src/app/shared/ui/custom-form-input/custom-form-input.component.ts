import { Component, Input, OnInit } from '@angular/core';
import { FormGroup } from '@angular/forms';
import { InputTypes } from 'src/app/pages/dashboards/default/data';

@Component({
  selector: 'app-custom-form-input',
  templateUrl: './custom-form-input.component.html',
  styleUrls: ['./custom-form-input.component.scss']
})
export class CustomFormInputComponent implements OnInit {

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

  inputTypes = InputTypes;
  // inputTypes = [{
  //   Text: 'text',
  //   Select: 'select'
  // }];

  constructor() {
   }

  ngOnInit(): void {
  }

  getErrorRequired(): boolean {
    return this.requiredField && this.errorFormCtrl[this.formCtrlName].hasError('required') && this.errorFormCtrl[this.formCtrlName].touched;
  }
  getErrorValid(): boolean {
    return this.requiredField && this.errorFormCtrl[this.formCtrlName].hasError(this.formCtrlValidName);
  }

}
