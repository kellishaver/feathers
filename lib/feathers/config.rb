module Feathers
  class Config
    class << self

      attr_reader :light,
                  :medium,
                  :dark,
                  :highlight,
                  :notice_background,
                  :warning_background,
                  :error_background,
                  :note_background,
                  :danger_element,
                  :info_element,
                  :success_element,
                  :warning_element,
                  :black,
                  :white

      attr_writer :light,
                  :medium,
                  :dark,
                  :highlight,
                  :notice_background,
                  :warning_border,
                  :warning_background,
                  :error_background,
                  :note_background,
                  :danger_element,
                  :info_element,
                  :success_element,
                  :warning_element,
                  :black,
                  :white

      def set_defaults
        @light = "#efefef"
        @medium = "#ccc"
        @dark = "#777"
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
  end
end
