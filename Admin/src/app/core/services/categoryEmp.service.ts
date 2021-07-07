import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';

import { CategoryEmp } from '../models/categoryEmp.models';

@Injectable({ providedIn: 'root' })
export class CategoryEmpsService {
    constructor(private http: HttpClient) { }
    getAll() {
        return this.http.get<CategoryEmp[]>(`http://localhost:64156/api/categories`);
    }
}
