const { Adw, Gtk, Gio } = imports.gi;

// Set GTK version (assuming you want to use GTK 4)
imports.gi.versions.Gtk = '4.0';
imports.gi.versions.Adw = '1';

const app = new Adw.Application({ application_id: 'com.example.Calendar' });

app.connect('activate', () => {
    const window = new Adw.ApplicationWindow({
        application: app,
        title: "Calendar",
        default_width: 300,
        default_height: 300,
        resizable: false,
    });

    const calendar = new Gtk.Calendar();
    window.set_content(calendar);
    window.present();
});

app.run([]);

