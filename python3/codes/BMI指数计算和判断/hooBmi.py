#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# Body Mass Index
# 体重指数BMI=体重/身高的平方（国际单位kg/㎡）
# BMI 中国标准
# 分类	BMI 范围
# 偏瘦	<= 18.4
# 正常	18.5 ~ 23.9
# 过重	24.0 ~ 27.9
# 肥胖	>= 28.0

# Python浮点数比较问题 https://stackoverflow.com/questions/5595425/what-is-the-best-way-to-compare-floats-for-almost-equality-in-python
# 尽量避免使用 ==，若要用 math.isclose() 方法替代
# import math
# input data
wgt = float(input('Your Weight data (number only, kg): '))
hgt = float(input('Your height data (number only, m): '))
print('----------------------------------')
# calculate BMI
bmi = wgt/(hgt * hgt)
# campare to standard
sta = 'Obese'
if bmi < 18.5:
    sta = 'Underweight'
elif bmi < 24.0:
    sta = 'Normal'
elif bmi < 28.0:
    sta = 'Overweigh'
# output reslut
print('Your BMI is %.2f, %s. ' % (bmi, sta))