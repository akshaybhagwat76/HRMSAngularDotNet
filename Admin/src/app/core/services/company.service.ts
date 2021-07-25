import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';

import { Company } from '../models/company.models';

@Injectable({ providedIn: 'root' })
export class CompanyService {
    constructor(private http: HttpClient) { }
    getAll() {
        return this.http.get<Company[]>(`http://localhost:64156/api/companies`);
    }
}
