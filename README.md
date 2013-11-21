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

CSS class names
----

I'm just going to make a list. Most are self-explanatory! Feathers tries to avid 'classitis' by applying CSS semantically within widgets.

####Base

* .align-center
* .align-right
* .align-left
* .hidden

####Buttons
* .button
* .button.cancel
* .button.delete
* .button.info
* .button.large
* .button.small
* .button.success
* .button.warning

May be combined, e.g. `class="button large info"`.

####Flash Messages

For block level elements.

* .notice
* .error
* .note
* .warning

####Forms

* input.error
* label.inline
* label.horizontal
* span.error-details

####Menus

* .breadcrumbs
* .drop-menu
* .drop-menu > ul
* .icon-bar
* ul.horizontal-menu
* ul.link-list
* ul.vertical-menu

####Other Widgets

* .avatar
* .avatar.circle
* .avatar.framed
* .note
* .pagination
* .progress-bar
* span.label
* span.label.danger
* span.label.info
* span.label.success
* span.label.warning
* .tag-line
* .title-bar

####Tables

* table.data-table

Customizing Feathers
----

You can of course override any Feathers CSS declartion inside your own stylesheet, and this is probably the most common and straightfoward path toward customization for a lot of people. However, if you would like to simply change Feathers' default colors, it's easy to do.

First, create an initializer file.

    touch config/initializers/feathers.rb

Then simply override the Feathers color presets. You can change any or all values to your liking.

    module Feathers
      class Config

        @light_1 = "#efefef"
        @light_2 = "#ddd"
        @medium_1 = "#ccc"
        @medium_2 = "#aaa"
        @dark_1 = "#777"
        @dark_2 = "#444"
        @highlight = "#ffe"
        @notice_background = "#ecffd6"
        @warning_background = "#fbefb9"
        @error_background = "#ffebeb"
        @note_background = "#d8f2ff"
        @default_element = "#ccc"
        @danger_element = "#cf0404"
        @info_element = "#448ccb"
        @success_element = "#7ba900"
        @warning_element = "#f3a24d"
        @black = "#000"
        @white = "#fff"

      end
    end

Borders and gradients are calculated automatically based on the defined values for their element.

ToDo
----

* Currently checkbox, radio buttons, and select box stylings are webkit only
* View Helpers for various Feathers elements
* JavaScript for better handling of tap states for touch events (`:hover` isn't always accurate)
* Add a demo and tests (tests don't really make sense until we have view helpers to test)
