/*

    MARK: About Swift
    
    Safe:
        - Hataların compile time'de yakalanması için tasarlanmıştır.
        - Örneğin type mismatch, uninitialized variables, null pointer dereference gibi durumlar Objective-C tarafında runtime crash iken Swift tarafında compile error.
    
    Fast:
        - Apple'in LLVM compiler yapısı üzerine kuruldu ve rekabetçi bir performans hedefi taşımaktadır.
    
    Expressive:
        - Modern syntax ile kodun okunabilirliğinin yüksek olması amaçlanmıştır.
 
    Modern:
        - Yazılım geliştirme yaklaşımlarından - POP, OOP, FP gibi - birçok paradigmayı desteklemektedir, tek bir paradigmaya bağlı değildir.
 
    Ek Bilgiler:
        - 2014'te Objective-C alternatifi olarak tanıtıldı.
        - 2015'te open source oldu, farklı platformlara desteği gelmiş oldu.
        - Swift 5 sonrası ABI stabil oldu, yani her uygulama artık kendi kütüphanesini taşımayacak.
        - "Swift Evolution" ile herkese açık şekilde gleişimi yönetiliyor, GitHub üzerinden incelenebilir.
 
    MARK: Version Compatibility
 
    Source Compatibility:
        - Xcode, eski Swift versiyonlarıyla geliştirilmiş kodları derleyebilir. Build settings kısmında SWIFT_VERSION ile ayarlanabilir.
 
    Binary Compatibility:
        - Derlenmiş Swift kodu artık OS ile birlikte geliyor. App Store gönderilen uygulamalar daha az yer kaplıyor.
 
*/

/*
 
    MARK: The Basics

    - Tek bir tür değerleri veya çoklu değerleri saklamayı sağlayan variable tiplerini destekler.
    - Swift value saklamak için variable kullanır. Sabit değerleri de destekler.
    - Bir value olup olmadığını optionals kullanarak ifade ederiz.
    - Type safety özelliği sayesinde value ile variable eşleşmesinin doğru olması garanti edilir.
    - Memory safety özelliği ile geçerli verilerle çalışıldığı garanti edilir. Örneğin init edilmemiş bir object ile çalışamazsınız.
    - Constant, değeri değişmeyen variable olarak tanımlanabilir.
    - Bir variable, read öncesi değeri atanacağı garanti edilerek ilk tanımlamada değersiz tanımalanbilir. Burada değişken tipinin belirtilmesi zorunludur, bu sayede initial value üzerinden refer almaz.
    - Birden fazla değişken aynı satırda declare edilebilir.
    - Swift, bir value verildiği zaman değişken tipini algılar, illaki annotation gerekmez.
    - Değişken adlandırması temel programalam mantığındakiyle aynıdır. Hatta emoji bile kullanılabilir.
    - print() methodu klasik aynı işlevdedir. Parametreleri kullanılarak ayarlamalar yapılabilir.
    - Klasik comment kullanımı burada da vardır.
    - Semicolon ihtiyacı yoktur, sadece özel bir durum olan aynı satırda birden fazla statement yazılırsa kullanılır.
    - Integer için farklı aralıkları belirten özel tipler burada da vardır. Sınırlama gerektiren senaryolarda kullanılması efektif olacaktır.
    - Spesifik bir işlem yoksa her zaman Float veya Double - ki bu hem daha çok tercih edilir hem de Swift daha kullanışlı bulur - kullanabiliriz. Burada geçersiz değerler olduğu durumalrda NaN(Not a Number) değeri görülebilir.
    - Karmaşık görünen sayılarda "_" işareti ile okunabilirliği artırabiliriz.
    - Type Aliases, variable tiplerini kendi istediğimiz adlandırma ile kullanmayı sağlar. Bu yaklaşım mühendisin kendisine kalmıştır, belirli senaryolarda anlaşılabilirlik ve iletişimi kolaylaştırır.
    - Boolean değerler kontrol işlemlerinde kullanılır, bildiğimiz işlevlerin aynısı geçerlidir.
    - Tuple sayesinde, çoklu ve farklı değerleri tek bir variable içerisinde tutabiliriz. Ayrıca, içeriğindeki farklı değerlere ayrı ayrı erişebiliriz.
    - Ne kadar karmaşık değerler tutabilse de çok karmaşık veri yapılarımızda struct veya class tercih etmek daha doğru olacaktır.
    - Execution sırasında çıkabilecek hatalar için error handling kullanılır. Fonksiyon tanımlanırken throws ile işaretlenir; işlem yapılırken de do-try-catch ile kullanılır.
    - Assertions & Preconditions kavramlarını ise şu şekilde açıklayabiliriz:
        - Hataları iki şekilde düşünelim. İlki "Düzeltilebilir Hatalar", ikincisi ise "Programcı Hataları" olsun. Düzeltilebilir hatalar aslında network kopukluğu, dosya girilmeme durumu gibi şeylerdir. Programcı hataları dediğimiz kısım ise aslında "bug" dediğimiz, programcının kodu yanlış yazmış olduğu yerlerdir.
        - Assertions: Sadece geliştirme aşamasında çalışır, production için yok hükmündedir. assert() methodu ile uygulanır.
        - Preconditions: Her aşamada çalışır, crash eder.
    - Fatal Error ise her şekilde kodun çalışmasını durdurur.
    - Eğer ki geliştirme sırasında test amaçlı bir işlem varsa assert; gerçekten sorun yaratacak bir durum varsa precondition kullanmak mantıklı olacaktır. Fatal error ise switch yapılarının default case kısmında kullanılabilir.
    - Never tipi hiçbir değeri olmayan, boş bir enum gibidir.
*/

