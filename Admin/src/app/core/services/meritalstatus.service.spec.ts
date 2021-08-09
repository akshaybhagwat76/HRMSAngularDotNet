import { TestBed } from '@angular/core/testing';

import { MeritalstatusService } from './meritalstatus.service';

describe('MeritalstatusService', () => {
  let service: MeritalstatusService;

  beforeEach(() => {
    TestBed.configureTestingModule({});
    service = TestBed.inject(MeritalstatusService);
  });

  it('should be created', () => {
    expect(service).toBeTruthy();
  });
});
