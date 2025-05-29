# 🚀 Robot Framework - Sign-Up Page Automation

This project automates the sign-up form testing for the demo site:  
🔗 [https://qavbox.github.io/demo/signup/](https://qavbox.github.io/demo/signup/)

It uses **Robot Framework** with **SeleniumLibrary** to simulate user interactions, validate alerts, and capture screenshots during each step of the sign-up process.

---

## 📁 Project Structure

```

.
├── PageObjects/
│   └── SignUpPage.robot         # Contains reusable page-level keywords
├── TestCases/
│   └── TestSignUp.robot         # Test suite to execute the full sign-up scenario
├── Screenshots/
│   └── \*.png                    # Screenshots captured at each step
├── Reports/
│   └── \*                        # HTML and log reports generated after test execution
├── README.md                    # This file
└── requirements.txt             # Python dependencies

````

---

## ✅ Prerequisites

- Python 3.x
- Google Chrome (or update browser in the `.robot` file)
- ChromeDriver matching your Chrome version
- pip (Python package manager)

---

## 📦 Installation

1. **Clone the repo**
   ```bash
   git clone https://github.com/BASILAHAMED/Robot_Framework1.git
   cd robot-signup-automation
   ```

2. **Install dependencies**

   ```bash
   pip install -r requirements.txt
   ```

   ```
   robotframework
   robotframework-seleniumlibrary
   ```

---

## ▶️ Running the Test

```bash
robot -d Reports TestCases/TestSignUp.robot
```

* `-d Reports`: Specifies output directory for logs and reports

---

## 🧪 Test Flow

The test suite performs the following steps:

1. **Open Browser** and navigate to the sign-up page
2. **Fill in form fields**: Name, email, password, gender, country, experience, etc.
3. **Submit the form**
4. **Handle alert confirmation**
5. **Take screenshots** at key steps
6. **Close the browser**

---

## 📸 Screenshots

All screenshots are stored in the `Screenshots/` folder for debugging and evidence.

---

## 📄 Reports

After execution, open the generated HTML report:

```
Reports/report.html
Reports/log.html
```

---

## 📝 License
```
This project is licensed under the MIT License.

```
