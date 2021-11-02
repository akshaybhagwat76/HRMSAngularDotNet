import {Injectable} from '@angular/core';
import {HttpClient} from '@angular/common/http';

import {Company} from '../models/company.models';
import {environment} from "../../../environments/environment";

@Injectable({providedIn: 'root'})
export class CompanyService {
  constructor(private http: HttpClient) {
  }

  getAll() {
    debugger
    // return this.http.get<Company[]>(`http://localhost:64156/api/companies`);
    return this.http.get<Company[]>(`${environment.url}/api/companies`);
  }
}
