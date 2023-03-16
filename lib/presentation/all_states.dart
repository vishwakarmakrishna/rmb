import 'package:flutter/material.dart';
import 'package:rmb/resources/resources.dart';

class Error extends StatelessWidget {
  final String? errorMessage;

  final Function()? onRetryPressed;

  const Error({Key? key, this.errorMessage, this.onRetryPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            '$errorMessage',
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.red,
              fontSize: 18,
            ),
          ),
          const SizedBox(height: 8),
          ElevatedButton(
            onPressed: onRetryPressed,
            child: Text(
              AppStrings.retryAgain,
              style: getBoldStyle(
                color: ColorManager.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Empty extends StatelessWidget {
  final String? emptyMessage;

  final Function()? onRetryPressed;

  const Empty({Key? key, this.emptyMessage, this.onRetryPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            '$emptyMessage',
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.red,
              fontSize: 18,
            ),
          ),
          const SizedBox(height: 8),
          ElevatedButton(
            onPressed: onRetryPressed,
            child: Text(
              AppStrings.retryAgain,
              style: getBoldStyle(
                color: ColorManager.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Loading extends StatelessWidget {
  final String? loadingMessage;

  const Loading({Key? key, this.loadingMessage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            '$loadingMessage',
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 24,
            ),
          ),
          const SizedBox(height: 24),
          CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(ColorManager.blue),
          ),
        ],
      ),
    );
  }
}
