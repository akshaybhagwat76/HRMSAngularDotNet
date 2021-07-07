import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';

import { ThirdPartyType } from '../models/thirdPartyType.models';

@Injectable({ providedIn: 'root' })
export class ThirdPartyTypeService {
    constructor(private http: HttpClient) { }
    getAll() {
        return this.http.get<ThirdPartyType[]>(`http://localhost:64156/api/thirdpartytype`);
    }
}