/// Constant
let maximumNumberOfLoginAttempts = 10
/// Variable
var currentLoginAttempt = 0
/// Type Annotation
var welcomeMessage : String
welcomeMessage = "Welcome"
/// Multiple Variables Declaration
var a = 1.0, b = 2, c = "Mustafa", d : String
/// Multiple Variables Declaration (Same type)
var e, f, g : Double
/// Emoji Usage
let 👻 = "I'm a ghost!"
/// print() Method
print("\(welcomeMessage), I was waiting for you.")
/// Integer
let minValue = UInt8.min
let maxValue = UInt8.max
let defaultIntMinValue = Int.min
/// Double & Float
var pi = 3.14159
/// Numeric Literals
let decimalInteger = 17
let binaryInteger = 0b10001
let octalInteger = 0o21
let hexadecimalInteger = 0x11
/// Readibility of Long Numbers
let justOverOneMillion = 1_000_000.000_000_1
/// Integer & Double Conversion
let three = 3
let pointOneFourOneFiveNine = 0.14159
pi = Double(three) + pointOneFourOneFiveNine
/// typealias
typealias AudioSample = UInt16
var maxAmplitudeFound = AudioSample.min
/// Boolean
let boolValue = true
if boolValue {
    print("It's true!")
}
/// Tuple
let http404Error = (404, "Not Found")
let (statusCode, statusMessage) = http404Error
print("The status code is \(statusCode)")
print("The status message is \(statusMessage)")

/*

   MARK: Optionals

   - Type? ifadesi aslında arka planda şunu ifade eder:
       enum Optional<Wrapped> {
           case none
           case some(Wrapped)
       }
   - Optionals sayesinde bir değerin none ya da some case birini alabileceğini belirtmiş oluruz.
   - nil değeri ile değişkende bir değer olmadığı belirtilir. "!= nil" ifadesi ile değişkenin boş olup olmama durumunu kontrol ederiz.
   - Ekstra bilgi olarak Objective-C'de nil sadece nonexistent object için kullanılabiliyordu; Swift'te ise herhangi bir type için kullanılabilir.
   - Optionals Unwrap, değerin olmadığı durumları handle etmemizin yollarını belirtir.
       - Force Unwrap: "!" ifadesi ile "bu değer nil değil" zorlaması yapılır. Swift buna güvenir, güveni boşa çıkarsa da runtime crash oluşur.
       - Optional Binding: En yaygın kullanım olan bu yöntemde, "if let" ifadesi sayesinde değerin olma durumuna göre işlem yapılır.
       - Early Return Pattern: "guard let" ifadesi sayesinde üsttekinin scope dışı da kullanılabilmesi sağlanılır.
       - Nil Coalescing: "??" ile nil ya da non-nil durumlarında atanacak değerler belirlenir, iki ihtimal de handle edilmiş olur.
       - Optional Chaining: Bu zincirleme kullanımda nil varsa devam edilmez, yoksa devam edilir.

*/

/// Optionals & nil
var serverResponseCode : Int? = 404
serverResponseCode = nil
/// Force Unwrap
let possibleNumber: Int? = 42
let actualNumber: Int = possibleNumber!
/// Optional Binding
if let possibleNumber {
}
/// Early Return Pattern
func processNumber() {
    guard let number = possibleNumber else {
        return
    }
    print("\(number)")
}
/// Nil Coalescing
let userName: String? = nil
let displayName = userName ?? "Anonymous"
/// Optional Chaining
// let userEmail = user?.profile?.contactInfo?.email

/// Error Handling
func canThrowAnError() throws {
    // this function may or may not throw an error
}
do {
    try canThrowAnError()
} catch {

}
/// Assertions
func calculateAverage(of numbers: [Double]) -> Double {
    assert(!numbers.isEmpty, "Cannot calculate average of empty array")
    return numbers.reduce(0, +) / Double(numbers.count)
}
/// Preconditions
let index = -1
precondition(index >= 0, "Index out of bounds")
/// Fatal Error
// fatalError("This should never happen")
