dnl If your extension references something external, use with:

PHP_ARG_ENABLE(translit, for transliteration support,
[  --enable-translit        Include transliteration support])

if test "$PHP_TRANSLIT" != "no"; then
  PHP_NEW_EXTENSION(translit, translit.c data/cyrillic_transliterate.c data/diacritical_remove.c data/greek_transliterate.c data/han_transliterate.c data/hebrew_transliterate.c data/lowercase_cyrillic.c data/lowercase_greek.c data/lowercase_latin.c data/normalize_ligature.c data/normalize_punctuation.c data/uppercase_cyrillic.c data/uppercase_greek.c data/uppercase_latin.c, $ext_shared)
fi
