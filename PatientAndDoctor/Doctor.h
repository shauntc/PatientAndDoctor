//
//  Doctor.h
//  PatientAndDoctor
//
//  Created by Shaun Campbell on 2016-09-08.
//  Copyright © 2016 Shaun Campbell. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Patient;

@interface Doctor : NSObject

@property (nonatomic, strong) NSMutableDictionary *patients;

-(BOOL)acceptPatient:(Patient *) patient;
-(NSSet *)medicate:(NSSet*)symptoms patient:(Patient *)patient;


@end
