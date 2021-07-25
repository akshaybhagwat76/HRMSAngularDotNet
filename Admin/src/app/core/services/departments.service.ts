import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';

import { Department } from '../models/departments.models';

@Injectable({ providedIn: 'root' })
export class DepartmentsService {
    constructor(private http: HttpClient) { }
    getAll() {
        return this.http.get<Department[]>(`http://localhost:64156/api/departments`);
    }
}
