//
//  Patient.h
//  PatientAndDoctor
//
//  Created by Shaun Campbell on 2016-09-08.
//  Copyright © 2016 Shaun Campbell. All rights reserved.
//
#import <Foundation/Foundation.h>


@class Doctor;


@interface Patient : NSObject


@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *age;
@property (nonatomic, strong) NSMutableSet *currentSymptoms;
@property (nonatomic, strong) NSSet *prescriptions;
@property (nonatomic, assign) BOOL hasValidHCC;

-(void)visitDoctor:(Doctor *)doctor;


@end
