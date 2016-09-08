//
//  Patient.m
//  PatientAndDoctor
//
//  Created by Shaun Campbell on 2016-09-08.
//  Copyright © 2016 Shaun Campbell. All rights reserved.
//

#import "Patient.h"
#import "Doctor.h"

@implementation Patient

-(void)visitDoctor:(Doctor *)doctor
{
    if([doctor acceptPatient:self])
    {
        NSLog(@"Patient: The doctor accepted me");
    }
    else
    {
        NSLog(@"Patient: The doctor didnt accept me");
    }
}

-(void)requestMedication:(Doctor *)doctor
{
    self.prescriptions = [doctor medicate:_currentSymptoms patient:self];
}


@end
