# AutoLayout Programmatically

------

## 일반적인 Constraint

```swift
// 상단 제약
view.topAnchor.constaint(equalTo: 기준이 되는 뷰, constant: 값).isActive = true 

// 왼쪽 제약
view.leftAnchor.constraint(...)
view.leadingAnchor.constaint(...)

// 오른쪽 제약
view.rightAnchor.constraint(...)
view.trailing.constraint(...)

// 하단 제약
view.bottomAnchor.constraint(...)

// 너비 제약 
// equalToConstant로 값만 줄 수 있음
view.widthAnchor.constraint(equalToConstant: 값)

// 높이 제약
view.heightAnchor.constraint(equalToConstant: 값)
```



### 값 대신 배수로도 사용 가능

```swift
// 파라미터에 multiplier 
view.topAnchor.constraint(equalTo: 기준, multiplier : 배수).isActive = true
```

------

## Hugging

우선순위가 높은 쪽에서 낮은 쪽으로 끌어당김.

```swift
A.setContentHuggingPriority(UILayoutPriority(rawValue: 1000), for: .horizontal)
B.setContentHuggingPriority(UILayoutPriority(rawValue: 750), for: .horizontal)
```

A가 B보다 우선순위가 높기 때문에 B가 A쪽으로 당겨진다.

------

## Compression Resistance

우선순위가 높은 쪽에서 낮은 쪽으로 밈.

```swift
A.setContentCompressionResistancePriority(UILayoutPriority(rawValue: 1000), for: .horizontal)
B.setContentCompressionResistancePriority(UILayoutPriority(rawValue: 750), for: .horizontal)
```

A가 B보다 우선순위가 높기 때문에 A의 크기는 유지되고 B는 그만큼 밀린다.

------

## Priority

우선순위 : 1000 (높음) > 750 > 500 > 250(낮음)
