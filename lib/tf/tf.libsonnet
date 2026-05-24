local compiler = import 'utils/compile.libsonnet';
{
  local outerSelf = self,
  local tf = self,
  base(type, resource, name, body):: {
    _type:: compiler.types.tf,
    [type]+: {
      [resource]+: { [name]: [body] },
    },
  },
  data(resource, name, body):: outerSelf.base('data', resource, name, body),
  resource(resource, name, body):: outerSelf.base('resource', resource, name, body),
  moved(old, new):: {
    _type:: compiler.types.tf,
    moved+: [{
      from: old,
      to: new,
    }],
  },
  provider(name, body):: {
    _type:: compiler.types.tf,
    provider+: { [name]: body },
  },
  sops(name, filename):: outerSelf.data('sops_file', name, { source_file: filename }),

  authentik:: {
    addApplication(name, secret_ref='${data.sops_file.oidc_secret.data["%s"]}' % name, redirect_uris=[]):: [
      tf.resource('authentik_application', name, {
        name: name,
        protocol_provider: '${authentik_provider_oauth2.%s.id}' % name,
        slug: name,
      }),

      tf.resource('authentik_provider_oauth2', name, {
        allowed_redirect_uris: [
          {
            matching_mode: 'strict',
            url: url,
          }
          for url in redirect_uris
        ],
        client_id: name,
        client_secret: secret_ref,
        invalidation_flow: '${data.authentik_flow.default-invalidation-flow.id}',
        authorization_flow: '${data.authentik_flow.default-authorization-flow.id}',
        name: name,
        property_mappings: [
          '${data.authentik_property_mapping_provider_scope.profile.id}',
          '${data.authentik_property_mapping_provider_scope.email.id}',
          '${data.authentik_property_mapping_provider_scope.openid.id}',
        ],
        signing_key: '${data.authentik_certificate_key_pair.generated.id}',
      }),
    ],
  },
}
