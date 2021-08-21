import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';

import { TypeEmp } from '../models/typeEmp.models';
import {environment} from "../../../environments/environment";

@Injectable({ providedIn: 'root' })
export class TypeEmpsService {
    constructor(private http: HttpClient) { }
    getAll() {
        return this.http.get<TypeEmp[]>(`${environment.url}/api/types`);
    }
}
