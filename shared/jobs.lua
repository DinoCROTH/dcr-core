DCShared = DCShared or {}
DCShared.ForceJobDefaultDutyAtLogin = true -- true: Force duty state to jobdefaultDuty | false: set duty state from database last saved
DCShared.Jobs = {
	['unemployed'] = {
		label = 'Civilian',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Freelancer',
                payment = 1
            },
        },
	},
	['police'] = {
		label = 'Law Enforcement',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 5
            },
			['1'] = {
                name = 'Officer',
                payment = 7
            },
			['2'] = {
                name = 'Sergeant',
                payment = 10
            },
			['3'] = {
                name = 'Lieutenant',
                payment = 12
            },
			['4'] = {
                name = 'Chief',
				isboss = true,
                payment = 15
            },
        },
	},
	['ambulance'] = {
		label = 'EMS',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 5
            },
			['1'] = {
                name = 'Paramedic',
                payment = 75
            },
			['2'] = {
                name = 'Doctor',
                payment = 10
            },
			['3'] = {
                name = 'Surgeon',
                payment = 12
            },
			['4'] = {
                name = 'Chief',
				isboss = true,
                payment = 15
            },
        },
	},
	['realestate'] = {
		label = 'Real Estate',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 5
            },
			['1'] = {
                name = 'House Sales',
                payment = 7
            },
			['2'] = {
                name = 'Business Sales',
                payment = 10
            },
			['3'] = {
                name = 'Broker',
                payment = 12
            },
			['4'] = {
                name = 'Manager',
				isboss = true,
                payment = 15
            },
        },
	},
	['judge'] = {
		label = 'Honorary',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Judge',
                payment = 10
            },
        },
	},
	['lawyer'] = {
		label = 'Law Firm',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Associate',
                payment = 5
            },
        },
	}
}