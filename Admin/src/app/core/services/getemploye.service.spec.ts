import { TestBed } from '@angular/core/testing';

import { GetemployeService } from './getemploye.service';

describe('GetemployeService', () => {
  let service: GetemployeService;

  beforeEach(() => {
    TestBed.configureTestingModule({});
    service = TestBed.inject(GetemployeService);
  });

  it('should be created', () => {
    expect(service).toBeTruthy();
  });
});
