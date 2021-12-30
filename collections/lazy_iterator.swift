import Foundation

let indexes = 1..<5000

// lazy is great when you only need subset of some data
let images = indexes.lazy.filter { index -> Bool in 
// upstream block
    print("[filter]")
    return index % 2 == 0
}.map { index -> String in
// downstream block 
// downstream block is executed before upstream block is finished when `lazy` keyword is used on higher order functions 
    print("[Map]")
    // memory 
    return "image_\(index)"
}

//123456
print(images.prefix(3)) //앞에서부터 [1, 2, 3]

//123456
print(images.suffix(3)) //뒤에서부터 [4, 5, 6]
let lastThreeImages = images.suffix(3)
for img in lastThreeImages {
    print(img)
}
