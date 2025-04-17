// 年月转为中文，如 2027 年 5 月转为 “二〇二七年五月”
#let format-date-zh(year, month) = {
  let zh-digits = (
    0: "〇",
    1: "一",
    2: "二",
    3: "三",
    4: "四",
    5: "五",
    6: "六",
    7: "七",
    8: "八",
    9: "九",
    10:"十",
    11:"十一",
    12:"十二",
  )
  if type(year) != int or type(month) != int {
    return [无效输入：年份和月份必须是整数]
  }
  if month < 1 or month > 12 {
    return [无效月份：必须在 1-12 之间]
  }
  if year < 0 {
    return [无效年份：必须是非负整数]
  }

  let year-str = str(year)
  let year-zh = year-str.clusters().map(digit => zh-digits.at(int(digit))).join()
  let month-zh = zh-digits.at(month)

  [#year-zh年#month-zh]
}

// 把年月转为英文标识，如 2027 年 5 月转为 May, 2027
#let format-date-en(year, month) = {
  let month-names-en = (
    1: "January",
    2: "February",
    3: "March",
    4: "April",
    5: "May",
    6: "June",
    7: "July",
    8: "August",
    9: "September",
    10: "October",
    11: "November",
    12: "December",
  )
  if type(year) != int or type(month) != int { return [Invalid input] }
  if month < 1 or month > 12 { return [Invalid month] }
  let month-name = month-names-en.at(month)
  [#month-name, #year]
}

