class ActionDispatch::Routing::RouteSet::NamedRouteCollection::UrlHelper
  def call(t, args)
    t.url_for(handle_positional_args(t, args, {locale:nil}.merge(@options), @segment_keys))
  end
end
