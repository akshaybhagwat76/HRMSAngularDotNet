import { TestBed } from '@angular/core/testing';

import { HighestQualificationService } from './highest-qualification.service';

describe('HighestQualificationService', () => {
  let service: HighestQualificationService;

  beforeEach(() => {
    TestBed.configureTestingModule({});
    service = TestBed.inject(HighestQualificationService);
  });

  it('should be created', () => {
    expect(service).toBeTruthy();
  });
});
