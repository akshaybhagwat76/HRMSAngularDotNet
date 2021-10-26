import { ComponentFixture, TestBed } from '@angular/core/testing';

import { CustomFormInputScopeComponent } from './custom-form-input-scope.component';

describe('CustomFormInputScopeComponent', () => {
  let component: CustomFormInputScopeComponent;
  let fixture: ComponentFixture<CustomFormInputScopeComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ CustomFormInputScopeComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(CustomFormInputScopeComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
