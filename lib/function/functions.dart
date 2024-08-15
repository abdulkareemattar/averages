double average(List<int> marks)
{
double sum = 0, avg = 0;

for (int i = 0; i < 14; i++) {
sum += marks[i];
}
avg = sum / 14;
return avg;
}
