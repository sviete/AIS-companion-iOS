import HAKit
import PromiseKit
import Shared

struct OnboardingAuthStepSensors: OnboardingAuthPostStep {
    var connection: HAConnection
    var api: HomeAssistantAPI
    var sender: UIViewController

    static var supportedPoints: Set<OnboardingAuthStepPoint> {
        Set([.afterRegister])
    }

    func perform(point: OnboardingAuthStepPoint) -> Promise<Void> {
        api.registerSensors()
    }
}
