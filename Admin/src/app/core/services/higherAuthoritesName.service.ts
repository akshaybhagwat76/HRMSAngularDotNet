import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';

import { HigherAuthorityName } from '../models/higherAuthorityName.models';
import { environment } from "../../../environments/environment";

@Injectable({ providedIn: 'root' })
export class HigherAuthorityNameService {
    constructor(private http: HttpClient) { }
    getAll() {
        return this.http.get<HigherAuthorityName[]>(`${environment.url}/api/higherauthorityname`);
    }
}
