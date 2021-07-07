import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';

import { HigherAuthorityName } from '../models/higherAuthorityName.models';

@Injectable({ providedIn: 'root' })
export class HigherAuthorityNameService {
    constructor(private http: HttpClient) { }
    getAll() {
        return this.http.get<HigherAuthorityName[]>(`http://localhost:64156/api//api/higherauthorityname`);
    }
}
