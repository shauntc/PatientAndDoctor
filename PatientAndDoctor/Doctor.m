//
//  Doctor.m
//  PatientAndDoctor
//
//  Created by Shaun Campbell on 2016-09-08.
//  Copyright © 2016 Shaun Campbell. All rights reserved.
//

#import "Doctor.h"
#import "Patient.h"

@interface Doctor()

@property (readonly, nonatomic, strong)NSDictionary *medicalDictionary;

@end

@implementation Doctor


//init to impliment the dictionary
- (instancetype)init
{
    self = [super init];
    if (self) {
        _medicalDictionary = @{@"cough":@"Cough Medicine", @"sore throat":@"Throat Medication", @"other":@"Other Medication"};
    }
    return self;
}


//Accept or deny patient
-(BOOL)acceptPatient:(Patient *) patient
{
    if(patient.hasValidHCC)
    {
        self.patients[patient.name] = patient;
        NSLog(@"Doctor: How Can I help you?");
        return YES;
    }
    else
    {
        NSLog(@"Doctor: Sorry you dont have health insurance");
        return NO;
    }
    
    
    
}


//setter for patients to create a dictionary if it doesnt exist
-(void)setPatients:(NSMutableDictionary *)patients
{
    if(!_patients)
    {
        _patients = [[NSMutableDictionary alloc] init];
    }
    _patients = patients;
}

-(NSSet *)medicate:(NSSet*)symptoms patient:(Patient *)patient
{
    NSSet *prescriptions = [[NSSet alloc] init];
    
    if(patient.hasValidHCC)
    {
        
        for(NSString *symptom in symptoms)
        {
            [prescriptions setByAddingObject:self.medicalDictionary[symptom]];
        }
        
        return prescriptions;
        
    }
    else{
        return prescriptions;
    }
}

@end
