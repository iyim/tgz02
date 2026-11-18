.class public Lcom/uc/sandboxExport/DexFileClassLoader;
.super Ldalvik/system/BaseDexClassLoader;
.source "U4Source"


# annotations
.annotation build Lcom/uc/sandboxExport/Api;
.end annotation


# instance fields
.field private a:Ldalvik/system/DexFile;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;Ldalvik/system/DexFile;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    if-nez p5, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p6

    :goto_0
    if-nez p5, :cond_1

    .line 22
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-direct {p0, p1, v0, p3, p4}, Ldalvik/system/BaseDexClassLoader;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    if-eqz p5, :cond_4

    if-nez p7, :cond_2

    .line 1037
    new-instance p7, Ldalvik/system/DexFile;

    invoke-direct {p7, p6}, Ldalvik/system/DexFile;-><init>(Ljava/lang/String;)V

    .line 1040
    :cond_2
    invoke-virtual {p5}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result p1

    invoke-static {p1}, Lcom/uc/sandboxExport/DexFileResolver;->loadDexByFd(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1043
    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    const-string p3, "mCookie"

    invoke-virtual {p2, p3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p2

    const/4 p3, 0x1

    .line 1044
    invoke-virtual {p2, p3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1045
    invoke-virtual {p2, p7, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 25
    iput-object p7, p0, Lcom/uc/sandboxExport/DexFileClassLoader;->a:Ldalvik/system/DexFile;

    goto :goto_2

    .line 1048
    :cond_3
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "cannot load DexFile!"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_2
    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/uc/sandboxExport/DexFileClassLoader;->a:Ldalvik/system/DexFile;

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {v0, p1, p0}, Ldalvik/system/DexFile;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 80
    :goto_0
    :try_start_0
    invoke-super {p0, p1}, Ldalvik/system/BaseDexClassLoader;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    if-nez v0, :cond_1

    .line 86
    invoke-virtual {p0, p1}, Lcom/uc/sandboxExport/DexFileClassLoader;->findLoadedClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    .line 90
    invoke-virtual {p0}, Lcom/uc/sandboxExport/DexFileClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v0
.end method


# virtual methods
.method protected findClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 66
    :try_start_0
    invoke-direct {p0, p1}, Lcom/uc/sandboxExport/DexFileClassLoader;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 69
    :catch_0
    invoke-direct {p0, p1}, Lcom/uc/sandboxExport/DexFileClassLoader;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

.method public findLibrary(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 54
    invoke-super {p0, p1}, Ldalvik/system/BaseDexClassLoader;->findLibrary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 55
    invoke-virtual {p0}, Lcom/uc/sandboxExport/DexFileClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v1

    instance-of v1, v1, Ldalvik/system/BaseDexClassLoader;

    if-eqz v1, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/uc/sandboxExport/DexFileClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    check-cast v0, Ldalvik/system/BaseDexClassLoader;

    invoke-virtual {v0, p1}, Ldalvik/system/BaseDexClassLoader;->findLibrary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method protected loadClass(Ljava/lang/String;Z)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const-string v0, "com.uc."

    .line 98
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "org.chromium."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 105
    :cond_0
    invoke-super {p0, p1, p2}, Ldalvik/system/BaseDexClassLoader;->loadClass(Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object p1

    goto :goto_1

    .line 99
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/uc/sandboxExport/DexFileClassLoader;->findLoadedClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    if-nez p2, :cond_2

    .line 102
    invoke-virtual {p0, p1}, Lcom/uc/sandboxExport/DexFileClassLoader;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    goto :goto_1

    :cond_2
    move-object p1, p2

    :goto_1
    return-object p1
.end method
