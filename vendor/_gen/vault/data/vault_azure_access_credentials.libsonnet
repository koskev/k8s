{
new(terraformName, backend, role):: {
_type:: 'tf',
data+: {
vault_azure_access_credentials+: { [terraformName]+: {
'backend': backend,
'role': role,
}}},
'#withBackend':: { 'function': { help: |||
 Azure Secret Backend to read credentials from. 
||| } },
withBackend(value):: self {
data+: {
            vault_azure_access_credentials+: { [terraformName]+: { 'backend': value } },
        },
},
'#withClientId':: { 'function': { help: |||
 The client id for credentials to query the Azure APIs. 
||| } },
withClientId(value):: self {
data+: {
            vault_azure_access_credentials+: { [terraformName]+: { 'client_id': value } },
        },
},
'#withClientSecret':: { 'function': { help: |||
 The client secret for credentials to query the Azure APIs. 
||| } },
withClientSecret(value):: self {
data+: {
            vault_azure_access_credentials+: { [terraformName]+: { 'client_secret': value } },
        },
},
'#withEnvironment':: { 'function': { help: |||
 The Azure environment to use during credential validation.
Defaults to the Azure Public Cloud.
Some possible values: AzurePublicCloud, AzureUSGovernmentCloud 
||| } },
withEnvironment(value):: self {
data+: {
            vault_azure_access_credentials+: { [terraformName]+: { 'environment': value } },
        },
},
withId(value):: self {
data+: {
            vault_azure_access_credentials+: { [terraformName]+: { 'id': value } },
        },
},
'#withLeaseDuration':: { 'function': { help: |||
 Lease duration in seconds relative to the time in lease_start_time. 
||| } },
withLeaseDuration(value):: self {
data+: {
            vault_azure_access_credentials+: { [terraformName]+: { 'lease_duration': value } },
        },
},
'#withLeaseId':: { 'function': { help: |||
 Lease identifier assigned by vault. 
||| } },
withLeaseId(value):: self {
data+: {
            vault_azure_access_credentials+: { [terraformName]+: { 'lease_id': value } },
        },
},
'#withLeaseRenewable':: { 'function': { help: |||
 True if the duration of this lease can be extended through renewal. 
||| } },
withLeaseRenewable(value):: self {
data+: {
            vault_azure_access_credentials+: { [terraformName]+: { 'lease_renewable': value } },
        },
},
'#withLeaseStartTime':: { 'function': { help: |||
 Time at which the lease was read, using the clock of the system where Terraform was running 
||| } },
withLeaseStartTime(value):: self {
data+: {
            vault_azure_access_credentials+: { [terraformName]+: { 'lease_start_time': value } },
        },
},
'#withMaxCredValidationSeconds':: { 'function': { help: |||
 If 'validate_creds' is true, the number of seconds after which to give up validating credentials. 
||| } },
withMaxCredValidationSeconds(value):: self {
data+: {
            vault_azure_access_credentials+: { [terraformName]+: { 'max_cred_validation_seconds': value } },
        },
},
'#withNamespace':: { 'function': { help: |||
 Target namespace. (requires Enterprise) 
||| } },
withNamespace(value):: self {
data+: {
            vault_azure_access_credentials+: { [terraformName]+: { 'namespace': value } },
        },
},
'#withNumSecondsBetweenTests':: { 'function': { help: |||
 If 'validate_creds' is true, the number of seconds to wait between each test of generated credentials. 
||| } },
withNumSecondsBetweenTests(value):: self {
data+: {
            vault_azure_access_credentials+: { [terraformName]+: { 'num_seconds_between_tests': value } },
        },
},
'#withNumSequentialSuccesses':: { 'function': { help: |||
 If 'validate_creds' is true, the number of sequential successes required to validate generated credentials. 
||| } },
withNumSequentialSuccesses(value):: self {
data+: {
            vault_azure_access_credentials+: { [terraformName]+: { 'num_sequential_successes': value } },
        },
},
'#withRole':: { 'function': { help: |||
 Azure Secret Role to read credentials from. 
||| } },
withRole(value):: self {
data+: {
            vault_azure_access_credentials+: { [terraformName]+: { 'role': value } },
        },
},
'#withSubscriptionId':: { 'function': { help: |||
 The subscription ID to use during credential validation. Defaults to the subscription ID configured in the Vault backend 
||| } },
withSubscriptionId(value):: self {
data+: {
            vault_azure_access_credentials+: { [terraformName]+: { 'subscription_id': value } },
        },
},
'#withTenantId':: { 'function': { help: |||
 The tenant ID to use during credential validation. Defaults to the tenant ID configured in the Vault backend 
||| } },
withTenantId(value):: self {
data+: {
            vault_azure_access_credentials+: { [terraformName]+: { 'tenant_id': value } },
        },
},
'#withValidateCreds':: { 'function': { help: |||
 Whether generated credentials should be validated before being returned. 
||| } },
withValidateCreds(value):: self {
data+: {
            vault_azure_access_credentials+: { [terraformName]+: { 'validate_creds': value } },
        },
},
},
}