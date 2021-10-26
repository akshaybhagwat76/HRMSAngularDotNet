import { Component, Input, Output, OnInit, EventEmitter } from '@angular/core';
import { FormGroup } from '@angular/forms';
import { InputTypes } from 'src/app/pages/dashboards/default/data';

@Component({
  selector: 'app-custom-form-input-scope',
  templateUrl: './custom-form-input-scope.component.html',
  styleUrls: ['./custom-form-input-scope.component.scss']
})
export class CustomFormInputScopeComponent implements OnInit {

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
  @Input() scope: any;
  @Output() scopeChange: EventEmitter<any> = new EventEmitter<any>();


  inputTypes = InputTypes;

  constructor() { }

  ngOnInit(): void {
  }

  emitText() {
    // console.log(value);
    console.log(this.scope);
    this.scopeChange.emit(this.scope);
  }

}
