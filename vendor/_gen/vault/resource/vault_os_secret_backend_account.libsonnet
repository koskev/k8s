{
new(terraformName, host, mount, name, password_wo, username):: {
_type:: 'tf',
resource+: {
vault_os_secret_backend_account+: { [terraformName]+: {
'host': host,
'mount': mount,
'name': name,
'password_wo': password_wo,
'username': username,
}}},
'#withCustomMetadata': { 'function': { help: |||
 Custom metadata for the account. 
||| } },
withCustomMetadata(value):: self {
resource+: {
            vault_os_secret_backend_account+: { [terraformName]+: { 'custom_metadata': value } },
        },
},
'#withDisableAutomatedRotation': { 'function': { help: |||
 Disable automated password rotation. 
||| } },
withDisableAutomatedRotation(value):: self {
resource+: {
            vault_os_secret_backend_account+: { [terraformName]+: { 'disable_automated_rotation': value } },
        },
},
'#withHost': { 'function': { help: |||
 Name of the host this account belongs to. 
||| } },
withHost(value):: self {
resource+: {
            vault_os_secret_backend_account+: { [terraformName]+: { 'host': value } },
        },
},
'#withLastVaultRotation': { 'function': { help: |||
 Timestamp of the last password rotation by Vault. 
||| } },
withLastVaultRotation(value):: self {
resource+: {
            vault_os_secret_backend_account+: { [terraformName]+: { 'last_vault_rotation': value } },
        },
},
'#withMount': { 'function': { help: |||
 Path where the OS secrets backend is mounted. 
||| } },
withMount(value):: self {
resource+: {
            vault_os_secret_backend_account+: { [terraformName]+: { 'mount': value } },
        },
},
'#withName': { 'function': { help: |||
 Name of the account. 
||| } },
withName(value):: self {
resource+: {
            vault_os_secret_backend_account+: { [terraformName]+: { 'name': value } },
        },
},
'#withNamespace': { 'function': { help: |||
 Target namespace. (requires Enterprise) 
||| } },
withNamespace(value):: self {
resource+: {
            vault_os_secret_backend_account+: { [terraformName]+: { 'namespace': value } },
        },
},
'#withNextVaultRotation': { 'function': { help: |||
 Timestamp of the next scheduled password rotation by Vault. This value may change when rotation configuration is updated. 
||| } },
withNextVaultRotation(value):: self {
resource+: {
            vault_os_secret_backend_account+: { [terraformName]+: { 'next_vault_rotation': value } },
        },
},
'#withParentAccountRef': { 'function': { help: |||
 Reference to a parent account for rotation management. 
||| } },
withParentAccountRef(value):: self {
resource+: {
            vault_os_secret_backend_account+: { [terraformName]+: { 'parent_account_ref': value } },
        },
},
'#withPasswordPolicy': { 'function': { help: |||
 Name of the password policy to use for password generation. 
||| } },
withPasswordPolicy(value):: self {
resource+: {
            vault_os_secret_backend_account+: { [terraformName]+: { 'password_policy': value } },
        },
},
'#withPasswordWo': { 'function': { help: |||
 Password for the account. This is write-only, will not be read back from Vault,
	and can only be set during resource creation. To update the password after creation, use the Vault CLI
	or API to call the reset endpoint directly. 
||| } },
withPasswordWo(value):: self {
resource+: {
            vault_os_secret_backend_account+: { [terraformName]+: { 'password_wo': value } },
        },
},
'#withRotationPeriod': { 'function': { help: |||
 How often to rotate passwords, in seconds. Mutually exclusive with rotation_schedule. 
||| } },
withRotationPeriod(value):: self {
resource+: {
            vault_os_secret_backend_account+: { [terraformName]+: { 'rotation_period': value } },
        },
},
'#withRotationSchedule': { 'function': { help: |||
 Cron schedule for password rotation. Mutually exclusive with rotation_period. 
||| } },
withRotationSchedule(value):: self {
resource+: {
            vault_os_secret_backend_account+: { [terraformName]+: { 'rotation_schedule': value } },
        },
},
'#withRotationWindow': { 'function': { help: |||
 Window of time for password rotation, in seconds. 
||| } },
withRotationWindow(value):: self {
resource+: {
            vault_os_secret_backend_account+: { [terraformName]+: { 'rotation_window': value } },
        },
},
'#withUsername': { 'function': { help: |||
 Username for the account. 
||| } },
withUsername(value):: self {
resource+: {
            vault_os_secret_backend_account+: { [terraformName]+: { 'username': value } },
        },
},
'#withVerifyConnection': { 'function': { help: |||
 Verify the connection to the host with the provided credentials. 
||| } },
withVerifyConnection(value):: self {
resource+: {
            vault_os_secret_backend_account+: { [terraformName]+: { 'verify_connection': value } },
        },
},
},
}