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


- (instancetype)init
{
    self = [self initWithName:@"name" andAge:@"Age"];
    return self;
}

- (instancetype)initWithName:(NSString *)name andAge:(NSString *)age
{
    self = [super init];
    if (self) {
        _prescriptions = [[NSSet alloc] init];
        _currentSymptoms = [[NSMutableSet alloc] initWithArray:@[@"cough",@"other"]];
        _name = name;
        _age = age;
        _hasValidHCC = YES;
    }
    return self;
}

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
    _prescriptions = [doctor medicate:_currentSymptoms patient:self];
}

-(void)listPrescriptions
{
    NSString *temp = [NSString stringWithFormat:@"I'm %@ my prescriptions are", self.name];
    
    for(NSString *prescription in self.prescriptions)
    {
        temp = [temp stringByAppendingString:[NSString stringWithFormat:@" %@", prescription]];
    }
    NSLog(@"%@",temp);
}


@end
