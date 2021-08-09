import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';

import { Department } from '../models/departments.models';
import {environment} from "../../../environments/environment";

@Injectable({ providedIn: 'root' })
export class DepartmentsService {
    constructor(private http: HttpClient) { }
    getAll() {
        return this.http.get<Department[]>(`${environment.url}/api/departments`);
    }
}
