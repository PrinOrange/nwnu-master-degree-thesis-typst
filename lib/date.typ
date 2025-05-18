// 辅助函数：将数字 0-12 转为中文
#let number-to-zh(num) = {
  let zh-digits = (
    "0": "〇",
    "1": "一",
    "2": "二",
    "3": "三",
    "4": "四",
    "5": "五",
    "6": "六",
    "7": "七",
    "8": "八",
    "9": "九",
    "10": "十",
    "11": "十一",
    "12": "十二",
  )
  zh-digits.at(str(num), default: "无效数字")
}

// 年月转为中文，如 2027 年 5 月转为 “二〇二七年五月”
#let format-date-zh(year, month) = {
  // 类型检查和转换
  let year-int = if type(year) == int {
    year
  } else if type(year) == str {
    let parsed = int(year)
    if parsed == none { return [无效输入：年份必须是整数] }
    parsed
  } else {
    return [无效输入：年份必须是整数或字符串]
  }

  let month-int = if type(month) == int {
    month
  } else if type(month) == str {
    let parsed = int(month)
    if parsed == none { return [无效输入：月份必须是整数] }
    parsed
  } else {
    return [无效输入：月份必须是整数或字符串]
  }

  // 年份和月份有效性检查
  if year-int < 0 or year-int > 9999 {
    return [无效年份：必须在 0-9999 之间]
  }
  if month-int <= 0 or month-int > 12 {
    return [无效月份：必须在 1-12 之间]
  }

  // 转换年份为中文
  let year-str = str(year-int)
  let year-zh = year-str
    .clusters()
    .map(digit => number-to-zh(int(digit)))
    .join()
  let month-zh = number-to-zh(month-int)

  [#year-zh\年#month-zh\月]
}

// 年月转为英文，如 2027 年 5 月转为 “May 2027”
#let format-date-en(year, month) = {
  let month-names-en = (
    "1": "January",
    "2": "February",
    "3": "March",
    "4": "April",
    "5": "May",
    "6": "June",
    "7": "July",
    "8": "August",
    "9": "September",
    "10": "October",
    "11": "November",
    "12": "December",
  )
  // 类型检查和转换
  let year-int = if type(year) == int {
    year
  } else if type(year) == str {
    let parsed = int(year)
    if parsed == none { return [无效输入：年份必须是整数] }
    parsed
  } else {
    return [无效输入：年份必须是整数或字符串]
  }

  let month-int = if type(month) == int {
    month
  } else if type(month) == str {
    let parsed = int(month)
    if parsed == none { return [无效输入：月份必须是整数] }
    parsed
  } else {
    return [无效输入：月份必须是整数或字符串]
  }

  // 年份和月份有效性检查
  if year-int < 0 or year-int > 9999 {
    return [无效年份：必须在 0-9999 之间]
  }
  if month-int <= 0 or month-int > 12 {
    return [无效月份：必须在 1-12 之间]
  }

  let month-name = month-names-en.at(str(month-int))
  [#month-name, #year-int]
}
