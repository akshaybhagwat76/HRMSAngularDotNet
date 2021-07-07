import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';

import { UserType } from '../models/usertype.models';

@Injectable({ providedIn: 'root' })
export class UserTypeService {
    constructor(private http: HttpClient) { }
    getAll() {
        return this.http.get<UserType[]>(`http://localhost:64156/api/usertype`);
    }
}
