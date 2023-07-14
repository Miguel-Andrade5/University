import javax.swing.*;
int userInput;
IntList inputs = new IntList();
while (true){
  userInput = Integer.parseInt(JOptionPane.showInputDialog("Enter Number"));
  if (userInput == 0){
    break;
  }
  inputs.append(userInput);
}
println(inputs.sum());
println((float)inputs.sum()/inputs.size());
println(inputs.min());
println(inputs.max());
