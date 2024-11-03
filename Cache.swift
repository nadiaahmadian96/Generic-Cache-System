class Cache<Key: Hashable, Value> {
    private var items: [Key: Value] = [:]
    
    func setItem(_ item: Value, forKey key: Key) {
        items[key] = item
    }
    
    func getItem(forKey key: Key) -> Value? {
        return items[key]
    }
}

let cache = Cache<String, Int>()
cache.setItem(42, forKey: "answer")
if let answer = cache.getItem(forKey: "answer") {
    print("The answer is \(answer)")  // Output: The answer is 42
}
