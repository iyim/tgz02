.class public Lorg/android/spdy/SecurityGuardCacherImp;
.super Ljava/lang/Object;
.source "SecurityGuardCacherImp.java"

# interfaces
.implements Lorg/android/spdy/QuicCacher;


# instance fields
.field private IDynamicDataStoreComponent:Ljava/lang/Class;

.field private SecurityGuardManager:Ljava/lang/Class;

.field private ddsComp:Ljava/lang/Object;

.field private getDynamicDataStoreComp:Ljava/lang/reflect/Method;

.field private getInstance:Ljava/lang/reflect/Method;

.field private getStringDDpEx:Ljava/lang/reflect/Method;

.field private init_ok:Z

.field private putStringDDpEx:Ljava/lang/reflect/Method;

.field private sgMgr:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 86
    iput-boolean v0, p0, Lorg/android/spdy/SecurityGuardCacherImp;->init_ok:Z

    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 6

    .line 17
    iget-boolean v0, p0, Lorg/android/spdy/SecurityGuardCacherImp;->init_ok:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v0, "com.taobao.wireless.security.sdk.SecurityGuardManager"

    .line 21
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/android/spdy/SecurityGuardCacherImp;->SecurityGuardManager:Ljava/lang/Class;

    .line 22
    iget-object v0, p0, Lorg/android/spdy/SecurityGuardCacherImp;->SecurityGuardManager:Ljava/lang/Class;

    const-string v2, "getInstance"

    new-array v3, v1, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lorg/android/spdy/SecurityGuardCacherImp;->getInstance:Ljava/lang/reflect/Method;

    .line 23
    iget-object v0, p0, Lorg/android/spdy/SecurityGuardCacherImp;->getInstance:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v3, v1, [Ljava/lang/Object;

    aput-object p1, v3, v5

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lorg/android/spdy/SecurityGuardCacherImp;->sgMgr:Ljava/lang/Object;

    .line 24
    iget-object p1, p0, Lorg/android/spdy/SecurityGuardCacherImp;->sgMgr:Ljava/lang/Object;

    if-nez p1, :cond_1

    return-void

    .line 28
    :cond_1
    iget-object p1, p0, Lorg/android/spdy/SecurityGuardCacherImp;->SecurityGuardManager:Ljava/lang/Class;

    const-string v0, "getDynamicDataStoreComp"

    new-array v2, v5, [Ljava/lang/Class;

    invoke-virtual {p1, v0, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lorg/android/spdy/SecurityGuardCacherImp;->getDynamicDataStoreComp:Ljava/lang/reflect/Method;

    .line 29
    iget-object p1, p0, Lorg/android/spdy/SecurityGuardCacherImp;->getDynamicDataStoreComp:Ljava/lang/reflect/Method;

    iget-object v0, p0, Lorg/android/spdy/SecurityGuardCacherImp;->sgMgr:Ljava/lang/Object;

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lorg/android/spdy/SecurityGuardCacherImp;->ddsComp:Ljava/lang/Object;

    .line 30
    iget-object p1, p0, Lorg/android/spdy/SecurityGuardCacherImp;->ddsComp:Ljava/lang/Object;

    if-nez p1, :cond_2

    return-void

    :cond_2
    const-string p1, "com.taobao.wireless.security.sdk.dynamicdatastore.IDynamicDataStoreComponent"

    .line 34
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lorg/android/spdy/SecurityGuardCacherImp;->IDynamicDataStoreComponent:Ljava/lang/Class;

    .line 35
    iget-object p1, p0, Lorg/android/spdy/SecurityGuardCacherImp;->IDynamicDataStoreComponent:Ljava/lang/Class;

    const-string/jumbo v0, "putStringDDpEx"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v5

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v1

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-virtual {p1, v0, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lorg/android/spdy/SecurityGuardCacherImp;->putStringDDpEx:Ljava/lang/reflect/Method;

    .line 36
    iget-object p1, p0, Lorg/android/spdy/SecurityGuardCacherImp;->IDynamicDataStoreComponent:Ljava/lang/Class;

    const-string v0, "getStringDDpEx"

    new-array v2, v4, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v5

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v1

    invoke-virtual {p1, v0, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lorg/android/spdy/SecurityGuardCacherImp;->getStringDDpEx:Ljava/lang/reflect/Method;

    .line 38
    iput-boolean v1, p0, Lorg/android/spdy/SecurityGuardCacherImp;->init_ok:Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 46
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 44
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 42
    invoke-virtual {p1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception p1

    .line 40
    invoke-virtual {p1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public load(Ljava/lang/String;)[B
    .locals 6

    .line 69
    iget-boolean v0, p0, Lorg/android/spdy/SecurityGuardCacherImp;->init_ok:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 71
    :try_start_0
    iget-object v0, p0, Lorg/android/spdy/SecurityGuardCacherImp;->getStringDDpEx:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lorg/android/spdy/SecurityGuardCacherImp;->ddsComp:Ljava/lang/Object;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_0

    const-string v0, "ISO-8859-1"

    .line 73
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 80
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 78
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 76
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :cond_0
    :goto_0
    return-object v2
.end method

.method public store(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .line 52
    iget-boolean v0, p0, Lorg/android/spdy/SecurityGuardCacherImp;->init_ok:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 54
    :try_start_0
    iget-object v0, p0, Lorg/android/spdy/SecurityGuardCacherImp;->putStringDDpEx:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lorg/android/spdy/SecurityGuardCacherImp;->ddsComp:Ljava/lang/Object;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    const/4 p1, 0x1

    aput-object p2, v3, p1

    const/4 p2, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, p2

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 59
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 57
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :cond_0
    :goto_0
    return v1
.end method
