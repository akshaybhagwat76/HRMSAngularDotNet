import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';

import { BloodGroup } from '../models/bloodgroup.models';

@Injectable({ providedIn: 'root' })
export class BloodGroupService {
    constructor(private http: HttpClient) { }
    getAll() {
        return this.http.get<BloodGroup[]>(`http://localhost:64156//api/bloodgroup`);
    }
}
