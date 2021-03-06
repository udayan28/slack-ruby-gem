# This file was auto-generated by lib/generators/tasks/generate.rb

module Slack
  module Endpoint
    module Reminders
      #
      # Creates a reminder.
      #
      # @option options [Object] :text
      #   The content of the reminder
      # @option options [Object] :time
      #   When this reminder should happen: the Unix timestamp (up to five years from now), the number of seconds until the reminder (if within 24 hours), or a natural language description (Ex. "in 15 minutes," or "every Thursday")
      # @option options [Object] :user
      #   The user who will receive the reminder. If no user is specified, the reminder will go to user who created it.
      # @see https://api.slack.com/methods/reminders.add
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/reminders.add.md
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/reminders.add.json
      def reminders_add(options={})
        throw ArgumentError.new("Required arguments :text missing") if options[:text].nil?
        throw ArgumentError.new("Required arguments :time missing") if options[:time].nil?
        post("reminders.add", options)
      end

      #
      # Marks a reminder as complete.
      #
      # @option options [Object] :reminder
      #   The ID of the reminder to be marked as complete
      # @see https://api.slack.com/methods/reminders.complete
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/reminders.complete.md
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/reminders.complete.json
      def reminders_complete(options={})
        throw ArgumentError.new("Required arguments :reminder missing") if options[:reminder].nil?
        post("reminders.complete", options)
      end

      #
      # Deletes a reminder.
      #
      # @option options [Object] :reminder
      #   The ID of the reminder
      # @see https://api.slack.com/methods/reminders.delete
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/reminders.delete.md
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/reminders.delete.json
      def reminders_delete(options={})
        throw ArgumentError.new("Required arguments :reminder missing") if options[:reminder].nil?
        post("reminders.delete", options)
      end

      #
      # Gets information about a reminder.
      #
      # @option options [Object] :reminder
      #   The ID of the reminder
      # @see https://api.slack.com/methods/reminders.info
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/reminders.info.md
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/reminders.info.json
      def reminders_info(options={})
        throw ArgumentError.new("Required arguments :reminder missing") if options[:reminder].nil?
        post("reminders.info", options)
      end

      #
      # Lists all reminders created by or for a given user.
      #
      # @see https://api.slack.com/methods/reminders.list
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/reminders.list.md
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/reminders.list.json
      def reminders_list(options={})
        post("reminders.list", options)
      end

    end
  end
end
