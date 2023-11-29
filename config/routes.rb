# frozen_string_literal: true

# == Route Map
#
#                                   Prefix Verb   URI Pattern                                                                                       Controller#Action
#                                   tweets GET    /tweets(.:format)                                                                                 tweets#index
#                                          POST   /tweets(.:format)                                                                                 tweets#create
#                                    tweet GET    /tweets/:id(.:format)                                                                             tweets#show
#                                          PATCH  /tweets/:id(.:format)                                                                             tweets#update
#                                          PUT    /tweets/:id(.:format)                                                                             tweets#update
#                                          DELETE /tweets/:id(.:format)                                                                             tweets#destroy
#                                    users GET    /users(.:format)                                                                                  users#index
#                                          POST   /users(.:format)                                                                                  users#create
#                                     user GET    /users/:id(.:format)                                                                              users#show
#                                          PATCH  /users/:id(.:format)                                                                              users#update
#                                          PUT    /users/:id(.:format)                                                                              users#update
#                                          DELETE /users/:id(.:format)                                                                              users#destroy
#                             api_v1_posts GET    /api/v1/posts(.:format)                                                                           api/v1/posts#index
#                                          POST   /api/v1/posts(.:format)                                                                           api/v1/posts#create
#                              api_v1_post GET    /api/v1/posts/:id(.:format)                                                                       api/v1/posts#show
#                                          PATCH  /api/v1/posts/:id(.:format)                                                                       api/v1/posts#update
#                                          PUT    /api/v1/posts/:id(.:format)                                                                       api/v1/posts#update
#                                          DELETE /api/v1/posts/:id(.:format)                                                                       api/v1/posts#destroy
#                             api_v1_users GET    /api/v1/users(.:format)                                                                           api/v1/users#index
#                                          POST   /api/v1/users(.:format)                                                                           api/v1/users#create
#                              api_v1_user GET    /api/v1/users/:id(.:format)                                                                       api/v1/users#show
#                                          PATCH  /api/v1/users/:id(.:format)                                                                       api/v1/users#update
#                                          PUT    /api/v1/users/:id(.:format)                                                                       api/v1/users#update
#                                          DELETE /api/v1/users/:id(.:format)                                                                       api/v1/users#destroy
#                            api_v1_tweets GET    /api/v1/tweets(.:format)                                                                          api/v1/tweets#index
#                                          POST   /api/v1/tweets(.:format)                                                                          api/v1/tweets#create
#                             api_v1_tweet GET    /api/v1/tweets/:id(.:format)                                                                      api/v1/tweets#show
#                                          PATCH  /api/v1/tweets/:id(.:format)                                                                      api/v1/tweets#update
#                                          PUT    /api/v1/tweets/:id(.:format)                                                                      api/v1/tweets#update
#                                          DELETE /api/v1/tweets/:id(.:format)                                                                      api/v1/tweets#destroy
#                         api_v1_favorites GET    /api/v1/favorites(.:format)                                                                       api/v1/favorites#index
#                                          POST   /api/v1/favorites(.:format)                                                                       api/v1/favorites#create
#                          api_v1_favorite GET    /api/v1/favorites/:id(.:format)                                                                   api/v1/favorites#show
#                                          PATCH  /api/v1/favorites/:id(.:format)                                                                   api/v1/favorites#update
#                                          PUT    /api/v1/favorites/:id(.:format)                                                                   api/v1/favorites#update
#                                          DELETE /api/v1/favorites/:id(.:format)                                                                   api/v1/favorites#destroy
#            rails_postmark_inbound_emails POST   /rails/action_mailbox/postmark/inbound_emails(.:format)                                           action_mailbox/ingresses/postmark/inbound_emails#create
#               rails_relay_inbound_emails POST   /rails/action_mailbox/relay/inbound_emails(.:format)                                              action_mailbox/ingresses/relay/inbound_emails#create
#            rails_sendgrid_inbound_emails POST   /rails/action_mailbox/sendgrid/inbound_emails(.:format)                                           action_mailbox/ingresses/sendgrid/inbound_emails#create
#      rails_mandrill_inbound_health_check GET    /rails/action_mailbox/mandrill/inbound_emails(.:format)                                           action_mailbox/ingresses/mandrill/inbound_emails#health_check
#            rails_mandrill_inbound_emails POST   /rails/action_mailbox/mandrill/inbound_emails(.:format)                                           action_mailbox/ingresses/mandrill/inbound_emails#create
#             rails_mailgun_inbound_emails POST   /rails/action_mailbox/mailgun/inbound_emails/mime(.:format)                                       action_mailbox/ingresses/mailgun/inbound_emails#create
#           rails_conductor_inbound_emails GET    /rails/conductor/action_mailbox/inbound_emails(.:format)                                          rails/conductor/action_mailbox/inbound_emails#index
#                                          POST   /rails/conductor/action_mailbox/inbound_emails(.:format)                                          rails/conductor/action_mailbox/inbound_emails#create
#            rails_conductor_inbound_email GET    /rails/conductor/action_mailbox/inbound_emails/:id(.:format)                                      rails/conductor/action_mailbox/inbound_emails#show
#                                          PATCH  /rails/conductor/action_mailbox/inbound_emails/:id(.:format)                                      rails/conductor/action_mailbox/inbound_emails#update
#                                          PUT    /rails/conductor/action_mailbox/inbound_emails/:id(.:format)                                      rails/conductor/action_mailbox/inbound_emails#update
#                                          DELETE /rails/conductor/action_mailbox/inbound_emails/:id(.:format)                                      rails/conductor/action_mailbox/inbound_emails#destroy
# new_rails_conductor_inbound_email_source GET    /rails/conductor/action_mailbox/inbound_emails/sources/new(.:format)                              rails/conductor/action_mailbox/inbound_emails/sources#new
#    rails_conductor_inbound_email_sources POST   /rails/conductor/action_mailbox/inbound_emails/sources(.:format)                                  rails/conductor/action_mailbox/inbound_emails/sources#create
#    rails_conductor_inbound_email_reroute POST   /rails/conductor/action_mailbox/:inbound_email_id/reroute(.:format)                               rails/conductor/action_mailbox/reroutes#create
# rails_conductor_inbound_email_incinerate POST   /rails/conductor/action_mailbox/:inbound_email_id/incinerate(.:format)                            rails/conductor/action_mailbox/incinerates#create
#                       rails_service_blob GET    /rails/active_storage/blobs/redirect/:signed_id/*filename(.:format)                               active_storage/blobs/redirect#show
#                 rails_service_blob_proxy GET    /rails/active_storage/blobs/proxy/:signed_id/*filename(.:format)                                  active_storage/blobs/proxy#show
#                                          GET    /rails/active_storage/blobs/:signed_id/*filename(.:format)                                        active_storage/blobs/redirect#show
#                rails_blob_representation GET    /rails/active_storage/representations/redirect/:signed_blob_id/:variation_key/*filename(.:format) active_storage/representations/redirect#show
#          rails_blob_representation_proxy GET    /rails/active_storage/representations/proxy/:signed_blob_id/:variation_key/*filename(.:format)    active_storage/representations/proxy#show
#                                          GET    /rails/active_storage/representations/:signed_blob_id/:variation_key/*filename(.:format)          active_storage/representations/redirect#show
#                       rails_disk_service GET    /rails/active_storage/disk/:encoded_key/*filename(.:format)                                       active_storage/disk#show
#                update_rails_disk_service PUT    /rails/active_storage/disk/:encoded_token(.:format)                                               active_storage/disk#update
#                     rails_direct_uploads POST   /rails/active_storage/direct_uploads(.:format)                                                    active_storage/direct_uploads#create

Rails.application.routes.draw do
  resources :tweets
  resources :users
  namespace 'api' do
    namespace 'v1' do
      resources :posts
      resources :users
      resources :tweets
      resources :favorites
      resources :relationships
    end
  end
end
