import 'package:plugintest/src/definitions.dart';
import 'package:plugintest/src/exceptions/plugintest_exception.dart';
import 'package:plugintest/src/models/model.dart';
import 'package:plugintest/src/utils/assert_utils.dart';

class NotificationChannelGroup extends Model {
  String? channelGroupkey;
  String? channelGroupName;

  NotificationChannelGroup(
      {required String channelGroupkey, required String channelGroupName}) {
    this.channelGroupkey = channelGroupkey;
    this.channelGroupName = channelGroupName;
  }

  @override
  NotificationChannelGroup? fromMap(Map<String, dynamic> dataMap) {
    channelGroupkey = AssertUtils.extractValue(
        NOTIFICATION_CHANNEL_GROUP_KEY, dataMap, String);
    channelGroupName = AssertUtils.extractValue(
        NOTIFICATION_CHANNEL_GROUP_NAME, dataMap, String);

    return this;
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      NOTIFICATION_CHANNEL_GROUP_KEY: channelGroupkey,
      NOTIFICATION_CHANNEL_GROUP_NAME: channelGroupName
    };
  }

  @override
  void validate() {
    if (AssertUtils.isNullOrEmptyOrInvalid(channelGroupkey, String))
      throw PluginTestException(
          message: 'channelGroupkey is requried');
    if (AssertUtils.isNullOrEmptyOrInvalid(channelGroupName, String))
      throw PluginTestException(
          message: 'channelGroupName is requried');
  }
}
