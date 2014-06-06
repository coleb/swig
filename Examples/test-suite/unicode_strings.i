%module unicode_strings

%include <std_string.i>

%inline %{

const char* non_utf8_c_str(void) {
  return "h\xe9llo w\xc3\xb6rld";
}

std::string non_utf8_std_string(void) {
  return std::string("h\xe9llo w\xc3\xb6rld");
}

bool compare_utf8_c_str(const char *str) {
  return strcmp("w\xc3\xb6rld", str) == 0;
}

bool compare_utf8_std_string(const std::string &str) {
  return str == "w\xc3\xb6rld";
}

%}
