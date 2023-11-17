//
//  ContentView.swift
//  Calculator
//
//  Created by Raphael Vitor on 17/11/23
//

import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = CalculatorViewModel()
    
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            VStack {
                Text("\(viewModel.formattedDisplayValue)")
                    .font(.system(size: 64))
                    .padding()
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomTrailing)
                    .padding()
                    .foregroundColor(.white)
                    .minimumScaleFactor(0.5)
                
                HStack {
                    Spacer()
                    
                    Button(action: {
                        viewModel.clear()
                    }) {
                        Text("AC")
                            .bold()
                            .frame(width: 80, height: 80)
                            .background(Color.gray.opacity(0.8))
                            .foregroundStyle(.white)
                            .cornerRadius(40)
                    }
                    
                    Button(action: {
                        viewModel.plusMinus()
                    }) {
                        Text("+/-")
                            .bold()
                            .frame(width: 80, height: 80)
                            .background(Color.gray.opacity(0.8))
                            .foregroundStyle(.white)
                            .cornerRadius(40)
                    }
                    
                    Button(action: {
                        viewModel.percent()
                    }) {
                        Text("%")
                            .bold()
                            .frame(width: 80, height: 80)
                            .background(Color.gray.opacity(0.8))
                            .foregroundStyle(.white)
                            .cornerRadius(40)
                    }
                    
                    Button(action: {
                        viewModel.setOperation("/")
                    }) {
                        Text("/")
                            .bold()
                            .frame(width: 80, height: 80)
                            .background(Color.orange)
                            .foregroundStyle(.white)
                            .cornerRadius(40)
                    }
                    
                    Spacer()
                }
                
                HStack {
                    Spacer()
                    
                    Button(action: {
                        viewModel.addNumber(number: 7)
                    }) {
                        Text("7")
                            .bold()
                            .frame(width: 80, height: 80)
                            .background(Color.gray.opacity(0.2))
                            .foregroundStyle(.white)
                            .cornerRadius(40)
                    }
                    
                    Button(action: {
                        viewModel.addNumber(number: 8)
                    }) {
                        Text("8")
                            .bold()
                            .frame(width: 80, height: 80)
                            .background(Color.gray.opacity(0.2))
                            .foregroundStyle(.white)
                            .cornerRadius(40)
                    }
                    
                    Button(action: {
                        viewModel.addNumber(number: 9)
                    }) {
                        Text("9")
                            .bold()
                            .frame(width: 80, height: 80)
                            .background(Color.gray.opacity(0.2))
                            .foregroundStyle(.white)
                            .cornerRadius(40)
                    }
                    
                    Button(action: {
                        viewModel.setOperation("*")
                    }) {
                        Text("*")
                            .bold()
                            .frame(width: 80, height: 80)
                            .background(Color.orange)
                            .foregroundStyle(.white)
                            .cornerRadius(40)
                    }
                    
                    Spacer()
                }
                
                HStack {
                    Spacer()
                    
                    Button(action: {
                        viewModel.addNumber(number: 4)
                    }) {
                        Text("4")
                            .bold()
                            .frame(width: 80, height: 80)
                            .background(Color.gray.opacity(0.2))
                            .foregroundStyle(.white)
                            .cornerRadius(40)
                    }
                    
                    Button(action: {
                        viewModel.addNumber(number: 5)
                    }) {
                        Text("5")
                            .bold()
                            .frame(width: 80, height: 80)
                            .background(Color.gray.opacity(0.2))
                            .foregroundStyle(.white)
                            .cornerRadius(40)
                    }
                    
                    Button(action: {
                        viewModel.addNumber(number: 6)
                    }) {
                        Text("6")
                            .bold()
                            .frame(width: 80, height: 80)
                            .background(Color.gray.opacity(0.2))
                            .foregroundStyle(.white)
                            .cornerRadius(40)
                    }
                    
                    Button(action: {
                        viewModel.setOperation("-")
                    }) {
                        Text("-")
                            .bold()
                            .frame(width: 80, height: 80)
                            .background(Color.orange)
                            .foregroundStyle(.white)
                            .cornerRadius(40)
                    }
                    
                    Spacer()
                }
                
                HStack {
                    Spacer()
                    
                    Button(action: {
                        viewModel.addNumber(number: 1)
                    }) {
                        Text("1")
                            .bold()
                            .frame(width: 80, height: 80)
                            .background(Color.gray.opacity(0.2))
                            .foregroundStyle(.white)
                            .cornerRadius(40)
                    }
                    
                    Button(action: {
                        viewModel.addNumber(number: 2)
                    }) {
                        Text("2")
                            .bold()
                            .frame(width: 80, height: 80)
                            .background(Color.gray.opacity(0.2))
                            .foregroundStyle(.white)
                            .cornerRadius(40)
                    }
                    
                    Button(action: {
                        viewModel.addNumber(number: 3)
                    }) {
                        Text("3")
                            .bold()
                            .frame(width: 80, height: 80)
                            .background(Color.gray.opacity(0.2))
                            .foregroundStyle(.white)
                            .cornerRadius(40)
                    }
                    
                    Button(action: {
                        viewModel.setOperation("+")
                    }) {
                        Text("+")
                            .bold()
                            .frame(width: 80, height: 80)
                            .background(Color.orange)
                            .foregroundStyle(.white)
                            .cornerRadius(40)
                    }
                    
                    Spacer()
                }
                
                HStack {
                    Button(action: {
                        viewModel.addNumber(number: 0)
                    }) {
                        Text("0")
                            .bold()
                            .frame(width: 170, height: 80)
                            .background(Color.gray.opacity(0.2))
                            .foregroundStyle(.white)
                            .cornerRadius(40)
                    }
                    
                    Button(action: {
                        viewModel.decimalPoint()
                    }) {
                        Text(".")
                            .bold()
                            .frame(width: 80, height: 80)
                            .background(Color.gray.opacity(0.2))
                            .foregroundStyle(.white)
                            .cornerRadius(40)
                    }
                    
                    Button(action: {
                        viewModel.calculate()
                    }) {
                        Text("=")
                            .bold()
                            .frame(width: 80, height: 80)
                            .background(Color.orange)
                            .foregroundStyle(.white)
                            .cornerRadius(40)
                    }
                }
                .environmentObject(viewModel)
            }
        }
    }
}

#Preview {
    ContentView()
}
