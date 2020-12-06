from flask import Flask, render_template, request,flash
from flask_sqlalchemy import SQLAlchemy


app = Flask(__name__, template_folder="/Users/baranozgenc/Desktop/proje/Bil372Proje/templates")
app.secret_key = b'_5#y2L"F4Q8z\n\xec]/'
app.config['SQLALCHEMY_DATABASE_URI'] = "postgresql://postgres:12345@localhost:5432/coffeeDB"
db = SQLAlchemy(app)


@app.route("/register", methods=['GET', 'POST'])
def register():
    if request.method == 'POST':
        tckn = request.form['tckn']
        password = request.form['password']
        password2 = request.form['password2']

        roleQuery = "SELECT * FROM public.\"Personel\" WHERE tckn =  '" + tckn + "' "
        temp = db.session.execute(roleQuery)
        rows = temp.fetchall()

        if len(rows) == 0:
            flash("No personel found to be register with the TCKN: " + tckn, 'error')
            return render_template("register.html")
        else:
            userType = rows[0].personel_tipi
            if password == password2:
                query = "INSERT INTO public.\"Login\"(tckn, passcode, personel_tipi) VALUES ('" + tckn + "' , '" + password + "', '" + userType + "')"
                result = db.engine.execute(query)
                if result:
                    flash("Successfully registered, you can log in.")
                    return render_template("login.html")

    return render_template("register.html",)

@app.route('/login', methods=['GET', 'POST'])
def login():
    if request.method == 'POST':
        tckn = request.form['tckn']
        password = request.form['password']
        passwordFlag = False

        query = "SELECT * FROM public.\"Login\" WHERE tckn =  '" + tckn + "' "
        temp = db.session.execute(query)
        rows = temp.fetchall()


        if len(rows) == 0:
            flash("No user found in the database with the TCKN " + tckn, 'error')
            return render_template("login.html")
        else:
            userrole = rows[0].personel_tipi
            if password == rows[0].passcode:
                passwordFlag = True
            if passwordFlag:
                if userrole == "koordinator":
                    return render_template("index.html")
                elif userrole == "nakliyeci":
                    return render_template("nakliyeciHome.html")
            else:
                flash("Password is incorrect, please try again!")
                return render_template("login.html")
                #else:
                    #return render_template("admin.html")
    else:
        return render_template("login.html")


@app.route("/")
def home():
    return render_template("homePage.html")


if __name__ == "__main__":
    app.debug = True
    app.run()