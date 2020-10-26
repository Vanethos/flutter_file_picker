import 'dart:typed_data';

class PlatformFile {
  const PlatformFile({
    this.path,
    this.name,
    this.bytes,
    this.size,
    this.contentType
  });

  PlatformFile.fromMap(Map data)
      : this.path = data['path'],
        this.name = data['name'],
        this.bytes = data['bytes'],
        this.size = data['size'],
        this.contentType = data ['contentType'];

  /// The absolute path for a cached copy of this file. It can be used to create a
  /// a file instance with a descriptor for the given path.
  /// ```
  /// final File myFile = File(platformFile.path);
  /// ```
  final String path;

  /// File name including its extension.
  final String name;

  /// Byte data for this file. Particurlarly useful if you want to manipulate its data
  /// or easily upload to somewhere else.
  final Uint8List bytes;

  /// The file size in KB.
  final int size;

  /// Content type for Web
  final String contentType;

  /// File extension for this file.
  String get extension => path?.split('.')?.last;
}
