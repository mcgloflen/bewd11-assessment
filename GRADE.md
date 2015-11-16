# Overall Assessment

##### Grade: C

##### Comments:

Haley,

Overall I see some good things here, and the code is organized and in the right place.

Here are some comments on the code:

1. Posts controller looks good. Your show action throws errors however because you did not call `user_posts_path` with any IDs:

```ruby
def show
    @post = post.find(params[:id])
    render user_posts_path
end
```

It needs to know those IDs to be able to redirect to the proper path. Take a look at the docs again for this.

Additionally you would never `render` a path. This is only for redirection purposes only. You render view templates.

2. Your posts do not accept any parameters for cover image.

3. It would be best to split the repeated HTML elements into the application.html.erb layout file.

4. The naming convention on your views is good except for post.html.erb. This should be the same name as the controller method (show.html.erb).