namespace :bundle do
  task :clean do
    on roles(:web) do
      within release_path do
        with rails_env: fetch(:rails_env) do
          execute :bundle, :clean
        end
      end
    end
  end
end

after "deploy:cleanup", "bundle:clean"