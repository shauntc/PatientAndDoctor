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
@property (readonly, nonatomic, strong) NSSet *prescriptions;
@property (nonatomic, assign) BOOL hasValidHCC;

- (instancetype)initWithName:(NSString *)name andAge:(NSString *)age;
-(void)visitDoctor:(Doctor *)doctor;
-(void)requestMedication:(Doctor *)doctor;
-(void)listPrescriptions;


@end
