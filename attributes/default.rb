#################
# URLs
#################

#<> Public URL of the Jenkins master
default['site-chefcitypo3org']['url'] = "https://chef-ci.typo3.org"

#<> URL of the main chef repo
default['site-chefcitypo3org']['main_repo'] = "ssh://chef-jenkins@review.typo3.org:29418/Teams/Server/Chef.git"

#<> URL of the CHef Server
default['jenkins_chefci']['knife_config']['chef_server_url'] = 'https://chef.typo3.org'

#<> Install Jenkins LTS
default['jenkins']['master']['repository'] = "http://pkg.jenkins-ci.org/debian-stable"

#<> Use this Github organization to read cookbooks from
default['jenkins_chefci']['github_organization'] = 'TYPO3-cookbooks'

#################
# Jenkins Config
#################
default['jenkins']['master']['jvm_options'] = '-Djenkins.install.runSetupWizard=false -XX:MaxPermSize=256m'

#################
# Java
#################

#<> Okay, Oracle, we hate you
default['java']['oracle']['accept_oracle_download_terms'] = true

#################
# Jenkins Plugins
#################

#<> List of plugins to install
# Plugins:
# Retrieve this list via Jenkins Script console:
#
# Jenkins.instance.pluginManager.plugins.stream().sorted().each{ plugin -> println ("  ${plugin.getShortName()}:${plugin.getVersion()}") }
#
default['jenkins_chefci']['jenkins_plugins'] = %w(
  ace-editor:1.1
  analysis-collector:1.52
  analysis-core:1.95
  ansicolor:0.5.2
  ant:1.8
  antisamy-markup-formatter:1.5
  apache-httpcomponents-client-4-api:4.5.5-3.0
  authentication-tokens:1.3
  aws-credentials:1.23
  aws-java-sdk:1.11.403
  blueocean:1.9.0
  blueocean-autofavorite:1.2.2
  blueocean-bitbucket-pipeline:1.9.0
  blueocean-commons:1.9.0
  blueocean-config:1.9.0
  blueocean-core-js:1.9.0
  blueocean-dashboard:1.9.0
  blueocean-display-url:2.2.0
  blueocean-events:1.9.0
  blueocean-git-pipeline:1.9.0
  blueocean-github-pipeline:1.9.0
  blueocean-i18n:1.9.0
  blueocean-jira:1.9.0
  blueocean-jwt:1.9.0
  blueocean-personalization:1.9.0
  blueocean-pipeline-api-impl:1.9.0
  blueocean-pipeline-editor:1.9.0
  blueocean-pipeline-scm-api:1.9.0
  blueocean-rest:1.9.0
  blueocean-rest-impl:1.9.0
  blueocean-web:1.9.0
  bouncycastle-api:2.17
  branch-api:2.0.20
  buildtriggerbadge:2.9
  clone-workspace-scm:0.6
  cloudbees-bitbucket-branch-source:2.2.12
  cloudbees-folder:6.6
  command-launcher:1.2
  credentials:2.1.18
  credentials-binding:1.16
  display-url-api:2.2.0
  docker-commons:1.13
  docker-workflow:1.17
  durable-task:1.26
  ec2:1.40.1
  embeddable-build-status:1.9
  external-monitor-job:1.7
  favorite:2.3.2
  gerrit-trigger:2.27.7
  git:3.9.1
  git-client:2.7.3
  git-server:1.7
  github:1.29.3
  github-api:1.92
  github-branch-source:2.4.0
  github-oauth:0.29
  github-organization-folder:1.6
  greenballs:1.15
  handlebars:1.1.1
  handy-uri-templates-2-api:2.1.6-1.0
  htmlpublisher:1.17
  icon-shim:2.0.3
  jackson2-api:2.8.11.3
  javadoc:1.4
  jdk-tool:1.1
  jenkins-design-language:1.9.0
  jira:3.0.2
  job-dsl:1.70
  jquery-detached:1.2.1
  jsch:0.1.54.2
  junit:1.26.1
  ldap:1.20
  lockable-resources:2.3
  mailer:1.21
  matrix-auth:2.3
  matrix-project:1.13
  maven-plugin:3.1.2
  mercurial:2.4
  metrics:4.0.2.2
  momentjs:1.1.1
  node-iterator-api:1.5.0
  pam-auth:1.4
  pipeline-build-step:2.7
  pipeline-github-lib:1.0
  pipeline-graph-analysis:1.7
  pipeline-input-step:2.8
  pipeline-milestone-step:1.3.1
  pipeline-model-api:1.3.2
  pipeline-model-declarative-agent:1.1.1
  pipeline-model-definition:1.3.2
  pipeline-model-extensions:1.3.2
  pipeline-rest-api:2.10
  pipeline-stage-step:2.3
  pipeline-stage-tags-metadata:1.3.2
  pipeline-stage-view:2.10
  piwikanalytics:1.2.0
  plain-credentials:1.4
  PrioritySorter:3.6.0
  pubsub-light:1.12
  scm-api:2.2.8
  script-security:1.46
  slack:2.3
  sse-gateway:1.16
  ssh-credentials:1.14
  structs:1.17
  token-macro:2.5
  variant:1.1
  warnings:4.68
  windows-slaves:1.3.1
  workflow-aggregator:2.6
  workflow-api:2.30
  workflow-basic-steps:2.11
  workflow-cps:2.58
  workflow-cps-global-lib:2.12
  workflow-durable-task-step:2.22
  workflow-job:2.26
  workflow-multibranch:2.20
  workflow-scm-step:2.7
  workflow-step-api:2.16
  workflow-support:2.21
)
