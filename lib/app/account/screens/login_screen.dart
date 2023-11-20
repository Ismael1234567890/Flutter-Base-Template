import '/constants/app_export.dart';
import '/app/account/controllers/account_crontroller.dart';
import '/utils/helpers/validation_input.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final controller = Get.find<AccountController>();
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Login",
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 80),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                'Veuillez mettre les infos de connexion:',
                style: TextStyle(color: AppColors.blackColor, fontSize: 18),
              ),
              const SizedBox(
                height: 20,
              ),
              CustomTextFormField(
                margin:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                label: "username",
                prefix: const Icon(Icons.people),
                hintText: "veuillez mettre votre username",
                onChange1: (value) {
                  controller.email.value = value;
                },
              ),
              CustomTextFormField(
                margin:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                label: "Mot de passe",
                prefix: const Icon(Icons.password),
                hintText: "Votre mot de passe",
                isObscureText: true,
                validator: ValidationInput.validatorMotDePasse,
                onChange1: (value) {
                  controller.password.value = value;
                },
              )
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: CustomButton(
        height: 50,
        margin: const EdgeInsets.symmetric(horizontal: 16),
        onTap: () {
          if (formKey.currentState!.validate()) {
            controller.login();
          }
        },
        text: 'Connexion',
        variant: ButtonVariant.Primary,
      ),
    );
  }
}
