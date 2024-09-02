import 'package:maphero_web/src/interop/interop.dart';
import 'package:maphero_web/src/ui/map.dart';

/// A LogoControl is a control that adds the watermark.
class LogoControl extends JsObjectWrapper<LogoControlJsImpl> {
  factory LogoControl() => LogoControl.fromJsObject(LogoControlJsImpl());

  onAdd(MapHeroMap map) => jsObject.onAdd(map.jsObject);

  onRemove() => jsObject.onRemove();

  getDefaultPosition() => jsObject.getDefaultPosition();

  /// Creates a new LogoControl from a [jsObject].
  LogoControl.fromJsObject(super.jsObject) : super.fromJsObject();
}
