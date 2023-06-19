import "package:get/get.dart";
import "package:hadis/screens/main_screen/controller/home_controller.dart";


class HomeBinding extends Bindings {
    @override
    void dependencies() {
        Get.lazyPut(() => HomeController());

        // Get.put(() => HomeController());


    }
}
