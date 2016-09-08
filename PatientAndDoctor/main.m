//
//  main.m
//  PatientAndDoctor
//
//  Created by Shaun Campbell on 2016-09-08.
//  Copyright © 2016 Shaun Campbell. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"
#import "Patient.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Doctor *doctor = [[Doctor alloc] init];
        Patient *patient = [[Patient alloc] initWithName:@"Albert" andAge:@"21"];
        
        [patient visitDoctor:doctor];
        
        [patient requestMedication:doctor];
        
        [patient listPrescriptions];
        [doctor listPatients];
    
    
    
    }
    return 0;
}
