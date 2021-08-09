import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { environment } from "../../../environments/environment";
import { HigherAuthorityBranches } from '../models/higherAuthorityBranches.model';

@Injectable({ providedIn: 'root' })
export class HigherAuthoritiesBranchesService {
  constructor(private http: HttpClient) { }
  getAll() {
    return this.http.get<HigherAuthorityBranches[]>(`${environment.url}/api/higherauthoritybranches`);
  }
}
