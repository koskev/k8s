local regexes = {
  helm: {
    chart: "\\s*chart:\\s?'(?<depName>.*?)',",
    repoURL: "\\s*repoURL:\\s?'(?<registryUrl>https.*?)',",
    targetRevision: "\\s*targetRevision:\\s?'(?<currentValue>[\\w+\\.\\-]*)',",
  },
  docker: {
    image: "\\s*image:\\s?'(?<depName>.*?)',",
    tag: "\\s*tag:\\s?'(?<currentValue>[\\w+\\.\\-]*)(?:@(?<currentDigest>sha256:[a-f0-9]+))?',",
  },
  terraform: {
    source: "\\s*source:\\s?'(?<depName>.*?)',",
    version: "\\s*version:\\s?'(?<currentValue>.*?)',",
  },
};
local permutations(arr) =
  local n = std.length(arr);
  if n <= 1 then
    [arr]
  else
    [
      [arr[i]] + p
      for i in std.range(0, n - 1)
      for p in permutations(arr[0:i] + arr[i + 1:n])
    ];

local regexType = 'regex';

local getMatchArray(obj) = std.map(function(elem) std.join('', elem), permutations(std.objectValues(obj)));
{
  '$schema': 'https://docs.renovatebot.com/renovate-schema.json',
  prConcurrentLimit: 20,
  kubernetes: {
    fileMatch: [
      '\\.ya?ml$',
    ],
  },
  argocd: {
    fileMatch: [
      '\\.ya?ml$',
    ],
  },
  flux: {
    fileMatch: [
      '\\.ya?ml$',
    ],
  },
  customManagers: [
    {
      customType: regexType,
      fileMatch: [
        '\\.ya?ml$',
      ],
      datasourceTemplate: 'docker',
      matchStrings: getMatchArray(regexes.docker),
    },
    {
      description: "Helm repos for all strings that start with 'https'",
      customType: regexType,
      fileMatch: [
        'images.libsonnet',
      ],
      datasourceTemplate: 'helm',
      matchStrings: getMatchArray(regexes.helm),
    },
    {
      description: "Helm OCI repos for all strings that do not contain a ':'",
      customType: regexType,
      fileMatch: [
        'images.libsonnet',
      ],
      datasourceTemplate: 'docker',
      matchStrings: getMatchArray(regexes.helm),
      packageNameTemplate: '{{registryUrl}}/{{depName}}',
    },
    {
      description: 'Matches docker images with an optional pinned hash',
      customType: regexType,
      fileMatch: [
        'images.libsonnet',
      ],
      datasourceTemplate: 'docker',
      matchStrings: getMatchArray(regexes.docker),
    },
    {
      description: 'Terraform dependencies',
      customType: regexType,
      fileMatch: [
        'images.libsonnet',
      ],
      datasourceTemplate: 'terraform-provider',
      versioningTemplate: 'hashicorp',
      matchStrings: getMatchArray(regexes.terraform),
    },
  ],
  packageRules: [
    {
      matchDatasources: [
        'terraform-provider',
        'terraform-module',
      ],
      registryUrls: [
        'https://registry.opentofu.org',
      ],
    },
  ],
}
