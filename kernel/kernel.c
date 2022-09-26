void dummy()
{}

int main()
{
  char *video_memory = 0xb8000;
  video_memory = 'X';
  dummy();
  return 0;
}
