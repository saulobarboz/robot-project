def factory_user(target):
    data = {
        'standard_user': {
            'login': 'standard_user',
            'password': 'secret_sauce'
        },
        'locked_out_user': {
            'login': 'locked_out_user',
            'password': 'secret_sauce'
        },
        'problem_user': {
            'login': 'problem_user',
            'password': 'secret_sauce'
        },
        'performance_glitch_user': {
            'login': 'performance_glitch_user',
            'password': 'secret_sauce'
    }
    }
    return data[target]
