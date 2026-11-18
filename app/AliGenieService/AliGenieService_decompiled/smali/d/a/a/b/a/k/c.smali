.class public Ld/a/a/b/a/k/c;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Ld/a/a/b/a/k/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ld/a/a/b/a/k/c;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ld/a/a/b/a/k/b;
    .locals 4

    sget-object v0, Ld/a/a/b/a/k/c;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Ld/a/a/b/a/k/c;->b:Ljava/lang/String;

    :cond_0
    invoke-static {p0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object p0

    const/4 v1, 0x0

    .line 1
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld/a/a/b/a/k/b;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v2, v0

    check-cast v2, Ld/a/a/b/a/k/a;

    .line 2
    iget-object v3, v2, Ld/a/a/b/a/k/a;->b:Ljava/util/ResourceBundle;

    iput-object v3, v2, Ld/a/a/b/a/k/a;->c:Ljava/util/ResourceBundle;

    iput-object v1, v2, Ld/a/a/b/a/k/a;->e:Ljava/lang/String;

    iput-object p1, v2, Ld/a/a/b/a/k/a;->f:Ljava/lang/String;

    iget-object v1, v2, Ld/a/a/b/a/k/a;->f:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    iput-object v1, v2, Ld/a/a/b/a/k/a;->a:Ljava/util/logging/Logger;

    iput-object p0, v2, Ld/a/a/b/a/k/a;->b:Ljava/util/ResourceBundle;

    iput-object p0, v2, Ld/a/a/b/a/k/a;->c:Ljava/util/ResourceBundle;

    iget-object p0, v2, Ld/a/a/b/a/k/a;->b:Ljava/util/ResourceBundle;

    const-string v1, "0"

    invoke-virtual {p0, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v2, Ld/a/a/b/a/k/a;->d:Ljava/lang/String;

    move-object v1, v0

    :catch_0
    :cond_1
    if-eqz v1, :cond_2

    return-object v1

    .line 3
    :cond_2
    new-instance p0, Ljava/util/MissingResourceException;

    const-string v0, "d.a.a.b.a.k.c"

    const-string v1, "Error locating the logging class"

    invoke-direct {p0, v1, v0, p1}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw p0
.end method
