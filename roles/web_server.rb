name "web_server"
run_list "recipe[nginx::source]"

default_attributes "nginx" => {
  "version" => "1.11.7",
  "init_style" => "init",
  "enable_default_site" => false,
  "upload_progress" => {
    "url" => "https://github.com/masterzen/nginx-upload-progress-module/archive/v0.9.1.tar.gz",
    "checksum" => "99ec072cca35cd7791e77c40a8ded41a7a8c1111e057be26e55fba2fdf105f43"
  },
  "source" => {
  "checksum" => "0d55beb52b2126a3e6c7ae40f092986afb89d77b8062ca0974512b8c76d9300e",
    "modules" => ["nginx::upload_progress_module"]
  }
}
