import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';

import { WorkingStatus } from '../models/workingStatus.models';

@Injectable({ providedIn: 'root' })
export class WorkingStatusService {
    constructor(private http: HttpClient) { }
    getAll() {
        return this.http.get<WorkingStatus[]>(`http://localhost:64156/api/status`);
    }
}
