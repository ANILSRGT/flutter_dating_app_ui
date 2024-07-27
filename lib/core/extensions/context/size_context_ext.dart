part of 'context_ext.dart';

final class _SizeContextExt {
  const _SizeContextExt(BuildContext context) : _context = context;
  final BuildContext _context;

  double get width => MediaQuery.of(_context).size.width;
  double get height => MediaQuery.of(_context).size.height;
}
