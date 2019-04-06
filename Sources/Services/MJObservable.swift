import UIKit

/// ObservableOptions Types
public enum ObservableOptions {
    /// When initializing Observable Value
    case initial
    
    // Return observed oldValue
    case old
    
    // Return newest observed value
    case new
}

open class MJObservable<Type> {
    fileprivate class CallBack {
        fileprivate weak var observer: AnyObject?
        fileprivate let options: [ObservableOptions]
        fileprivate let closure: (Type, ObservableOptions) -> Void
        
        fileprivate init(observer: AnyObject, options: [ObservableOptions], closure: @escaping (Type, ObservableOptions) -> Void) {
            self.observer = observer
            self.options = options
            self.closure = closure
        }
    }
    
    public var value: Type {
        didSet {
            removeNilObserver()
            notifyCallback(value: oldValue, options: .old)
            notifyCallback(value: value, options: .new)
            
        }
    }
    
    /// 모든 Observable에 대한 call
    private var callbacks = Array<CallBack>()
    // MARK: - Object Lifecycle
    public init(_ value: Type) {
        self.value = value
    }
    
    public func addObserver(
        observer: AnyObject,
        removeIfExiste: Bool = true,
        options: [ObservableOptions] = [.new],
        closure: @escaping (Type, ObservableOptions) -> Void) {
        // 1
        if removeIfExiste { remove(observer: observer) }
        
        // 2
        let callback = CallBack(
            observer: observer,
            options: options,
            closure: closure)
        
        callbacks.append(callback)
        
        // 3
        if options.contains(.initial) { closure(value, .initial) }
    }
    
    /// remove observer on nil
    private func removeNilObserver() {
        callbacks = callbacks.filter { $0.observer != nil }
    }
    
    /// remove target observer
    public func remove(observer: AnyObject) {
        self.callbacks = callbacks.filter { $0.observer !== observer }
    }
    
    private func notifyCallback(value: Type, options: ObservableOptions) {
        let callBackToNotify = callbacks.filter { $0.options.contains { $0 == options } }
        callBackToNotify.forEach { $0.closure(value, options)  }
    }
}


