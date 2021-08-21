import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';

import { CategoryEmp } from '../models/categoryEmp.models';
import {environment} from "../../../environments/environment";

@Injectable({ providedIn: 'root' })
export class CategoryEmpsService {
    constructor(private http: HttpClient) { }
    getAll() {
        return this.http.get<CategoryEmp[]>(`${environment.url}/api/categories`);
    }
}
