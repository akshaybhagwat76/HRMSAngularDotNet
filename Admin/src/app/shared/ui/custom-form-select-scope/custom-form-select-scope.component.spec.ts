import { ComponentFixture, TestBed } from '@angular/core/testing';

import { CustomFormSelectScopeComponent } from './custom-form-select-scope.component';

describe('CustomFormSelectScopeComponent', () => {
  let component: CustomFormSelectScopeComponent;
  let fixture: ComponentFixture<CustomFormSelectScopeComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ CustomFormSelectScopeComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(CustomFormSelectScopeComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
