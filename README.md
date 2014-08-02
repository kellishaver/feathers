Feathers
====

Feathers is a minimalist CSS reset and boilerplate with optional rules that can be 'layered in' to apply sensible defaults to common widgets, such as navigation, forms, buttons, and menus

Feathers is a starting point, not an end to end solution. It does **not** contain a lot of layout rules, grid frameworks, or JavaScript libraries. It's not a replacement for Bootstrap or Foundation, etc. It's a lightweight alternative for people who want to start with  minimal, but sensible CSS and build from there.

Getting Started
----

First, install Feathers.

    gem install feathers

Next, Feathers assumes you're using SASS instead of Sprockets, so start by renaming your `application.css` file to `application.css.scss` and removing the Sprockets directives.

Now, simply `@import` the feathers you wish to use. They are:

* `base` - This is the basic CSS reset and boilerplate. It does some normalization and gives you sensible defaults for some basic things like typography, tap highlights, touch scroll behavior, etc.
* `buttons` - A collection of button styles; default, cancel, action, success, warning, delete
* `flash-messages` - Styling for flash messages; success, warning, notice
* `forms` - Nice defaults for form elements.
* `menus` - A collection of different menu types; breadcrumbs, dropdowns, horizontal nav bar, vertical list menu, link list, icon bar (works great with Font Awesome).
* `other-widgets` - This is a miscellaneous collection of other common widgets; pagination, avatars, progress bars, labels, notes, title bar, tag lines.
* `tables` - A nice default for data tables

CSS Classes & Usage
----

Check out the full examples here: http://kellishaver.github.io/feathers/

Customizing Feathers
----

You can of course override any Feathers CSS declaration inside your own stylesheet, and this is probably the most common and straightfoward path toward customization for a lot of people. However, if you would like to simply change Feathers' default colors, it's easy to do.

First, create an initializer file.

    touch config/initializers/feathers.rb

Then simply override the Feathers color presets. You can change any or all values to your liking.

    module Feathers
      class Config

        @light = "#efefef"
        @medium = "#ccc"
        @dark_2 = "#444"
        @highlight = "#ffe"
        @notice_background = "#ecffd6"
        @warning_background = "#fbefb9"
        @error_background = "#ffebeb"
        @note_background = "#d8f2ff"
        @danger_element = "#cf0404"
        @info_element = "#448ccb"
        @success_element = "#7ba900"
        @warning_element = "#f3a24d"
        @black = "#000"
        @white = "#fff"

      end
    end

Borders and gradients are calculated automatically based on the defined values for their element.

Changes
----

####v0.2.0
* Cleaned up typography / resets
* Headings now use Apple system default font where available
* Styles for placeholders for demo purposes on icons, instead of Font Awesome - Font Awesome is still fully supported, but not required for demoing things now
* Restyled dropdown menu slighlty
* Restyled horizontal nav bar
* Toned down border radi on all menus
* Title bar is lighter and now uses Apple system font where available
* Lightened icon bar
* Default label now has darker background
* Added some padding on the default table
* Fixed vertical alignment on checkboxes and radio buttons
* Removed `default_element` config color option
* Consolidated `light_1` and `light_2` config color options to `light`
* Consolidated `medium_1` and `medium_2` config color options to `medium`
* Consolidated `dark_1` and `dark_2` config color options to `dark`

####v0.1.4
* Add support for Rails 4.1
