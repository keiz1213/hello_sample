# commands used to deploy a Rails application
namespace :fly do
  # BUILD step:
  #  - changes to the fs make here DO get deployed
  #  - NO access to secrets, volumes, databases
  #  - Failures here prevent deployment
  task build: 'assets:precompile'

  # RELEASE step:
  #  - changes to the fs make here are DISCARDED
  #  - access secrets, databases
  #  - Failures here prevent deployment
  task release: 'db:migrate'
end
