import 'package:camera/camera.dart';
import 'package:google_mlkit_commons/google_mlkit_commons.dart';
import "package:flutter/foundation.dart";
class UltilsScanner {
  UltilsScanner._();

  static Future<CameraDescription> getCamera(
      CameraLensDirection cameraLensDirection) async {
    return await availableCameras().then((List<CameraDescription> cameras) =>
        cameras.firstWhere((CameraDescription cameraDescription) =>
            cameraDescription.lensDirection == cameraLensDirection));
  }

//   final WriteBuffer allBytes = WriteBuffer();
// for (final Plane plane in cameraImage.planes) {
//   allBytes.putUint8List(plane.bytes);
// }
// final bytes = allBytes.done().buffer.asUint8List();

// final Size imageSize = Size(cameraImage.width.toDouble(), cameraImage.height.toDouble());

// final InputImageRotation imageRotation =
//     InputImageRotationValue.fromRawValue(camera.sensorOrientation);

// final InputImageFormat inputImageFormat =
//     InputImageFormatValue.fromRawValue(cameraImage.format.raw);

// final planeData = cameraImage.planes.map(
//   (Plane plane) {
//     return InputImagePlaneMetadata(
//       bytesPerRow: plane.bytesPerRow,
//       height: plane.height,
//       width: plane.width,
//     );
//   },
// ).toList();

// final inputImageData = InputImageData(
//   size: imageSize,
//   imageRotation: imageRotation,
//   inputImageFormat: inputImageFormat,
//   planeData: planeData,
// );

// final inputImage = InputImage.fromBytes(bytes: bytes, inputImageData: inputImageData);
}
