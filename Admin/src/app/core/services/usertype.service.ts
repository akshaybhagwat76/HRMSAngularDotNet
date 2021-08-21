import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';

import { UserType } from '../models/usertype.models';
import {environment} from "../../../environments/environment";

@Injectable({ providedIn: 'root' })
export class UserTypeService {
    constructor(private http: HttpClient) { }
    getAll() {
        return this.http.get<UserType[]>(`${environment.url}/api/usertype`);
    }
}
