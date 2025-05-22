#import "/templates/mainmatter.typ": mainmatter-template
#show: mainmatter-template
#import "/components/algorithm.typ": algorithm
#import "/components/codeblock.typ": code

= 计算机排序算法（示例章节）

在计算机科学中，排序算法是处理数据结构和实现高效程序的基础之一。它们的目标是将一组元素（通常是数字或字符串）按照某种顺序（升序或降序）排列。根据实现方式和复杂度的不同，排序算法大致可以分为比较排序和非比较排序两大类。

== 比较排序

比较排序（comparison-based sorting）是排序算法中的一大类，其核心特征是：通过元素之间的“比较”来确定排序结果。也就是说，它们只借助“元素大小之间的比较操作”（如 $a > b$ 或 $a < b$）来判断元素的相对顺序。

例如：冒泡排序、选择排序、插入排序、归并排序、快速排序、堆排序等，都是典型的比较排序。

=== 冒泡排序

#algorithm((
  title: "冒泡排序(升序数组)",
  input: [长度为 $n$ 的无序数组 $A = [a_1, a_2, dots, a_n]$],
  output: [按升序排列的数组 $A$],
))[
  1. 初始化 $n = "length"(A)$
  2. *for* $i = 1$ *to* $n - 1$ *do*
  3. *for* $j = 1$ *to* $n - i$ *do*
  4. *if* $A_j > A_(j+1)$ *then*
  5. 交换 $A_j$ 和 $A_(j+1)$
  6. *end if*
  7. *end for*
  8. *end for*
]

接下来我们用 Python 编程实现这个算法。

#code(caption: "冒泡排序的 Python 实现")[```python
  def bubble_sort(a):
      n = len(a)
      for i in range(n):
          for j in range(n - i - 1):
              if a[j] > a[j + 1]:
                  a[j], a[j + 1] = a[j + 1], a[j]
      return a
    }
  ```]

=== 快速排序

#algorithm(
  (
    title: "快速排序算法",
    input: [长度为 $n$ 的无序数组 $A = [a_1, a_2, dots, a_n]$],
    output: [按升序排列的数组 $A$],
  ),
  [

  ],
)

#code(caption: "快速排序的 Python 实现")[```python
  def quick_sort(a):
      if len(a) <= 1: return a
      pivot = a[0]
      return quick_sort(
        [x for x in a[1:] if x <= pivot]) + [pivot] +
        quick_sort([x for x in a[1:] if x > pivot]
      )
  ```]

=== 插入排序

#algorithm(
  (
    title: "插入排序算法",
    input: [长度为 $n$ 的无序数组 $A = [a_1, a_2, dots, a_n]$],
    output: [按升序排列的数组 $A$],
  ),
  [

  ],
)

#code(caption: "插入排序的 Python 实现")[```python
  def insertion_sort(a):
      for i in range(1, len(a)):
          j = i
          while j > 0 and a[j] < a[j - 1]:
              a[j], a[j - 1] = a[j - 1], a[j]
              j -= 1
      return a
  ```]

=== 选择排序

#algorithm(
  (
    title: "选择排序算法",
    input: [长度为 $n$ 的无序数组 $A = [a_1, a_2, dots, a_n]$],
    output: [按升序排列的数组 $A$],
  ),
  [

  ],
)

=== 归并排序

#algorithm(
  (
    title: "归并排序算法",
    input: [长度为 $n$ 的无序数组 $A = [a_1, a_2, dots, a_n]$],
    output: [按升序排列的数组 $A$],
  ),
  [

  ],
)

#code(caption: "归并排序")[```python
  def merge_sort(a):
      if len(a) <= 1: return a
      mid = len(a) // 2
      left = merge_sort(a[:mid])
      right = merge_sort(a[mid:])
      return merge(left, right)

  def merge(l, r):
      res = []
      while l and r:
          res.append((l if l[0] < r[0] else r).pop(0))
      return res + l + r
  ```]

== 非比较排序

非比较排序（non-comparison-based sorting）是一类不通过元素之间的“大小比较”来确定顺序的排序方法。它们借助元素本身的数值特征（如位数、区间、出现次数等），将数据分布到合适的结构中进行排序，从而在某些条件下实现线性时间复杂度，即优于比较排序的 $O(n log n)$ 下限。

常见的非比较排序包括：计数排序（Counting Sort）、桶排序（Bucket Sort）、基数排序（Radix Sort）。

=== 桶排序

#algorithm(
  (
    title: "桶排序算法",
    input: [长度为 $n$ 的无序数组 $A = [a_1, a_2, dots, a_n]$],
    output: [按升序排列的数组 $A$],
  ),
  [

  ],
)

#code(caption: "桶排序的 Python 实现")[```python
  def bucket_sort(a):
      n = len(a)
      buckets = [[] for _ in range(n)]
      for x in a:
          i = int(x * n)
          buckets[i].append(x)
      return [y for b in buckets for y in sorted(b)]
  ```]

=== 基数排序

#algorithm(
  (
    title: "基数排序算法",
    input: [长度为 $n$ 的无序数组 $A = [a_1, a_2, dots, a_n]$],
    output: [按升序排列的数组 $A$],
  ),
  [

  ],
)

#code(caption: "基数排序的 Python 实现")[```python
  def radix_sort(a):
      if not a: return a
      m = len(str(max(a)))
      for d in range(m):
          a = sorted(a, key=lambda x: (x // 10**d) % 10)
      return a
  ```]

=== 计数排序

#algorithm(
  (
    title: "计数排序算法",
    input: [长度为 $n$ 的无序数组 $A = [a_1, a_2, dots, a_n]$],
    output: [按升序排列的数组 $A$],
  ),
  [

  ],
)

#code(caption: "计数排序的 Python 实现")[```python
  def counting_sort(a):
      if not a: return a
      m = max(a)
      count = [0] * (m + 1)
      for x in a: count[x] += 1
      return [i for i, c in enumerate(count) for _ in range(c)]
  ```]
