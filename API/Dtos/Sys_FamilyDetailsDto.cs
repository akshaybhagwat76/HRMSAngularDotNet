﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace API.Dtos
{
    public class Sys_FamilyDetailsDto : BaseDto
    {
        public string ThirdPartyType_Name { get; set; }
        public string Name { get; set; }
        public string Relationship { get; set; }
        public string Date_Of_Birth { get; set; }
        public string Aadhar_No { get; set; }
        public string Aadhar_Status { get; set; }
        public string Address { get; set; }
        public string Contact_No { get; set; }
    }
}