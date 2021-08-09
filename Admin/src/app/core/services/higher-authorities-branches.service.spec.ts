import { TestBed } from '@angular/core/testing';

import { HigherAuthoritiesBranchesService } from './higher-authorities-branches.service';

describe('HigherAuthoritiesBranchesService', () => {
  let service: HigherAuthoritiesBranchesService;

  beforeEach(() => {
    TestBed.configureTestingModule({});
    service = TestBed.inject(HigherAuthoritiesBranchesService);
  });

  it('should be created', () => {
    expect(service).toBeTruthy();
  });
});
