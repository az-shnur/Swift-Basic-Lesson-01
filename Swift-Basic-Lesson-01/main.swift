//
//  main.swift
//  Lesson 01
//
//  Created by Aleksandr Ponomarenko on 3/8/21.
//

import Foundation

// -------------------------------------------------
// Решить квадратное уравнение.
// ax(^2) + bx + c = 0
// D = b2 − 4ac
// Если D < 0, корней нет;
// Если D = 0, есть ровно один корень;
// Если D > 0, корней будет два.

// x(^2) - 2x - 3 = 0

var a :Double = 1.0
var b :Double = -2.0
var c :Double = -3.0

let d :Double = b * 2 - 4 * a * c
let x1 :Double = ( -d + sqrt(d) ) / 2 * a
let x2 :Double = ( -d - sqrt(d) ) / 2 * a

if d > 0 {
    print ("""
Задача №1
Ответ: d = \(String(format: "%.1f", d)), x1 = \(String(format: "%.1f", x1)), x2 = \(String(format: "%.1f", x2))

""")
} else if d == 0 {
    print ("Ответ: d = \(d), x1 = x2 = \(x1)")
} else {
    print ("Ответ: d = \(d), корней нет")
}


// -------------------------------------------------
// 2. Даны катеты прямоугольного треугольника.
// Найти площадь, периметр и гипотенузу треугольника.
// площадь s=ab/2
// периметр p=a+b+c
// гипотенуза c(^2) = a(^2) + b(^2)

// катеты
var e:Double = 2
var f:Double = 3

// находим гепотенузу
let g:Double = sqrt(a * a + b * b)

// находим площадь
let h:Double = e * f / 2

// находим периметр
let i:Double =  e + f + g

print("""
Задача №2
Если катет a = \(e), а катет b = \(f)
Площадь трекгольника S = \(String(format: "%.1f", h))
Периметр трекгольника P = \(String(format: "%.1f", i))
Гепотенуза трекгольника с = \(String(format: "%.1f", g))

""")


// -------------------------------------------------
// Пользователь вводит сумму вклада в банк и годовой процент. Найти сумму вклада через 5 лет.
/*
 Формула расчёта простых процентов:
 S = (P * I * T / K) / 100
 I — годовая процентная ставка;
 T — дни, в течение которых будут начисляться проценты по вкладу;
 K — количество дней в текущем году (365 или 366)
 P — первоначальная сумма на депозите;
 S — сумма начисленных процентов.

 S = (P * I * Y) / 100

 1000*10*365/365/100 = 100

 */
var annualRate :Int = 10
var years :Int = 5
var firstMoney :Int = 1000
var money :Int = firstMoney
var accruedInterest :Int 

for _ in 1...years {
    accruedInterest = money * annualRate / 100
    money = money + accruedInterest
}

print ("""
Задача №3
Если у пользователя вклад \(firstMoney) и годовой процент \(annualRate), то через \(years) лет сумма вклада будет \(money).

""")


