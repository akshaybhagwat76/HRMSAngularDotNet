import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';

import { TypeEmp } from '../models/typeEmp.models';

@Injectable({ providedIn: 'root' })
export class TypeEmpsService {
    constructor(private http: HttpClient) { }
    getAll() {
        return this.http.get<TypeEmp[]>(`http://localhost:64156/api/typies`);
    }
}
