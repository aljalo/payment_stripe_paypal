# 💳 Payment Using Stripe & PayPal - Flutter

A complete **Flutter payment integration project** that demonstrates how to use **Stripe** and **PayPal** for checkout inside a Flutter application.  
This project includes a shopping cart, payment method selection, and success screen after completing the transaction.

---

## 🚀 Features
- 🛒 Shopping cart UI with order details  
- 💳 Pay with **Stripe** (Payment Sheet integration)  
- 💲 Pay with **PayPal** using `flutter_paypal_payment`  
- ✅ Success screen with transaction details  
- ⚡ Built with **Bloc (Cubit)** for state management  
- 🌐 API integration using **Dio**  
- 🎨 Custom reusable UI components  

---

## 🛠️ Tech Stack
- [Flutter](https://flutter.dev/) (SDK ^3.8.1)
- [flutter_stripe](https://pub.dev/packages/flutter_stripe)
- [flutter_paypal_payment](https://pub.dev/packages/flutter_paypal_payment)
- [flutter_bloc](https://pub.dev/packages/flutter_bloc)
- [dio](https://pub.dev/packages/dio)
- [dartz](https://pub.dev/packages/dartz)
- [font_awesome_flutter](https://pub.dev/packages/font_awesome_flutter)
- [svg_flutter](https://pub.dev/packages/svg_flutter)

```
## 📂 Project Structure
lib/
├── core/
│ ├── errors/ # Failure handling
│ ├── functions/ # Payment functions (Stripe/PayPal)
│ ├── utlis/ # API Keys, Services, Styles
│ └── widgets/ # Shared UI components
│
├── features/
│ └── checkout/
│ ├── data/ # Models & Repositories
│ ├── presentation/ # UI (Cart, Payment, Success)
│ └── manager/ # Bloc (Payment Cubit)
│
└── main.dart # Entry point
```


## ⚙️ Setup & Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/YOUR_USERNAME/payment_using_stripe.git
   cd payment_using_stripe
Configure API Keys

Open lib/core/utlis/api_keys.dart

Add your Stripe keys:

static String secretKey = "YOUR_STRIPE_SECRET_KEY";
static String publishableKey = "YOUR_STRIPE_PUBLISHABLE_KEY";


Add your PayPal keys:

static String paypalClientID = "YOUR_PAYPAL_CLIENT_ID";
static String paypalSecretKey = "YOUR_PAYPAL_SECRET_KEY";
