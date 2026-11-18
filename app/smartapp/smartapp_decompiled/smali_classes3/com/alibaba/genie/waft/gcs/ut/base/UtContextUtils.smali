.class public Lcom/alibaba/genie/waft/gcs/ut/base/UtContextUtils;
.super Ljava/lang/Object;
.source "UtContextUtils.java"


# static fields
.field private static sApplicationContext:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static get()Landroid/content/Context;
    .locals 1
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 25
    sget-object v0, Lcom/alibaba/genie/waft/gcs/ut/base/UtContextUtils;->sApplicationContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 26
    invoke-static {}, Lcom/alibaba/genie/waft/gcs/ut/base/UtContextUtils;->getApplication()Landroid/app/Application;

    move-result-object v0

    sput-object v0, Lcom/alibaba/genie/waft/gcs/ut/base/UtContextUtils;->sApplicationContext:Landroid/content/Context;

    .line 28
    :cond_0
    sget-object v0, Lcom/alibaba/genie/waft/gcs/ut/base/UtContextUtils;->sApplicationContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getApplication()Landroid/app/Application;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.app.ActivityThread"

    .line 33
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "currentApplication"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 34
    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Application;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    .line 42
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    .line 40
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v1

    .line 38
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v1

    .line 36
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 0

    .line 21
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/alibaba/genie/waft/gcs/ut/base/UtContextUtils;->sApplicationContext:Landroid/content/Context;

    return-void
.end method
