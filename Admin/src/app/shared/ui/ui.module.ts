import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';

import { NgbCollapseModule, NgbDatepickerModule, NgbTimepickerModule, NgbDropdownModule } from '@ng-bootstrap/ng-bootstrap';
import { ClickOutsideModule } from 'ng-click-outside';

import { PagetitleComponent } from './pagetitle/pagetitle.component';
import { LoaderComponent } from './loader/loader.component';
import { CustomFormInputComponent } from './custom-form-input/custom-form-input.component';
import { CustomFormSelectComponent } from './custom-form-select/custom-form-select.component';
import { CustomFormInputScopeComponent } from './custom-form-input-scope/custom-form-input-scope.component';
import { CustomFormSelectScopeComponent } from './custom-form-select-scope/custom-form-select-scope.component';

@NgModule({
  declarations: [PagetitleComponent, LoaderComponent, CustomFormInputComponent, CustomFormSelectComponent, CustomFormInputScopeComponent, CustomFormSelectScopeComponent],
  imports: [
    CommonModule,
    FormsModule,
    ReactiveFormsModule,
    ClickOutsideModule,
    NgbCollapseModule,
    NgbDatepickerModule,
    NgbTimepickerModule,
    NgbDropdownModule
  ],
  exports: [PagetitleComponent, LoaderComponent, CustomFormInputComponent, CustomFormSelectComponent, CustomFormInputScopeComponent]
})
export class UIModule { }
